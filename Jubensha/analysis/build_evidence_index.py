import pathlib,json,hashlib
root=pathlib.Path(__file__).parent
rows=[];errors=[]
for p in sorted(root.rglob('*.json')):
 if p.name=='evidence-index.json' or any(s in p.name for s in ['index','graph-input','schema','selected','provenance','summary','catalog','settings','components','declarations','strings','focus','endpoints','boundaries']):continue
 if p.stat().st_size==0:continue
 if p.stat().st_size>100*1024*1024:continue
 try:
  x=json.loads(p.read_text());x=x.get('data',x) if isinstance(x,dict) else x
 except Exception as e:errors.append({'file':str(p.relative_to(root)),'parse_error':str(e)});continue
 if not isinstance(x,dict):continue
 if x.get('evidence_id'):
  rows.append({'file':str(p.relative_to(root)),'evidence_id':x['evidence_id'],'operation':x.get('operation'),'subject':x.get('subject'),'provider':x.get('provider'),'limitations':x.get('limitations'),'file_sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
  for i,sub in enumerate(x.get('normalized_result',{}).get('substeps',[])):
   ev=sub.get('evidence',{})
   if ev.get('evidence_id'):
    rows.append({'file':str(p.relative_to(root)),'record_selector':f'normalized_result.substeps[{i}].evidence','evidence_id':ev['evidence_id'],'operation':ev.get('operation'),'subject':ev.get('subject'),'provider':ev.get('provider'),'limitations':ev.get('limitations'),'file_sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
 elif x.get('code') or x.get('error'):
  e=x.get('error',x);errors.append({'file':str(p.relative_to(root)),'code':e.get('code') if isinstance(e,dict) else None,'message':e.get('message') if isinstance(e,dict) else str(e)})
obj={'scope':'REA records only; auxiliary format-parser files remain separate ordinary-shell evidence','records':rows,'errors':errors}
(root/'evidence-index.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2))
print('REA evidence records',len(rows),'errors retained',len(errors))
