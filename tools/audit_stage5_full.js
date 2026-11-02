#!/usr/bin/env node
'use strict';
/* Exhaustive *direct-address signature* scan across all original program
 * and question ROMs, plus branch-aware PPS8 I/O and task scheduler audit.
 *
 * The complete scan covers all bytes and all 23 original ROM members, not
 * merely source lines. It does not mistake a byte signature for executed code:
 * confirmed references are separately checked through the TERSE graph.
 * Computed addresses and runtime-modified RAM remain indirect by definition.
 */
const fs=require('node:fs'),path=require('node:path'),crypto=require('node:crypto');
const {readZipMember,decode,inventory}=require('./analyze_shared_threads.js');
const root=path.resolve(__dirname,'..'),zipPath=process.argv[2]||path.join(root,'roms/orig/profpac.zip');
const zip=fs.readFileSync(zipPath),h=n=>'$'+n.toString(16).toUpperCase().padStart(4,'0');
const hash=data=>crypto.createHash('sha1').update(data).digest('hex');
function check(test,msg){if(!test)throw Error(msg)}
const expectedZip='fc2c27f04a1a173ae79b5fb91c69ff85cc479c9c';
check(hash(zip)===expectedZip,'ZIP original SHA-1 mismatch');
const result=inventory(zip,true),pps8=result.banks.pps8,pps1=readZipMember(zip,'pps1');
const watch=[0xf6eb,0xf716,0xf718,0xf71a,0xf71c];
const direct=[];
for(const family of ['pps','ppq'])for(let number=1;number<=(family==='pps'?9:14);number++){
 const name=family+number,rom=readZipMember(zip,name);
 const base=family==='ppq'?0x4000:number===1?0x0000:number===2?0x2000:
    number===9?0xc000:0xa000;
 for(let i=0;i+3<rom.length;i++){
  if(rom[i]!==0x09||rom[i+1]!==0x01)continue;
  const address=rom[i+2]|rom[i+3]<<8;
  if(watch.includes(address))direct.push({rom:name,physical:base+i,address});
 }
}
const colon=[{rom:'pps8',image:pps8,base:0xa000,entry:0xba31,label:'feedback'},
 {rom:'pps8',image:pps8,base:0xa000,entry:0xbbe8,label:'application'}];
const confirmed=[],outputs=[];
for(const def of colon){
 const graph=decode(def.image,def.base,def.entry),byAddress=new Map(graph.cells.map(c=>[c.address,c]));
 const byEnd=new Map(graph.cells.map(c=>[c.end,c]));
 for(const cell of graph.cells){
  if(cell.token===0x0109&&watch.includes(cell.operand)){
   const next=byAddress.get(cell.end);
   confirmed.push({root:def.entry,at:cell.address,address:cell.operand,nextXT:next?.token??null});
  }
  if(cell.token===0x02d8){
   const before=byEnd.get(cell.address);
   const producer=before?byEnd.get(before.address):null;
   check(before?.token===0x0109&&before.operand===0x00bf,
     'Unexpected non-page OUTP in Stage 5 root at '+h(cell.address));
   check([0x0112,0x012a].includes(producer?.token),
     'Unknown source for screen-page OUTP at '+h(cell.address));
   outputs.push({root:def.entry,at:cell.address,port:0xbf,
     value:producer.token===0x012a?0:producer.operand});
  }
 }
}
check(confirmed.length===33,'Expected 33 true physical LIT references; got '+confirmed.length);
check(outputs.length===2&&outputs.some(o=>o.at===0xbbf2&&o.value===0x2a)&&
      outputs.some(o=>o.at===0xbcd3&&o.value===0),
      'Application screen-page writes have changed');
const feedbackCaller=decode(pps8,0xa000,0xbbb8);
const byAddress=new Map(feedbackCaller.cells.map(c=>[c.address,c]));
const output=byAddress.get(0xbbc2),port=byAddress.get(0xbbbe),value=byAddress.get(0xbbbb);
check(output?.token===0x02d8&&port?.operand===0xbf&&value?.operand===0x15,
 'Correct feedback screen page $15/$BF changed');
outputs.push({root:0xbbb8,at:0xbbc2,port:0xbf,value:0x15});
const scheduler=pps1.subarray(0x1599,0x15e7);
check(scheduler.length===78&&scheduler.subarray(0,2).toString('hex')==='fde3',
 'Task entry no longer EX (SP),IY');
check(scheduler.subarray(0x15d9-0x1599,0x15e7-0x1599).toString('hex')===
 'fde1dd4e00dd23dd4600dd23fde9','IX/IY scheduler resume changed');
console.log('# Stage 5 original-ROM direct RAM / I/O / scheduler audit');
console.log('Original archive SHA-1 '+hash(zip)+'; all available program and question member bytes scanned.');
console.log('Direct LIT-byte signatures in 23 ROMs: '+direct.length);
for(const r of direct)console.log('  candidate '+r.rom+' '+h(r.physical)+' -> '+h(r.address));
console.log('Branch-aware PPS8 true RAM literal cells: '+confirmed.length);
for(const address of watch){
 const refs=confirmed.filter(x=>x.address===address),write=refs.filter(x=>x.nextXT===0x0561 ||
  x.nextXT===0x053f || x.nextXT===0x0549);
 console.log('  '+h(address)+' confirmed='+refs.length+' writes/immediate mutations='+write.length);
}
console.log('Direct OUTP in two animation words and correct-feedback caller: '+outputs.length);
for(const o of outputs)console.log('  '+h(o.at)+' port '+h(o.port)+' <= '+h(o.value)+' (screen page)');
console.log('Sound: no direct OUTP to $10/$50 in the two true animation bodies or their $BBB8 caller.');
console.log('Scheduler: $1599 EX (SP),IY; $15D9 resumes via IX/IY (other path $157E scheduler).');
console.log('PASS Stage 5 original-ROM direct-address, display-page and task-entry signatures');
