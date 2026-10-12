import pathlib,struct,json,hashlib
root=pathlib.Path(__file__).resolve().parents[2]
ns={'__file__':str(root/'drawsomething/recover_protocol.py')}
exec((root/'drawsomething/recover_protocol.py').read_text().split('out=[]')[0],ns)
b=ns['b'];d=ns['d'];so=struct.unpack_from('<I',b,60)[0]
idx=next(i for i,s in enumerate(d['strings']) if s.startswith('\n\x08im.proto'))
o=struct.unpack_from('<I',b,so+4*idx)[0];_,start=ns['ns']['ns']['uleb'](b,o);end=b.index(b'\0',start)
raw=b[start:end].replace(b'\xc0\x80',b'\0').decode('utf-8').encode('latin1')
out=pathlib.Path(__file__).parent
(out/'im.descriptor.bin').write_bytes(raw)
refs=[]
for c in d['classes']:
 for m in c['methods']:
  if m['name']=='<clinit>':
   for r in ns['ns']['references'](b,m,d)['references']:
    if r.get('kind')=='const-string' and r.get('index')==idx:refs.append({'class':c['name'],'method':m['name'],'code_offset':m['code_offset'],**{k:v for k,v in r.items() if k!='value'}})
(out/'descriptor-provenance.json').write_text(json.dumps({'dex_member':'classes8.dex','dex_sha256':hashlib.sha256(b).hexdigest(),'descriptor_sha256':hashlib.sha256(raw).hexdigest(),'string_index':idx,'string_data_offset':o,'string_payload_offset':start,'string_payload_end':end,'descriptor_bytes':len(raw),'references':refs},indent=2))
print(len(raw),refs)
