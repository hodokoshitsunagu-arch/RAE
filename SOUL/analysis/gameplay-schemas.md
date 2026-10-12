# Additional gameplay schemas recovered from Soul international 2.78.0

Source: `base.apk`, same caller-supplied XAPK analyzed previously. Full SHA-256, DEX member hashes, class descriptors, field/method indices, method code offsets, annotations, decoded string/invoke reference offsets: `gameplay-schemas.json`. Reproduction: `python3 SOUL/analysis/extract_gameplay_schemas.py`. Target was never executed and no network endpoint was called.

## Main new finding: DrawSomething / 你画我猜 messaging protocol

**Observation:** `classes8.dex`, `Lcom/soul/game/protos/` contains generated protobuf message declarations, getters, field-number constants, and enum integer constants. These are substantive protocol schemas rather than resource labels.

- `GameMessage`: `id` string #1, `gameId` string #2, game type #3, phase #4, ping #5, invite #6, ready #7, play #8, gameover #9, extension map #10. `GameMessage$Type`: GENERAL=0 (implicit encoded static default), DRAW_SOMETHING=1. `Phase`: PING=0, INVITE=1, READY=2, PLAY=3, GAMEOVER=4.
- `InviteGameMessage`: inviter string #4, invitee string #5, extension map #6.
- `ReadyGameMessage`: readiness type #4, extension map #6; READY=0, NOT_READY=1.
- `PlayGameMessage`: DrawSomethingPlayGameMessage #5.
- `DrawSomethingPlayGameMessage`: round int #3, maxRound int #4, action type #5, question string #6, questionDesc string #7, answer string #8, answerDesc string #9, extension map #10. Action constants QUESTION_SET=0, ANSWER_SET=1, DRAW=2, GUESS=3, TIMER=4.
- `DrawSomethingGamePsh`: type #3, invite-done #4, ready-done #5, question-set-done #6, answer-set-done #7, round-start #8, round-done #9, gameover #10, answer-result #11, extension map #12. Push enum values INVITE_DONE=0, READY_DONE=1, QUESTION_SET_DONE=2, ANSWER_SET_DONE=3, ROUND_START=4, ROUND_DONE=5, GAMEOVER=6, ANSWER_RESULT=7.
- `RoundStartPsh`: round int #3, timestamp long #4, extension map #8. `QuestionSetDonePsh`, `AnswerSetDonePsh`, `ReadyDonePsh`, `RoundDonePsh`: nextRound int #3, timestamp long #4, extension map #8.
- `AnswerResult`: question string #3, questionDesc string #4, answer string #5, answerDesc string #6, right boolean #7, timestamp long #8, extension map #9. `AnswerResults`: answer-results list #1. `DrawSomethingGameoverGameMessage`: AnswerResults #1.
- Error constants include GAME_QUESTION_ERROR=101, GAME_ANSWER_ERROR=102, GAME_HAS_END=103 and login account/token/version errors 11/12/14.

**Observation:** `com.soul.im.protos.MsgCommand$Type` includes GAME=34, FINGER_GUESS=11, ROLL_DICE=12. `MsgCommand` includes a game-message field and associated getter. Standalone IM messages include `FingerGuessMessage.finger` int #1 and `RollDiceMessage.dicePoints` int #1.

**Derivation:** the packaged protocol supports an invitation/readiness/round-based drawing-and-guessing exchange with answers and result reporting. Getter types plus generated field constants recover Java-side semantic types and protobuf field numbers. They do not establish signed vs unsigned wire types, exact extension-map semantics, or all protobuf options.

**Unknown:** this does not establish a current user-facing 你画我猜 entry point, voice-room integration, backend availability, or retained UI implementation. Protobuf schema code can remain in a shared messaging library even when a feature is gated or absent. No explicit 剧本杀 character/scene/clue/vote schema was recovered in these selected declarations.

## Voice-room game: request and result contracts

**Observation:** `classes.dex`, `cn.soul.android.virtualparty.api.IVirtualPartyApi` Retrofit annotations preserve exact HTTP routes and argument names:

| Method | Route and declared fields/query/body | Declared response payload |
|---|---|---|
| sendGame | POST `virtual/party/room/send/game`, form `partyRoomId:long`, `type:int` | PartyGameResultInfo |
| createGambleDice | POST `gamble/dice/create`, form `gambleType:int`, `targetId:long`, `maxParticipant:int`, `maxCoin:int` | Void |
| betGambleDice | POST `gamble/dice/bet`, form `gambleDiceId:long`, `diceBet:int`, `coin:int` | Void |
| getGambleDiceProcess | GET `gamble/dice/process`, query `gambleType:int`, nullable `targetId:Long`, nullable `gambleDiceId:Long` | RoomGambleDiceProcessInfo |
| getGambleDiceResult | GET `gamble/dice/result`, query `gambleDiceId:long` | RoomGambleDiceResultInfo |
| requireSoulEmojiBroadcast | POST `/virtual/party/room/send/interactEmoji`, form `partyRoomId:long`, `interactEmojiId:long`, `orderNum:int` | Object |
| pushVideoProgress | POST `virtual/party/watch/progress/push`, body YoutubePushVideoInfo | Object |
| getVideoProgress | GET `virtual/party/watch/progress/pull`, query `partyRoomId:long` | YoutubeVideoInfo |
| getAvatarCollectionList | GET `vm/avatarCollection/query`, query `targetUserId:string` | CollectAvatarInfo |

`PartyGameResultInfo` has nullable `randomResult:Integer` and `type:PartyGameType`; the enum labels are DICE, FINGER, LUCKY_NUMBER, UNKNOWN. This is a compact room random-result game family, separate from the richer drawing-game messaging schema.

Dice objects in the same DEX:

- `GambleDiceInfo`: gambleDiceId, targetId, maxCoin, maxParticipant, diceResult, userId, avatarUrl, garlandUrl, signature.
- `GambleDiceRecordInfo`: userId, diceBet (BIG/SMALL), diceCoin, resultType (WIN/LOSE), avatarUrl, garlandUrl, signature.
- `RoomGambleDiceProcessInfo`: gambleDice, state (BETTING/NOT_STATED/UNKNOWN; spelling preserved), resultRemainMs, bigList, smallList, bigTotalCoin, smallTotalCoin, myRecord.
- `RoomGambleDiceResultInfo`: gambleDice, myRecord, winList, winTotalCoin, loseTotalCoin.

**Derivation:** participant/currency limits, big/small participant lists and totals, an individual bet record, a result countdown, and aggregate win/loss amounts are represented in client models. It is useful to reconstruct the client view state and server contract. Odds, BIG/SMALL numeric mappings, permitted amounts, actual random generation, payout rules, and backend settlement remain unknown.

## Flutter ↔ native bridge, recovered from method instructions

**Observation:** `classes6.dex`, `Lok/a;` extends SOF base `Lpk/f;`. Its constructor uses `channel_virtual_party`; method `b` includes string selectors `inviteUserToParty` and `sendTextToParty` and argument keys `roomId`, `userIdList`, `text`, plus response label `success`. Instruction traversal was complete for these methods. Every string and invoke has a DEX code-unit PC and absolute DEX file offset in the JSON evidence.

Generic SOF classes extend the same base:

| Class | Channel | Handler string selectors / keys |
|---|---|---|
| Lpk/a; | soul_channel_codec | urlEncode, urlDecode |
| Lpk/b; | soul_channel_dialog | toast, toCoinChargeDialog; text, type, success |
| Lpk/c; | soul_channel_event | sendEvent, addEventListener, removeEventListener; eventName, invokeMethodName, params, success |
| Lpk/d; | soul_channel_message | getUserInfo, getLanguage, getH5Host, getAppTheme, getSpecialFaceDot, resetSpecialFaceDot; dark/light |

**Limit:** recovered instruction references prove that these labels/calls occur in the handler; this extraction is not a register-flow or branch-condition reconstruction and does not fully prove argument validation, result format, error paths, or permissions. The room bridge itself does not expose a named 剧本杀 or generic game-start command in these recovered strings. Flutter can still issue networking or use the generic event channel independently.

`classes6.dex`, `com.soul.android.entity.flutter.FlutterPageId` static values:

- GAME_FRUIT → `page_game_fruit`
- VIRTUAL_PARTY_GAMBLE_DICE_BET_RECORD → `page_game_make_bet_record`
- VIRTUAL_PARTY_GAMBLE_DICE_RECORD → `page_game_bet_tab_record`
- VIRTUAL_PARTY_GAMBLE_DICE_RULE → `page_game_pk_rule`
- room invite/search/password/pocket detail/send pocket have their corresponding `page_virtual_party_*` names.

`BannerConfigInfo`: FRUIT_GAME_ID=`-30`, GAMBLE_DICE_ID=`-20`, LUCKY_POCKET_ID=`-10`, plus homeUrl/id/jumpScheme. `OpenConfigInfo` and async configuration declarations carry `showGambleDice`, `showSlotMachine`, `showRandomMusic`; **these are feature-flag fields, not observed enabled features or recovered slot-machine rules.**

## Other social entertainment schemas

- Watch Together: `YoutubePushVideoInfo` carries partyRoomId, videoId, channelTitle, title, playSeconds, playerSwitch, state and playerOperation. State labels UNSTARTED/PLAYING/PAUSED; operations PLAY_OR_PAUSE/SLIDER/SWITCH/UNSTART/UNKNOWN. `YoutubeVideoInfo` provides the pull-side state without the operation field. This enables a host-control/progress synchronization contract reconstruction; synchronization timing and authority checks remain unknown.
- 红包: `RedPacketInfo(id,userId)`; `RobResultInfo(redPacketId,soulCoinNum,state)` and state SUCCESS/ALREADY_ROBED/NO_MORE/OVER_TIME/ROBED_SELF/UNKNOWN. This recovers a result-state schema, not allocation probabilities or backend accounting.
- Avatar collection/gallery: CollectAvatarInfo(isOwner,maxSlotCount,slotMap), SlotInfo(cardBackgroundUrl,collectCardLevelUrl,commodityName,imgUrl,showLevel,showLevelUrl,showStyle), CollectionGalleryInfo(avatars,totalCount), CollectionAvatarInfo(avatarParams,avatarUrl,backgroundUrl,title), DisplayedAvatar(avatarId,avatarUrl,level). This is collection/display metadata, with no game-round logic established.

## Coverage and uncertainty

All nine DEX members were parsed. Selected schema inventory includes 120 classes (68 room-domain, 3 Flutter/config, 49 protobuf/IM); selected Retrofit inventory contains 56 method declarations, including unrelated avatar routes returned by the broad filter. The JSON preserves complete selected declarations, not a claim that every app gameplay schema has been recovered. Thirty-six bridge-related classes were selected, including interfaces/base/helpers; not all represent active handlers. Native Flutter AOT behavior is handled in the separate Flutter analysis.

Encoded DEX static values and omitted numeric zero defaults are separately labeled in JSON; a default value is a declaration fact, not a proof that arbitrary class initialization never writes the field. No decompilation, live execution, authentication, traffic capture, or server behavior was established by this schema extraction.
