import json,pathlib,zipfile,hashlib,struct
R=pathlib.Path(__file__).parent
P='ev_9852a76aaae2440b39b4ae7f452177ab0776dc387aa8611051bc6f61fc4f8113'
rows=json.loads((R/'resource-table.json').read_text())['records'];layouts=json.loads((R/'layouts.json').read_text());byname={}
for r in rows:byname.setdefault((r['type'],r['name']),[]).append(r)
def string(name):
 r=byname['string',name][0];return {'rea_parent_evidence_id':P,'member':'resources.arsc','member_offset':r['string_offset'],'resource_entry_offset':r['entry_offset'],'resource_id':r['id'],'resource_name':name,'value':r['value']}
def ui(name,member,ids):
 l=next(l for l in layouts if l['member']==member);nodes=[]
 for n in l['nodes']:
  ident=next((t['name'] for a in n['attributes'] if a['name']=='id' for t in a['value'].get('targets',[])),None)
  texts=[a for a in n['attributes'] if a['name'] in ['text','hint']]
  if ident in ids or texts:nodes.append({'id':ident,'element':n['element'],'member_offset':n['offset'],'attributes':n['attributes']})
 return {'rea_parent_evidence_id':P,'resource_name':name,'member':member,'sha256':l['sha256'],'controls':nodes}
items=[
 {'id':'game-shell','classification':'observed','finding':'原生对局宿主包含玩家条、时间线、聊天层、语音/消息/剧本/线索操作区，以及可隐藏的地图、技能、真相、结算、投票入口。','sources':[ui('activity_gaming','res/hS6.xml',['rv_players','tv_timeline','cl_voice_switcher','cl_send_message','cl_play_book','cl_clue','cl_skill','tv_finish_round','tv_start_vote','fl_map','rl_load_game_truth','rl_load_game_result','rl_load_vote_result'])],'demo_interpretation':{'classification':'designed','behavior':'组合为桌面游戏房间及可切换工作区；声音按钮仅切换本地状态，不连接RTC。'}},
 {'id':'phase-model','classification':'observed','finding':'正常剧本说明列出阅读、自我介绍、集体搜证、相互询问、结案投票五阶段；另有准备/分配角色/选本资源文案。','sources':[string(n) for n in ['playbook_five_stage','prepare_state','distribution_character_state','choose_playbook_state']],'demo_interpretation':{'classification':'designed','behavior':'本地六段工作流（准备加五阶段）；允许演示操作直接推进，真实守卫/计时/主持授权未知。'}},
 {'id':'roles','classification':'observed','finding':'角色卡含头像、姓名、性别与描述；具有锁定角色/交换角色文案。','sources':[ui('item_play_book_role','res/mRX.xml',['sdv_role','tv_role_name','tv_role_gender','tv_description']),string('lock_character'),ui('item_game_player_wait','res/db1.xml',['iv_role_avatar','iv_room_owner','tv_role_name','tv_prepared','llSelect','tv_can_not_select'])],'demo_interpretation':{'classification':'designed','behavior':'准备页选择原创角色并锁定，已被占用和全员准备由本地演示状态生成。'}},
 {'id':'reading','classification':'observed','finding':'V6读本页包含 ViewPager2、章节/角色导航、全文搜索、底栏和阅读背景。章节选择器有 RecyclerView。','sources':[ui('fragment_base_playbook_v6','res/pg8.xml',['dvp_content','tv_action_title','llCharacterGuideBar','clSearch','tvDefaultSearch','pb_bottom_bar']),ui('fragment_playbook_chapter_selecter','res/lbI.xml',['rvChapters'])],'demo_interpretation':{'classification':'designed','behavior':'当前角色可读原创章节，阅读确认与章节阶段锁是演示规则，非恢复的后端授权。'}},
 {'id':'clues','classification':'observed','finding':'线索页有搜索、建议词、tab、ViewPager；卡片含私有标签、收藏、笔记；详情有图片、文字、视频槽与想法区。','sources':[ui('fragment_clue_v6','res/79H.xml',['etSearch','ctbTab','vpClues','rvSearchTips']),ui('item_game_clue_v6','res/TNK.xml',['gtv_title','tv_clue_tag','ivCollect','tvNote','tv_clue_content']),ui('fragment_clue_detail_v6','res/DI-.xml',['ivClueDetail','tvClueDetail','tvThought','flBtnContainer']),string('search_clue')],'demo_interpretation':{'classification':'designed','behavior':'搜证消耗本地点数并获得私有线索；公开/收藏/检索/添加笔记。点数及公开守卫均未知，不作为原版规则。'}},
 {'id':'notes-visibility','classification':'observed','finding':'列表具有是否公开开关、创建笔记、双击编辑；提示公开笔记时私有线索也会公开。','sources':[ui('fragment_game_note_list','res/GCc.xml',['rvNoteList','ssvOpen','tvCreateNote']),ui('fragment_playbook_add_note','res/x85.xml',['ivSave','llRefrence','etIdea']),string('please_input_idea2')],'demo_interpretation':{'classification':'designed','behavior':'演示公开带线索的笔记前显式确认，确认后同时公开关联线索；原版确认弹窗与接口未知。'}},
 {'id':'multi-question-vote','classification':'observed','finding':'投票页有倒计时、多题分页、上一题/下一题，以及完成提示：倒计时完成或全员投票后公布结果。','sources':[ui('fragment_vote','res/ZDm.xml',['tv_count_down','vp_questions','btn_previous','btn_next','fl_finish','tv_type_title'])],'demo_interpretation':{'classification':'designed','behavior':'两道原创问题、多选状态、本地提交锁及模拟其他玩家投票揭晓；真实问题模型、计票、平票和取消规则未知。'}},
]
assets=[];z=zipfile.ZipFile(R.parents[2]/'apks/baibian-6.45.2.apk');(R/'assets').mkdir(exist_ok=True)
for name in ['ic_gaming_playbook','ic_gaming_clue','ic_gaming_send_message','ic_gaming_audio_open','ic_gaming_setting','ic_clue_list_public','ic_game_truth','img_default_playbook_bg']:
 candidates=[r for r in byname.get(('drawable',name),[]) if r.get('value','').endswith(('.png','.webp','.jpg'))]
 if not candidates:continue
 r=max(candidates,key=lambda r:z.getinfo(r['value']).file_size);data=z.read(r['value']);out=R/'assets'/(name+pathlib.Path(r['value']).suffix);out.write_bytes(data)
 a={'resource_name':name,'resource_id':r['id'],'resource_entry_offset':r['entry_offset'],'member':r['value'],'member_offset':0,'rea_parent_evidence_id':P,'sha256':hashlib.sha256(data).hexdigest(),'bytes':len(data),'local_path':str(out.resolve()),'config_hex':r['config_hex'],'selection':'largest packaged raster variant; not runtime density selection'}
 if data.startswith(b'\x89PNG'):a['dimensions']=list(struct.unpack_from('>II',data,16))
 assets.append(a)
colors=[{'name':r['name'],'id':r['id'],'argb':f"#{r['raw_value']:08x}",'member':'resources.arsc','member_offset':r['value_offset'],'rea_parent_evidence_id':P} for r in rows if r['type']=='color' and r['name'] in ['ct1','ct2','ct4','ct5','ct01','ct05','cb1']]
obj={'schema_version':1,'target':{'apk_sha256':'8522e582689c462c2746ffad8dcf7190e98b52d6d93c79468a239005fe8d9fe3','package':'com.mszmapp.detective','version':'6.45.2'},'provenance':{'method':'ordinary shell ARSC + binary AXML format-aware parsing, linked to existing REA inventory; these derivatives are not new REA Evidence','parent_evidence_id':P},'coverage':{'resource_entries_including_configs':len(rows),'decoded_candidate_layout_members':len(layouts),'runtime_observed':False,'business_dex_recovered':False},'contracts':items,'colors':colors,'assets':assets,'unknowns':['实际阶段跳转守卫、计时和主持权限','线索搜索点数、获取与公开授权','角色交换/锁定并发规则','投票模型与计票协议','原始业务调用链、事件协议、状态重连与后端权限','资源配置实际选中路径与动态页面可达性']}
(R/'contracts.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2));(R/'asset-provenance.json').write_text(json.dumps(assets,ensure_ascii=False,indent=2))
print('Contracts',len(items),'assets',len(assets));print('\n'.join(a['local_path'] for a in assets))
