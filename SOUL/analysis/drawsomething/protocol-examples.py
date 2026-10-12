"""Generate offline, synthetic DrawSomething wire examples; never contacts SOUL."""
from pathlib import Path
import subprocess,json,hashlib
root=Path(__file__).resolve().parent
examples={
 'invite':('GameMessage','''id: "example-message-1"
gameId: "example-game"
type: DRAW_SOMETHING
phase: INVITE
inviteGameMessage { inviter: "example-player-a" invitee: "example-player-b" }
'''),
 'ready':('GameMessage','''gameId: "example-game"
type: DRAW_SOMETHING
phase: READY
readyGameMessage { type: READY }
'''),
 'guess':('GameMessage','''gameId: "example-game"
type: DRAW_SOMETHING
phase: PLAY
playGameMessage { drawSomethingPlayGameMessage { round: 1 maxRound: 3 type: GUESS answer: "猫" } }
'''),
 'round-start':('GamePsh','''drawSomethingGamePsh { type: ROUND_START roundStartPsh { round: 1 ts: 1791784800000 } }
'''),
 'gameover':('GameMessage','''gameId: "example-game"
type: DRAW_SOMETHING
phase: GAMEOVER
gameoverGameMessage { drawSomethingGameoverGameMessage { answerResults { answerResults { question: "猫" answer: "猫" right: true ts: 1791784800000 } } } }
''')}
out=root/'examples';out.mkdir(exist_ok=True);records=[]
for name,(kind,text) in examples.items():
 cmd=['/opt/homebrew/bin/protoc','--proto_path='+str(root),str(root/'draw-something.proto')]
 binary=subprocess.run(cmd+['--encode='+kind],input=text.encode(),stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=True).stdout
 decoded=subprocess.run(cmd+['--decode='+kind],input=binary,stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=True).stdout
 roundtrip=subprocess.run(cmd+['--encode='+kind],input=decoded,stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=True).stdout
 assert binary==roundtrip
 (out/(name+'.textproto')).write_text(text);(out/(name+'.bin')).write_bytes(binary);(out/(name+'.decoded.textproto')).write_bytes(decoded)
 records.append({'name':name,'message_type':kind,'bytes':len(binary),'hex':binary.hex(),'sha256':hashlib.sha256(binary).hexdigest(),'roundtrip':'passed'})
(out/'validation.json').write_text(json.dumps({'source':'Synthetic examples created for offline schema validation; not captured SOUL traffic. Round count/timestamp/players are illustrative; no server acceptance established.','examples':records},ensure_ascii=False,indent=2))
print('Five synthetic payloads encoded, decoded, and byte-roundtripped.')
