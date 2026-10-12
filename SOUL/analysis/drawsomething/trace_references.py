from pathlib import Path
import zipfile,json,struct,re,hashlib
r=Path(__file__).resolve().parents[1];out=Path(__file__).parent
base=r/'base.apk';D=json.loads((r/'dex-index.json').read_text())
s=(r/'extract_gameplay_schemas.py').read_text();scope={};exec(s[s.index('def width('):s.index('\nwith zipfile.ZipFile(root')],scope);width=scope['width']
pat=re.compile(r'DrawSomething|draw.?something|DRAW_SOMETHING|你画我猜|Lcom/soul/game/protos/|Lcn/soulapp/imlib/msg/chat/GameMsg|Lz6/e;|Lcom/soul/im/protos/(Game|PushMessage)',re.I)
records=[];coverage=[]
with zipfile.ZipFile(base) as z:
 for d in D:
  b=z.read(d['member']);u=lambda o:struct.unpack_from('<I',b,o)[0];types=[d['strings'][u(u(68)+4*i)] for i in range(u(64))]
  fields=[]
  for i in range(u(80)):
   c,t,n=struct.unpack_from('<HHI',b,u(84)+8*i);fields.append({'class':types[c],'type':types[t],'name':d['strings'][n]})
  complete=0;failed=[]
  for c in d['classes']:
   for m in c['methods']:
    off=m['code_offset']
    if not off:continue
    count=u(off+12);units=struct.unpack_from('<'+'H'*count,b,off+16);pc=0;hits=[]
    while pc<count:
     op=units[pc]&255;w=width(op)
     if op==0 and units[pc]>>8:
      k=units[pc]>>8
      w=(4+2*units[pc+1] if k==1 else 2+4*units[pc+1] if k==2 else 4+(units[pc+1]*(units[pc+2]+(units[pc+3]<<16))+1)//2 if k==3 else None)
     if op in [0xfa,0xfb]:w=4
     if op in [0xfc,0xfd]:w=3
     if op in [0xfe,0xff]:w=2
     if w is None or pc+w>count:failed.append({'class':c['name'],'method':m['name'],'pc':pc,'opcode':op});break
     ref=None
     if op in [0x1a,0x1b]:
      idx=units[pc+1]+((units[pc+2]<<16) if op==0x1b else 0);ref={'kind':'string','value':d['strings'][idx]}
     elif 0x6e<=op<=0x72 or 0x74<=op<=0x78 or op in [0xfa,0xfb]:ref={'kind':'method',**d['methods'][units[pc+1]]}
     elif 0x52<=op<=0x6d:ref={'kind':'field',**fields[units[pc+1]]}
     elif op in [0x1c,0x1f,0x20,0x22,0x23,0x24,0x25]:ref={'kind':'type','value':types[units[pc+1]]}
     if ref and pat.search(str(ref)):hits.append(dict(ref,pc=pc,file_offset=off+16+2*pc,opcode=hex(op)))
     pc+=w
    else:complete+=1
    if hits:records.append({'dex':d['member'],'owner':c['name'],'method':m['name'],'method_index':m['index'],'code_offset':off,'complete':pc==count,'references':hits})
  coverage.append({'dex':d['member'],'sha256':hashlib.sha256(b).hexdigest(),'complete_code_methods':complete,'incomplete_methods':failed})
(out/'references.json').write_text(json.dumps({'base_sha256':hashlib.sha256(base.read_bytes()).hexdigest(),'coverage':coverage,'records':records},ensure_ascii=False,indent=2))
external=[x for x in records if not x['owner'].startswith('Lcom/soul/game/protos/')]
(out/'external-references.json').write_text(json.dumps(external,ensure_ascii=False,indent=2))
print('coverage',[(x['dex'],x['complete_code_methods'],len(x['incomplete_methods'])) for x in coverage])
print('all reference owners',len(records),'non-game-proto',len(external))
for x in external:
 print(x['dex'],x['owner'],x['method'],[(h['kind'],h.get('class',h.get('value')),h.get('name')) for h in x['references']][:12])
