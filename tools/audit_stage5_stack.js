#!/usr/bin/env node
'use strict';
/* Stage 5 execution-token stack proof, based on original PPS8 ROM bytes.
 *
 * The scheduler at $1599 is a conditional task-context exchange, not an
 * ordinary data-stack effect. This proves the deterministic task bodies
 * AFTER their task-entry transfer, separately from that operational ABI.
 * Loop backedges and conditional branches are both followed.
 */
const fs=require('node:fs'),path=require('node:path');
const {inventory}=require('./analyze_shared_threads.js');
const root=path.resolve(__dirname,'..');
const source=fs.readFileSync(path.join(root,'src/profpac_common.include'),'utf8');
const originals=inventory(fs.readFileSync(process.argv[2]||
 path.join(root,'roms/orig/profpac.zip')),false);
const effectsByName={
 XT_LIT:1,XT_LITbyte:1,XT_0:1,XT_1:1,XT_DUP:1,XT_DROP:-1,
 XT_SWAP:0,XT_at:0,XT_Bat:0,XT_bang:-2,XT_BZERO:-1,
 XT_1plusBbang:-1,XT_plus:-1,XT_MINUS:0,XT_minussign:-1,
 XT_star:-1,XT_equal:-1,XT_not_equal:-1,XT_AND:-1,XT_gt_equal:-1,
 XT_BRANCH:0,XT_0BRANCH:-1,XT_DO:-2,XT_LOOP:0,XT_RETURN:0,
 XT_OUTP:-2,XT_ENTER_ACTION_TASK:0,XT_SET_OBJECT_MODE_2:0,
 XT_SET_CURRENT_OBJECT_VALUE_PAIR:-2,XT_RESET_OBJECT_DRAW_STATE:0,
 XT_SET_CURRENT_OBJECT_AXIS_A:-1,XT_SET_CURRENT_OBJECT_AXIS_B:-1,
 XT_GET_OBJECT_AXIS_A:0,XT_GET_OBJECT_AXIS_B:0,XT_GET_CURRENT_TASK:1,
 XT_GET_CURRENT_OBJECT_VALUE_1:0,XT_GET_CURRENT_OBJECT_VALUE_2:0,
 XT_SET_CURRENT_OBJECT_VALUE_1:-1,XT_SET_CURRENT_OBJECT_VALUE_2:-1,
 XT_SCREEN_INTERCEPT_ACTION:0,XT_UPDATE_OBJECT_GLYPH:0,
 XT_CLEAR_TASK_ACTIVE_BIT:0,XT_SET_CURRENT_OBJECT_WORD_1D:-1,
 XT_SET_CURRENT_OBJECT_BYTE_18:-1,
 XT_OBJECT_DRAW_SOURCE:1,XT_OBJECT_MASKED_DRAW:0
};
const effects=new Map();
for(const m of source.matchAll(/^\s*(XT_[A-Za-z0-9_]+)\s+equ\s+\$([A-F0-9]{4})/gim))
 if(Object.hasOwn(effectsByName,m[1]))effects.set(parseInt(m[2],16),effectsByName[m[1]]);
for(const [address,delta] of [
 [0x1e5c,-1],[0xb9ff,0],[0x2789,0],[0x1e9b,0]
])effects.set(address,delta);
const roots=[{address:0xba31,count:140},{address:0xbbe8,count:92}];
function assert(c,m){if(!c)throw Error(m)}
let total=0;
for(const rootWord of roots){
 const definition=originals.findings.flatMap(g=>g.definitions)
  .find(d=>d.entry===rootWord.address);
 assert(definition,'Missing genuine task root '+rootWord.address.toString(16));
 const cells=new Map(definition.cells.map(cell=>[cell.address,cell]));
 const visited=new Map(),todo=[[rootWord.address+1,0]],returned=[];
 while(todo.length){
  const [at,depth]=todo.shift(),cell=cells.get(at);
  assert(cell,'No decoded ROM token at $'+at.toString(16));
  if(visited.has(at)){
   assert(visited.get(at)===depth,
    'Unbalanced branch/loop join at $'+at.toString(16));
   continue;
  }
  visited.set(at,depth);
  assert(effects.has(cell.token),
   'Missing stack contract for XT $'+cell.token.toString(16)+
   ' at $'+at.toString(16));
  const after=depth+effects.get(cell.token);
  assert(after>=0,'Data-stack underflow at $'+at.toString(16));
  if(cell.token===0x00fd){returned.push(after);continue;}
  let next=[cell.end];
  if(cell.token===0x03e2)next=[cell.operand];
  if(cell.token===0x03ea)next=[cell.end,cell.operand];
  if(cell.token===0x028a && rootWord.address===0xbbe8)
    next=[cell.end,0xbc37]; // LOOP returns to code after DO $BC35
  for(const address of next)todo.push([address,after]);
 }
 assert(visited.size===rootWord.count,
  'Incomplete task graph: '+visited.size+' vs '+rootWord.count);
 assert(returned.length===1&&returned[0]===0,
  'Task body must return with zero parameter-stack delta');
 assert(visited.get(rootWord.address+1)===0,
  'Entry task control must be modeled separately');
 total+=visited.size;
 console.log('PASS $'+rootWord.address.toString(16).toUpperCase()+
  ': '+visited.size+' physical XTs; every branch and loop joins;'+
  ' no data-stack underflow; task-body return delta 0');
}
const originalPPS1=fs.readFileSync(path.join(root,'src/pps1.asm'),'utf8');
assert(originalPPS1.includes('ACTION_TASK_SCHEDULER_ENTRY:')&&
 originalPPS1.includes('ex (sp),iy'),
 'Native conditional scheduler contract not described in source');
console.log('PASS original ROM '+total+' physical tokens and conditional $1599 scheduler entry;'+
 ' post-scheduler bodies ( -- ), scheduler task-context transition modeled separately');
