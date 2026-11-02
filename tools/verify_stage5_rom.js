#!/usr/bin/env node
'use strict';
// Original-ROM acceptance for Stage 5, independent from zmac and its listings.
// Tests original ROM archive, byte-for-byte source encoding, and true colon
// boundaries. Full 23-ROM assembled output is still checked by build.sh.
const fs = require('node:fs');
const path = require('node:path');
const zlib = require('node:zlib');
const crypto = require('node:crypto');
const root = path.resolve(__dirname, '..');
const assert = (condition, message) => { if (!condition) throw Error(message); };
const sha1 = data => crypto.createHash('sha1').update(data).digest('hex');
const hex = n => '$' + n.toString(16).toUpperCase().padStart(4,'0');
const originalArchive = path.join(root, 'roms/orig/profpac.zip');
const zip = fs.readFileSync(originalArchive);
const script = fs.readFileSync(path.join(root,'build.sh'),'utf8');
const archiveHash = script.match(/^EXPECTED_ZIP_SHA1=([a-f0-9]{40})$/m)?.[1];
assert(archiveHash && sha1(zip) === archiveHash, 'original archive SHA-1 differs');
function extract(name) {
  const eocd = zip.lastIndexOf(Buffer.from([0x50,0x4b,0x05,0x06]));
  assert(eocd>=0,'ZIP central directory absent');
  const end = zip.readUInt32LE(eocd+16)+zip.readUInt32LE(eocd+12);
  for(let cursor=zip.readUInt32LE(eocd+16);cursor<end;) {
    assert(zip.readUInt32LE(cursor)===0x02014b50,'ZIP central record corrupt');
    const len=zip.readUInt16LE(cursor+28),extra=zip.readUInt16LE(cursor+30),
      comment=zip.readUInt16LE(cursor+32);
    const member=zip.toString('utf8',cursor+46,cursor+46+len);
    if(member===name) {
      const offset=zip.readUInt32LE(cursor+42),
        compressed=zip.readUInt32LE(cursor+20),
        expected=zip.readUInt32LE(cursor+24),
        begin=offset+30+zip.readUInt16LE(offset+26)+zip.readUInt16LE(offset+28);
      assert(zip.readUInt32LE(offset)===0x04034b50,'ZIP local record corrupt');
      const method=zip.readUInt16LE(cursor+10);
      const content=method===8?zlib.inflateRawSync(zip.subarray(begin,begin+compressed)):
        method===0?zip.subarray(begin,begin+compressed):null;
      assert(content&&content.length===expected,'ZIP content invalid: '+name);
      return content;
    }
    cursor+=46+len+extra+comment;
  }
  throw Error('Missing original ROM '+name);
}
const expected=[...script.matchAll(/^build_rom\s+(pps\d+|ppq\d+)\s+\S+\s+\S+\s+([a-f0-9]{40})$/gm)];
assert(expected.length===23,'Expected 23 original program/question ROM hashes');
for(const [,name,hash] of expected)assert(sha1(extract(name))===hash,'Original ROM hash: '+name);
const pps8=extract('pps8'),pps2=extract('pps2'),pps1=extract('pps1');
assert(pps8.length===8192&&pps2.length===8192,'Program ROM not 8 KB');
const include=fs.readFileSync(path.join(root,'src/profpac_common.include'),'utf8');
const equates=new Map();
for(const match of include.matchAll(/^\s*([A-Za-z_]\w*)\s+equ\s+\$([0-9a-f]{1,4})/gim))
  equates.set(match[1],parseInt(match[2],16));
function resolvedWord(raw) {
  const expr=raw.trim(),literal=expr.match(/^\$([0-9a-f]+)$/i),
    addressLabel=expr.match(/_([0-9a-f]{4})$/i);
  if(literal)return parseInt(literal[1],16);
  if(equates.has(expr))return equates.get(expr);
  if(addressLabel)return parseInt(addressLabel[1],16);
  throw Error('Unsupported address expression in decoded source: '+expr);
}
function compareSource(source,rom,base,segments) {
  const output=new Map();
  for(const line of fs.readFileSync(path.join(root,source),'utf8').split(/\r?\n/)) {
    const m=line.match(/^\s*(db|dw|rst)\s+([^;]+);\s*\$([0-9a-f]{4})/i);
    if(!m)continue;
    let address=parseInt(m[3],16);
    if(!segments.some(([start,end])=>address>=start&&address<end))continue;
    const op=m[1].toLowerCase();
    for(const part of m[2].split(',')) {
      const value=op==='rst'?0xcf:resolvedWord(part);
      if(op==='rst')assert(resolvedWord(part)===8,'Non-$08 RST at '+hex(address));
      output.set(address++,value&255);
      if(op==='dw')output.set(address++,value>>8&255);
    }
  }
  let checked=0;
  for(const [start,end] of segments)for(let addr=start;addr<end;addr++) {
    assert(output.has(addr),'Source not decoded at '+hex(addr)+' in '+source);
    assert(output.get(addr)===rom[addr-base],
      'Source ROM mismatch at '+hex(addr)+' in '+source);
    checked++;
  }
  return checked;
}
const pps8Bytes=compareSource('src/pps8.asm',pps8,0xa000,
  [[0xba31,0xbba7],[0xbbe8,0xbcdb]]);
const pps2Bytes=compareSource('src/pps2.asm',pps2,0x2000,[[0x2d2b,0x2d3b]]);
assert(pps8Bytes===617&&pps2Bytes===16,'Unexpected checked byte count');
const word=at=>pps8.readUInt16LE(at-0xa000);
for(const address of [0xbacd,0xbad9,0xbaed,0xbb27,0xbb68,0xbc83,0xbc8f])
  assert(word(address)===0x01cf,'False colon/XT_equal changed: '+hex(address));
assert(word(0xbbce)===0xba31&&word(0xbee2)===0xbbe8,'Stage 5 caller changed');
assert(pps8[0xba31-0xa000]===0xcf&&pps8[0xbbe8-0xa000]===0xcf,
  'Two true colon roots changed');
assert(pps2[0x2d2b-0x2000]===0xcf,'PPS2 screen action is not a colon entry');
assert(pps1.subarray(0x1599,0x159b).toString('hex')==='fde3',
 'Task scheduler must exchange IY with parameter-stack top');
assert(pps1.subarray(0x15d9,0x15e7).toString('hex')===
 'fde1dd4e00dd23dd4600dd23fde9',
 'Task scheduler must restore IY and advance IX control stack');
assert(pps1.subarray(0x1b2c,0x1b32).toString('hex')==='cdc31ae5fde9',
 'Draw setup producer native bytes mismatch');
assert(pps2.subarray(0x25bb-0x2000,0x25c1-0x2000).toString('hex')===
 'fde5fd2a8ffe','Masked-draw helper entry has changed');

// Verify the native OUTP stack order: value, then port, then OUTP.
for(const [cell,value] of [[0xbbc2,0x15],[0xbbf2,0x2a],[0xbcd3,0x00]]) {
  assert(word(cell)===0x02d8,'OUTP execution token changed: '+hex(cell));
  assert(word(cell-2)===0x00bf,'OUTP must use screen-page port $BF');
  if(value===0)assert(word(cell-6)===0x012a,'Expected literal zero before OUTP');
  else assert(pps8.subarray(cell-0xa000-7,cell-0xa000-4).includes(value),
    'Expected screen page constant '+hex(value));
}
console.log('PASS Stage 5: original ZIP SHA-1, all 23 ROM SHA-1s, '+
  pps8Bytes+' PPS8 bytes, '+pps2Bytes+' PPS2 bytes, 2 colon roots, '+
  '7 XT_equal cells, 2 caller edges, 3 screen-page outputs, task scheduler and native graphics bytes');
