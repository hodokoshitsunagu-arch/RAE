import UnityPy,zipfile,pathlib,json,hashlib,re
root=pathlib.Path('/Users/mark/Projects/REA/Werewolf/analysis/core-interactions');root.mkdir(exist_ok=True)
z=zipfile.ZipFile('/Users/mark/Projects/REA/Werewolf/netease-lrs-2.18.21.apk')
names=['assets/texture/1/room/astc6a_atlas.ab','assets/texture/1/playerhead/astc6a_atlas.ab','assets/texture/1/room/identity/identity_icon/astc6a_atlas.ab']
names += ['assets/texture/1/room/identity/'+r+'/astc6a_atlas.ab' for r in ['prophet','witch','villager','werewolves','hunter','guard']]
names += ['assets/ui/room_new/prefab/roomui.ab','assets/ui/room_new/prefab/roomcountdown.ab','assets/ui/room_new/prefab/dialogbox.ab','assets/ui/room_new/prefab/role_skill/skill_witch.ab','assets/ui/room_new/prefab/role_skill/skill_prophet.ab','assets/ui/room_new/prefab/role_skill/skill_werewolf.ab']
rows=[]
for n in names:
 if n not in z.namelist():rows.append({'source':n,'missing':True});continue
 b=z.read(n); off=b.find(b'UnityFS\0');env=UnityPy.load(b[off:]); group=n.replace('assets/','').replace('/astc6a_atlas.ab','').replace('/','__').replace('.ab','');out=root/'assets'/group;out.mkdir(exist_ok=True)
 row={'source':n,'source_sha256':hashlib.sha256(b).hexdigest(),'source_size':len(b),'unityfs_offset':off,'objects':[]}
 for o in env.objects:
  try:
   d=o.read(); name=getattr(d,'m_Name','');item={'type':o.type.name,'path_id':o.path_id,'name':name}
   if o.type.name=='Sprite':
    file=out/(re.sub('[^a-zA-Z0-9_.-]','_',name)+'.png');img=d.image;img.save(file);item.update({'export':str(file),'width':img.width,'height':img.height,'png_sha256':hashlib.sha256(file.read_bytes()).hexdigest()})
   elif o.type.name in ['GameObject','MonoBehaviour','TextAsset','Transform','RectTransform','AnimationClip']:
    try:
     tree=o.read_typetree();file=out/(str(o.path_id)+'.json');file.write_text(json.dumps(tree,ensure_ascii=False,indent=2,default=str));item['tree']=str(file)
    except Exception as e:item['tree_error']=str(e)
   row['objects'].append(item)
  except Exception as e:row['objects'].append({'type':o.type.name,'path_id':o.path_id,'error':str(e)})
 rows.append(row);print(n,len(env.objects),'sprites',sum('export' in x for x in row['objects']))
(root/'asset-provenance.json').write_text(json.dumps({'parser':'UnityPy 1.25.4','source_apk_sha256':'5870d8ef15292cb7aedd91cd76fdc7c1b20f466cab5ec650692327e31a933373','bundles':rows},ensure_ascii=False,indent=2))
