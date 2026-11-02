#!/usr/bin/env node
'use strict';

/**
 * Professor Pac-Man: shared/multi-entry TERSE graph inventory.
 *
 * Decode original PPS8/PPS9 ROM bytes, not the annotated source text. This
 * recognizes branch operands, inline literals, strings and CASES tables.
 * Explicitly detect common code regions while preserving every ROM byte.
 *
 * Usage:
 *   node tools/analyze_shared_threads.js
 *   node tools/analyze_shared_threads.js --check-sources
 *   node tools/analyze_shared_threads.js --markdown
 *
 * Node.js built-ins only. No ROMs or sources are modified.
 */
const fs = require('node:fs');
const path = require('node:path');
const zlib = require('node:zlib');
const crypto = require('node:crypto');

const ROOT = path.resolve(__dirname, '..');
const EXPECTED = Object.freeze({
  pps8: '786b30cd7a7db55bdde05909d7a1a7f122b6e546',
  pps9: '8b7ed84090dbc5181deef6f55ec755c05d4c0d5e',
});
const ENTRY_GROUPS = Object.freeze([
  { rom: 'pps8', name: 'Attract title and prompt',
    entries: [0xaff1] },
  { rom: 'pps8', name: 'Attract demonstration: shared entries',
    entries: [0xb41c, 0xb465, 0xb499, 0xb4c5] },
  { rom: 'pps8', name: 'Challenge prompt actions',
    entries: [0xb613, 0xb642, 0xb67f] },
  { rom: 'pps8', name: 'Credit/start prompt',
    entries: [0xb846] },
  { rom: 'pps8', name: 'Shared application-state threads',
    entries: [0xba31, 0xbacd, 0xbad9, 0xbaed, 0xbb27, 0xbb68] },
  { rom: 'pps8', name: 'Shared application continuation',
    entries: [0xbbe8, 0xbc83, 0xbc8f] },
  { rom: 'pps9', name: 'Coin/credit precursor',
    entries: [0xd426], entryOnly: true },
]);
const OPTIONS = new Set(['--check-sources', '--markdown', '--help']);
const hx = n => '$' + n.toString(16).toUpperCase().padStart(4, '0');

function die(message) { throw new Error(message); }

function readZipMember(archive, target) {
  // Central directory records are authoritative for compressed sizes.
  const eocd = archive.lastIndexOf(Buffer.from('PK\x05\x06', 'binary'));
  if (eocd < 0 || eocd + 22 > archive.length) die('Missing ZIP central directory');
  const central = archive.readUInt32LE(eocd + 16);
  const centralEnd = central + archive.readUInt32LE(eocd + 12);
  for (let p = central; p + 46 <= centralEnd; ) {
    if (archive.readUInt32LE(p) !== 0x02014b50)
      die('Invalid ZIP central record at byte ' + p);
    const method = archive.readUInt16LE(p + 10);
    const compressed = archive.readUInt32LE(p + 20);
    const nameLength = archive.readUInt16LE(p + 28);
    const extraLength = archive.readUInt16LE(p + 30);
    const commentLength = archive.readUInt16LE(p + 32);
    const offset = archive.readUInt32LE(p + 42);
    const name = archive.toString('utf8', p + 46, p + 46 + nameLength);
    if (name === target) {
      if (archive.readUInt32LE(offset) !== 0x04034b50) die('Bad ZIP local header');
      const start = offset + 30 + archive.readUInt16LE(offset + 26) +
                    archive.readUInt16LE(offset + 28);
      const compressedData = archive.subarray(start, start + compressed);
      if (method === 0) return compressedData;
      if (method === 8) return zlib.inflateRawSync(compressedData);
      die('Unsupported ZIP compression method ' + method);
    }
    p += 46 + nameLength + extraLength + commentLength;
  }
  die('Missing ' + target + ' from ROM ZIP');
}

function decode(image, base, entry) {
  const byte = address => {
    const offset = address - base;
    if (offset < 0 || offset >= image.length)
      die('Entry ' + hx(entry) + ' reads outside ROM at ' + hx(address));
    return image[offset];
  };
  const word = address => byte(address) | byte(address + 1) << 8;
  if (byte(entry) !== 0xcf) die('Missing RST $08 at ' + hx(entry));
  const pending = [entry + 1], cells = new Map();
  while (pending.length) {
    const address = pending.pop();
    if (cells.has(address)) continue;
    if (cells.size > 3000) die('Unbounded TERSE graph at ' + hx(entry));
    const token = word(address);
    let end = address + 2, operand = null, successors = null;
    if ([0x0109, 0x011a, 0x0125].includes(token)) {
      operand = word(end); end += 2;
    } else if (token === 0x0112) {
      operand = byte(end++);
    } else if ([0x03e2, 0x03ea, 0x0410].includes(token)) {
      operand = word(end); end += 2;
      successors = token === 0x03e2 ? [operand] : [end, operand];
    } else if (token === 0x0405) {
      const length = byte(end);
      end += length + 1;
      byte(end - 1);
    } else if (token === 0x0436) {
      operand = word(end); end += 2;
      if (operand < end || operand > end + 0x400 || (operand - end) % 2)
        die('Invalid CASES table at ' + hx(address));
      end = operand;
    }
    cells.set(address, { address, end, token, operand });
    if (token === 0x00fd) successors = [];
    for (const next of successors === null ? [end] : successors)
      pending.push(next);
  }
  const ordered = [...cells.values()].sort((a, b) => a.address - b.address);
  const end = Math.max(...ordered.map(cell => cell.end));
  const covered = new Set([entry]);
  for (const cell of ordered)
    for (let i = cell.address; i < cell.end; i++) covered.add(i);
  if (covered.size !== end - entry)
    die('Unclassified gap in ' + hx(entry) + ' ending ' + hx(end));
  return { entry, end, cellCount: ordered.length, cells: ordered };
}

function inventory(archive, checkSources) {
  const banks = {};
  for (const [name, hash] of Object.entries(EXPECTED)) {
    const image = readZipMember(archive, name);
    if (image.length !== 8192) die(name + ' is not 8 KB');
    const actual = crypto.createHash('sha1').update(image).digest('hex');
    if (actual !== hash)
      die(name + ' SHA-1 mismatch: expected ' + hash + ', actual ' + actual);
    banks[name] = image;
  }
  const findings = [];
  for (const group of ENTRY_GROUPS) {
    const definitions = group.entries.map(entry =>
      group.entryOnly
        ? { entry, end: entry + 1, cellCount: 0, cells: [], entryOnly: true }
        : decode(banks[group.rom], group.rom === 'pps8' ? 0xa000 : 0xc000, entry));
    findings.push({ rom: group.rom, name: group.name, definitions });
  }
  // Count shared physical bytes, not just intersecting nominal end ranges.
  const all = findings.flatMap(group => group.definitions.map(def => ({
    ...def, rom: group.rom,
  })));
  for (const def of all) {
    const region = new Set([def.entry]);
    for (const cell of def.cells)
      for (let address = cell.address; address < cell.end; address++)
        region.add(address);
    def.overlaps = [];
    for (const other of all) {
      if (def === other || def.rom !== other.rom) continue;
      const otherBytes = new Set([other.entry]);
      for (const cell of other.cells)
        for (let a = cell.address; a < cell.end; a++) otherBytes.add(a);
      let overlap = 0;
      for (const address of region) if (otherBytes.has(address)) overlap++;
      if (overlap) def.overlaps.push({ entry: other.entry, bytes: overlap });
    }
  }
  if (checkSources) {
    for (const rom of Object.keys(banks)) {
      const source = fs.readFileSync(path.join(ROOT, 'src', rom + '.asm'), 'utf8');
      for (const def of all.filter(item => item.rom === rom)) {
        const addr = hx(def.entry).slice(1);
        const pattern = new RegExp('^\\s*rst\\s+\\$08\\b[^\\n]*; \\$' + addr + '\\b', 'mi');
        if (!pattern.test(source))
          die('Source lacks named RST $08 entry: ' + rom + ':' + hx(def.entry));
      }
    }
  }
  return { findings, entries: all.length,
    decoded: all.filter(def => !def.entryOnly).length,
    sharedEntries: all.filter(def => def.overlaps.length).length };
}

function report(result, markdown) {
  if (markdown) {
    console.log('# Shared TERSE entrypoints — original ROM analysis\n');
    console.log('| ROM | Group | Entry | End | Decoded cells | Shared physical bytes with |');
    console.log('| --- | --- | --- | --- | ---: | --- |');
    for (const group of result.findings) {
      for (const d of group.definitions) {
        const overlaps = d.overlaps.map(x => hx(x.entry) + ' (' + x.bytes + ')').join(', ') || '—';
        console.log('| ' + group.rom + ' | ' + group.name + ' | ' +
          hx(d.entry) + ' | ' + (d.entryOnly ? 'entry only' : hx(d.end)) + ' | ' +
          (d.entryOnly ? '—' : d.cellCount) +
          ' | ' + overlaps + ' |');
      }
    }
  } else {
    console.log('Shared TERSE graph: ' + result.entries + ' entrypoints (' +
      result.decoded + ' decoded, ' + (result.entries - result.decoded) +
      ' entry-only), ' + result.sharedEntries +
      ' overlapping entries; original ROM hashes verified');
    for (const g of result.findings)
      console.log('  ' + g.rom + ' ' + g.name + ': ' + g.definitions.length + ' entries');
  }
}

function main(args) {
  for (const a of args) if (a.startsWith('-') && !OPTIONS.has(a)) die('Unknown option ' + a);
  if (args.includes('--help')) {
    console.log('Usage: node tools/analyze_shared_threads.js [roms/orig/profpac.zip] [--check-sources] [--markdown]');
    return;
  }
  const archiveName = args.find(a => !a.startsWith('-')) || 'roms/orig/profpac.zip';
  const result = inventory(fs.readFileSync(path.resolve(ROOT, archiveName)),
    args.includes('--check-sources'));
  report(result, args.includes('--markdown'));
}
try { main(process.argv.slice(2)); }
catch (error) { console.error('FAIL: ' + error.message); process.exitCode = 1; }
