import pathlib,json,hashlib,zipfile
root=pathlib.Path(__file__).parent
p=root/'source-provenance.json';obj=json.loads(p.read_text())
for a in obj['artifacts']:
 f=pathlib.Path(a['path'])
 if not zipfile.is_zipfile(f):print(f.name,'incomplete');continue
 raw=f.read_bytes();a.update({'size':len(raw),'sha256':hashlib.sha256(raw).hexdigest(),'md5':hashlib.md5(raw).hexdigest()})
 with zipfile.ZipFile(f) as z:
  a['zip_crc_failure']=z.testzip();a['zip_members']=len(z.infolist());a['dex_members']=[x for x in z.namelist() if x.endswith('.dex')]
 if 'expected_md5' in a:a['source_md5_matches']=a['md5'].upper()==a['expected_md5']
 if 'expected_size' in a:a['source_size_matches']=a['size']==a['expected_size']
 print(f.name,a['size'],a['sha256'],a.get('source_md5_matches'),a['zip_crc_failure'])
p.write_text(json.dumps(obj,ensure_ascii=False,indent=2))
