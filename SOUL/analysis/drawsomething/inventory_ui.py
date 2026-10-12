"""Bounded static inventory; no target execution, network or reconstruction claims."""
import json,re,pathlib,zipfile,io,hashlib
root=pathlib.Path(__file__).resolve().parent
analysis=root.parent
p=next(analysis.parent.glob('*.xapk'))
pat=re.compile(r'draw.?something|draw.?guess|guess.?draw|你画我猜|drawinggame|game.?draw',re.I)
D=json.loads((analysis/'dex-index.json').read_text())
out={'carrier':str(p),'xapk_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'matching_pattern':pat.pattern,'dex':[]}
for d in D:
 hits=[{'index':i,'value':s} for i,s in enumerate(d['strings']) if pat.search(s)]
 # Exclude embedded protobuf descriptor contents from enormous preview, retaining full length and hash.
 for h in hits:
  if len(h['value'])>500:h['length']=len(h['value']);h['utf8_sha256']=hashlib.sha256(h['value'].encode()).hexdigest();h['value_preview']=h.pop('value')[:100]
 classes=[c for c in d['classes'] if pat.search(c['name']) or 'GameMsg' in c['name'] or '/photoedit/scrawl/' in c['name']]
 out['dex'].append({'member':d['member'],'sha256':d['sha256'],'class_count':len(d['classes']),'string_count':len(d['strings']),'matching_strings':hits,'selected_classes':classes})
R=json.loads((analysis/'resources-evidence.json').read_text())
out['resource_pools']=[]
for apk,v in R['apks'].items():
 for k in ['resource_strings','libapp_ascii_strings']:
  if k in v:out['resource_pools'].append({'apk':apk,'source':k,'count':len(v[k]),'matching_entries':[s for s in v[k] if pat.search(s['value'])]})
out['apk_members']=[];out['native_libraries']=[]
with zipfile.ZipFile(p) as z:
 for ap in z.namelist():
  if not ap.endswith('.apk'):continue
  with zipfile.ZipFile(io.BytesIO(z.read(ap))) as a:
   names=a.namelist();out['apk_members'].append({'apk':ap,'count':len(names),'matching_names':[n for n in names if pat.search(n)]})
   for n in names:
    if not n.endswith('.so'):continue
    b=a.read(n);h=[]
    for m in re.finditer(rb'[\x20-\x7e]{4,}',b):
     s=m.group().decode('ascii')
     if pat.search(s):h.append({'offset':m.start(),'value':s})
    out['native_libraries'].append({'apk':ap,'member':n,'size':len(b),'sha256':hashlib.sha256(b).hexdigest(),'matching_ascii_strings':h})
(root/'ui-inventory.json').write_text(json.dumps(out,ensure_ascii=False,indent=2))
print('DEX',len(D),'resource pools',[(x['source'],x['count'],len(x['matching_entries'])) for x in out['resource_pools']]);print('Native libraries',len(out['native_libraries']),'hits',sum(len(x['matching_ascii_strings']) for x in out['native_libraries']))
