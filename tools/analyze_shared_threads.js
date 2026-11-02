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
const OPTIONS = new Set(['--check-sources', '--markdown', '--state', '--state-detail', '--state-check', '--state-audit', '--token-map', '--help']);
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
  // A multi-entry word can branch around bytes belonging to another entry.
  // Track skipped physical bytes rather than incorrectly treating them as a
  // decode failure. Every *visited* token and inline operand is range-checked.
  const reachedStart = Math.min(entry, ...ordered.map(cell => cell.address));
  const skippedBytes = end - reachedStart - covered.size;
  if (skippedBytes < 0) die('Invalid physical byte coverage at ' + hx(entry));
  return { entry, reachedStart, end, cellCount: ordered.length, skippedBytes, cells: ordered };
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
  return { findings, banks, entries: all.length,
    decoded: all.filter(def => !def.entryOnly).length,
    sharedEntries: all.filter(def => def.overlaps.length).length };
}


const STATE_GROUPS = new Set([
  0xba31, 0xbacd, 0xbad9, 0xbaed, 0xbb27, 0xbb68,
  0xbbe8, 0xbc83, 0xbc8f,
]);
const MEMORY_ACCESS = Object.freeze({
  0x014c: 'word-read', 0x0153: 'byte-read',
  0x0532: 'byte-write', 0x055c: 'byte-write',
  0x0561: 'word-write', 0x053a: 'byte-one',
  0x053f: 'byte-zero', 0x0544: 'byte-dec',
  0x0549: 'byte-inc', 0x054e: 'byte-add',
  0x0555: 'byte-sub', 0x0575: 'word-dec',
  0x057d: 'word-add', 0x0588: 'word-inc',
  0x0590: 'word-sub', 0x059e: 'word-write',
  0x0569: 'word-zero', 0x056f: 'word-one',
});

function stateInventory(result) {
  const all = result.findings.flatMap(g => g.definitions.map(d => ({
    rom: g.rom, ...d,
  })));
  const groups = all.filter(d => STATE_GROUPS.has(d.entry));
  const refs = new Map();
  const incoming = new Map();
  for (const def of all) {
    for (const cell of def.cells) {
      if (!STATE_GROUPS.has(cell.token)) continue;
      const callers = incoming.get(cell.token) || new Set();
      callers.add(def.entry); incoming.set(cell.token, callers);
    }
  }
  for (const def of groups) {
    const literals = new Map();
    for (const cell of def.cells) {
      // Only explicit LIT is a 16-bit inline constant. All other operands
      // (BARRAY, ARRAY, branches, OF etc.) have separate meanings.
      if (cell.token !== 0x0109 || cell.operand < 0xf000) continue;
      const key = cell.operand;
      const locations = literals.get(key) || [];
      const next = def.cells.find(c => c.address === cell.end);
      locations.push({
        at: cell.address,
        operation: next && MEMORY_ACCESS[next.token] || 'address-literal',
        nextToken: next && next.token || null,
      });
      literals.set(key, locations);
    }
    refs.set(def.entry, literals);
  }
  return { groups, refs, incoming };
}

function stateReport(result) {
  const inventory = stateInventory(result);
  console.log('# Shared game-state TERSE memory references');
  console.log('');
  console.log('Source: original PPS8 ROM. An address literal alone is not proof of a RAM read or write.');
  console.log('');
  console.log('| Entry | Reachable cells | Backward/forward coverage | RAM literals (operation at next sequential cell) | Other decoded-entry callers |');
  console.log('| --- | ---: | --- | --- | --- |');
  for (const def of inventory.groups) {
    const memory = [...inventory.refs.get(def.entry)].sort((a,b) => a[0]-b[0])
      .map(([addr, uses]) => hx(addr) + ': ' +
        [...new Set(uses.map(x=>x.operation))].join('/')).join('; ') || '—';
    const callers = [...(inventory.incoming.get(def.entry) || [])]
      .sort((a,b) => a-b).map(hx).join(', ') || '—';
    console.log('| ' + hx(def.entry) + ' | ' + def.cellCount +
      ' | ' + hx(def.reachedStart) + '–' + hx(def.end-1) +
      ' | ' + memory + ' | ' + callers + ' |');
  }
}


/**
 * Stage 5: address-literal audit with physical instruction locations.
 * Only report a memory access when the immediate sequential cell after LIT
 * is a known fetch/store primitive. Each entry is decoded separately:
 * overlapping entries are intentionally NOT summed into independent bytes.
 */
function stateDetail(result, strict) {
  const inv = stateInventory(result);
  const watched = new Set([0xf6eb, 0xf716, 0xf718, 0xf71a, 0xf71c]);
  const rows = [];
  for (const def of inv.groups) {
    for (const [address, uses] of inv.refs.get(def.entry)) {
      if (!watched.has(address)) continue;
      for (const use of uses) {
        rows.push({ entry: def.entry, at: use.at, ram: address,
          operation: use.operation, nextToken: use.nextToken });
      }
    }
  }
  rows.sort((a,b) => a.entry-b.entry || a.at-b.at || a.ram-b.ram);
  if (strict) {
    const image = result.banks.pps8;
    const word = at => image.readUInt16LE(at - 0xa000);
    if (word(0xbbce) !== 0xba31)
      die('Stage 5: CORRECT_FEEDBACK_TASK call at $BBCE changed');
    if (word(0xbee2) !== 0xbbe8)
      die('Stage 5: MAIN_APPLICATION call at $BEE2 changed');
    const quartet = [0xf716, 0xf718, 0xf71a, 0xf71c];
    for (const address of quartet)
      if (!rows.some(row => row.ram === address &&
          row.operation !== 'address-literal'))
        die('Stage 5: missing directly observed RAM operation for ' + hx(address));
    const expected = [0xba31, 0xbacd, 0xbad9, 0xbaed, 0xbb27,
      0xbb68, 0xbbe8, 0xbc83, 0xbc8f];
    for (const entry of expected)
      if (!inv.groups.some(def => def.entry === entry))
        die('Stage 5: missing shared-state entry ' + hx(entry));
    console.log('Stage 5 state check: 9 entrypoints, 4 word addresses, 2 fixed callers verified against original ROM');
  }
  console.log('| Entry | Physical LIT cell | RAM address | Immediate operation | Next token |');
  console.log('| --- | --- | --- | --- | --- |');
  for (const row of rows)
    console.log('| ' + hx(row.entry) + ' | ' + hx(row.at) + ' | ' +
      hx(row.ram) + ' | ' + row.operation + ' | ' +
      (row.nextToken === null ? '—' : hx(row.nextToken)) + ' |');
  console.log('');
  console.log('Observations are per-entry reachability, NOT unique physical writes. ' +
    'A literal without a direct operation is labelled address-literal.');
}

/**
 * Stage 5 physical-byte audit: report each reachable instruction once, even
 * when several entry points execute the exact same ROM cells. The ownership
 * column identifies all such entry points; it is not a dynamic call count.
 */
function stateTokenMap(result) {
  const inv = stateInventory(result);
  const physical = new Map();
  const labels = new Map();
  const include = fs.readFileSync(path.join(ROOT, 'src', 'profpac_common.include'), 'utf8');
  for (const line of include.split(/\r?\n/)) {
    const match = line.match(/^\s*(XT_[A-Za-z0-9_]+)\s+equ\s+\$([0-9A-F]{4})/i);
    if (match) labels.set(parseInt(match[2],16),match[1]);
  }
  for (const def of inv.groups) for (const cell of def.cells) {
    if (!physical.has(cell.address)) physical.set(cell.address,{cell,owners:[]});
    const record=physical.get(cell.address);
    if (record.cell.token!==cell.token || record.cell.end!==cell.end)
      die('Differing physical XT decode at '+hx(cell.address));
    record.owners.push(def.entry);
  }
  console.log('# Stage 5 — physical TERSE token map');
  console.log('Original PPS8 ROM; 9 physical entry graphs; unique cell addresses only.');
  console.log('| Physical cell | Execution token | Inline operand | Reachable entrypoints |');
  console.log('| --- | --- | --- | --- |');
  for (const {cell,owners} of [...physical.values()].sort((a,b)=>a.cell.address-b.cell.address)) {
    const token=labels.get(cell.token)||hx(cell.token);
    console.log('| '+hx(cell.address)+' | '+token+' | '+
      (cell.operand===null?'—':hx(cell.operand))+' | '+owners.map(hx).join(', ')+' |');
  }
  console.log('Unique physical XT addresses: '+physical.size);
}

function stateAudit(result) {
  const inv = stateInventory(result);
  const physical = new Map();
  const watched = new Set([0xf6eb, 0xf716, 0xf718, 0xf71a, 0xf71c]);
  const opNames = { 0x014c:'@', 0x0153:'B@', 0x0561:'!', 0x053f:'BZERO',
    0x0532:'SB!', 0x055c:'B!', 0x059e:'S!', 0x0569:'ZERO',
    0x056f:'ONE', 0x0588:'1+!', 0x0575:'1-!', 0x057d:'+!',
    0x0590:'-!', 0x053a:'BONE', 0x0544:'1-B!', 0x0549:'1+B!',
    0x054e:'+B!', 0x0555:'-B!' };
  for (const def of inv.groups) for (const cell of def.cells) {
    const id = cell.address;
    if (!physical.has(id))
      physical.set(id, { cell, owners: new Set() });
    const record = physical.get(id);
    if (record.cell.token !== cell.token || record.cell.end !== cell.end)
      die('Conflicting physical-cell decode at ' + hx(id));
    record.owners.add(def.entry);
  }
  const owned = [...physical.values()].sort((a,b)=>a.cell.address-b.cell.address);
  const byAddress = new Map(owned.map(x=>[x.cell.address,x.cell]));
  const references = owned.filter(({cell})=>cell.token===0x0109 && watched.has(cell.operand))
    .map(({cell,owners})=>{
      const next = byAddress.get(cell.end);
      const op = next ? (opNames[next.token] || ('XT ' + hx(next.token))) : 'no sequential cell';
      const classification = next && MEMORY_ACCESS[next.token]
        ? MEMORY_ACCESS[next.token] : 'literal (not direct memory access)';
      return { at:cell.address, ram:cell.operand, op, classification, owners:[...owners] };
    });
  console.log('# Stage 5 physical RAM-reference audit');
  console.log('Original PPS8 SHA-1 verified by inventory(); deduplicated physical LIT cells.');
  console.log('| LIT address | RAM | Following XT | Direct access | Reachable entries |');
  console.log('| --- | --- | --- | --- | --- |');
  for (const r of references)
    console.log('| '+hx(r.at)+' | '+hx(r.ram)+' | '+r.op+' | '+r.classification+
      ' | '+r.owners.map(hx).join(', ')+' |');
  // A consecutive producer, LIT address, store is evidence of an exact
  // initialization value. Never extrapolate across branch/call boundaries.
  const byEnd = new Map(owned.map(x=>[x.cell.end,x.cell]));
  const initializers = [];
  for (const r of references) {
    const lit = byAddress.get(r.at);
    const store = byAddress.get(lit.end);
    if (!store || ![0x0561, 0x053f].includes(store.token)) continue;
    if (store.token === 0x053f) {
      initializers.push({at:lit.address, ram:r.ram, value:0, width:8,
        producer:'BZERO', owners:r.owners});
      continue;
    }
    const producer = byEnd.get(lit.address);
    if (!producer) continue;
    let value = null;
    if (producer.token === 0x0109) value = producer.operand;
    if (producer.token === 0x012a) value = 0;
    if (producer.token === 0x0130) value = 1;
    if (value === null) continue;
    initializers.push({at:lit.address, ram:r.ram, value, width:16,
      producer:hx(producer.address), owners:r.owners});
  }
  console.log('');
  console.log('## Proven constant assignments (sequential producer, address, store)');
  console.log('| Store address token | RAM | Value | Width | Producer cell |');
  console.log('| --- | --- | --- | ---: | --- |');
  for (const init of initializers)
    console.log('| '+hx(init.at)+' | '+hx(init.ram)+' | '+hx(init.value)+
      ' | '+init.width+' | '+init.producer+' |');
  console.log('Physical constant assignments: '+initializers.length);
  const counts = Object.fromEntries([...watched].map(a=>[hx(a),references.filter(x=>x.ram===a).length]));
  console.log('Unique physical LIT references: '+references.length+'; counts: '+JSON.stringify(counts));
  console.log('ROM bytes are not rewritten. Stack effects are not inferred from address literals.');
}

function report(result, markdown) {
  if (markdown) {
    console.log('# Shared TERSE entrypoints — original ROM analysis\n');
    console.log('| ROM | Group | Entry | Reachable from | End | Decoded cells | Skipped bytes | Shared physical bytes with |');
    console.log('| --- | --- | --- | --- | --- | ---: | ---: | --- |');
    for (const group of result.findings) {
      for (const d of group.definitions) {
        const overlaps = d.overlaps.map(x => hx(x.entry) + ' (' + x.bytes + ')').join(', ') || '—';
        console.log('| ' + group.rom + ' | ' + group.name + ' | ' +
          hx(d.entry) + ' | ' + (d.entryOnly ? 'entry only' : hx(d.reachedStart)) +
          ' | ' + (d.entryOnly ? 'entry only' : hx(d.end)) + ' | ' +
          (d.entryOnly ? '—' : d.cellCount) + ' | ' +
          (d.entryOnly ? '—' : d.skippedBytes) +
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
    console.log('Usage: node tools/analyze_shared_threads.js [roms/orig/profpac.zip] [--check-sources] [--markdown|--state|--state-detail|--state-audit|--token-map] [--state-check]');
    return;
  }
  const archiveName = args.find(a => !a.startsWith('-')) || 'roms/orig/profpac.zip';
  const result = inventory(fs.readFileSync(path.resolve(ROOT, archiveName)),
    args.includes('--check-sources'));
  if (args.includes('--token-map')) stateTokenMap(result);
  else if (args.includes('--state-audit')) stateAudit(result);
  else if (args.includes('--state-check') || args.includes('--state-detail'))
    stateDetail(result, args.includes('--state-check'));
  else if (args.includes('--state')) stateReport(result);
  else report(result, args.includes('--markdown'));
}
try { main(process.argv.slice(2)); }
catch (error) { console.error('FAIL: ' + error.message); process.exitCode = 1; }
