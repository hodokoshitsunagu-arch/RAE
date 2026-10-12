# SOUL Flutter AOT and additional gameplay schemas

Follow-up to `ANALYSIS.md`, 2026-10-12. Same international Soul 2.78.0 XAPK. The requested Flutter analysis was performed on extracted working copies, without launching SOUL. New API/model findings below are linked to actual function addresses and pool-load instructions rather than merely nearby strings.

## Main findings

1. **Fruit Land has a recoverable client implementation:** API methods, JSON constructors, notifier/page functions, timers, result presentation, ranking, and bet records. Its underlying API namespace is `slot/machine`.
2. **The native/Flutter room bridge is narrow:** text-to-room and user invites. Generic event/HTTP channels carry additional behavior; the room bridge is not itself a generic game engine.
3. **你画我猜 / DrawSomething is a substantial additional protocol:** generated protobuf declarations support invite, ready, round/question/answer, drawing/guessing/timer, result and gameover messages. Current UI availability and voice-room integration are not established.
4. **Dice/PK adds record and ranking schemas**, alongside the native dice-round APIs from the earlier pass. The recovered Flutter `pkGame` package is mostly rules and record presentation; its name is not proof of a separate team PK battle engine.
5. **No explicit 剧本杀/狼人杀 schema was located**, including the now-decoded Dart string table and app library names. Remote/gated content and other editions remain outside this conclusion.

## Tooling, provenance, and confidence

- `flutter/libapp.so`: SHA-256 `8788e54e22d92f7e92d4a7c843480c3040ca8fb0b1d4bbdd71312d05498c810e`.
- Matching split's `libflutter.so`: SHA-256 `2e7f73f3252ad2da25ba37a3309d2a9e4cd860271b68d7f239ce02b53133cfaf`.
- Engine string at file offset `0x1feb05`: Dart **3.6.0 stable**, android_arm64.
- Both snapshot headers identify version hash `f956f595844a2f845a55707faaaa51e4`, ARM64 Android product with compressed pointers. Exported ELF symbols identify VM and isolate data/instruction regions; the isolate instruction region begins at VA `0x276b40`.
- Analyzer: [dae](https://github.com/ejfkdev/dae), v0.1.13 macOS-arm64 standalone release. Downloaded into the analysis folder; no system toolchain installation. Executable SHA-256 matched the GitHub release digest: `1cdbe78aadf143f23027469aac8be6993c67839f0595956e7a7fb57c66dd44c3`. Release metadata retained in `flutter/dae-release.json`.
- The analyzer selects profile **dart/3.6.1 by matching snapshot hash**, but explicitly reports that profile as **unverified**. This does not override the engine's 3.6.0 string or prove exact compiler version. Its export is indicative, not validated against original source. The object dump contains implausible superclass labels; they are excluded from conclusions.
- Scoped export: 109 first-party libraries, 229 classes owning selected functions, 1,134 function records, **1,041 disassembled/pseudocode bodies**. The remaining 93 records are not claimed as recovered bodies. Global object-layer indexes are wider than the scoped function export; their counts must not be conflated.
- `flutter/extract_schema.py` independently reads ELF source bytes and decodes selected ARM64 pool-load offsets and BL targets. It associates decoded offsets with the analyzer's pool table. This verifies the load/call instructions, **not the entire snapshot deserializer**. Key state branches also have independent LLVM objdump outputs in `flutter/flow-byte-validation.txt`.
- Full exports are under `flutter/recovered/`. `.dart` files there are **machine-oriented pseudocode**, with placeholder runtime helpers, unresolved calls, and register/memory operations. They are not original Dart source or a rebuildable app. No Dart analyzer/runtime test was run against them.

## Fruit Land API schema

Recovered calls invoke the app's `Http.getSimple` or `Http.postSimple` adapter. These verbs describe the app wrapper selected by a static callsite; no HTTP traffic was observed, and the bridge's transport encoding has not been verified.

| Function / VA | Wrapper and route | Recovered map keys / payload model |
|---|---|---|
| GameApiService.betFruit `0x41e31c` | POST `slot/machine/bet` | `packetNum`, `soulCoinNum`; the shipped name `packetNum` must not be silently renamed `fruitId` |
| getFruitGameResource `0x4d3b98` | GET `slot/machine/resource` | FruitLandResource |
| getFruitGameProcess `0x4d2184` | GET `slot/machine/process` | GameFruitProcessResult |
| getRecentFruitResult `0x4d1d18` | GET `slot/machine/result/recent` | List parsed into BetItemInfo candidates |
| getGameFruitResultDialog `0x4444d0` | GET `slot/machine/result` | Request `currentTimes`; GameFruitWinnerDialogInfo |
| SOApiService.getGameFruitRankList `0x4366ac` | GET `slot/machine/ranking` | Request `pageSize`, `cursor`; GameFruitRankListInfo |
| getGameFruitDialogList `0x435e54` | GET `slot/machine/user/result/query` | Request `pageSize`, `cursor`; GameFruitDialogListInfo |

Evidence: `flutter/flutter-game-schemas.json`, function records with address, class/member, each literal-load PC, instruction word, file offset, pool offset, and direct call target. Example: bet route loaded at `0x41e408` from pool offset `0x152a8`; the call at `0x41e414` targets `Http.postSimple` at `0x41e430`. Original-byte LLVM disassembly is retained in `flutter/betFruit.objdump.txt`.

### JSON models, recovered from constructors

| Model / fromJson VA | Keys accessed by the constructor |
|---|---|
| FruitLandResource `0x4d3c7c` | `betItemList`, `coinList` |
| BetItemInfo `0x4d1f58` | `odds`, `index`, `imageUrl` |
| BetCoinInfo `0x4c379c` | `index`, `coin` |
| GameFruitProcessResult `0x4c2fa0` | `state`, `currentTimes`, `currentResult`, `todayWinCoin`, `totalMs`, `totalBetMs`, `totalDistributeMs`, `totalShowMs`, `currentMs`, `resultRemainMs`, `userBetList` |
| GameFruitWinnerDialogInfo `0x44462c` | `totalMs`, `currentMs`, `rankingList`, `userBetResult` |
| GameFruitWinnerBetResultInfo `0x444908` | `winCoin`, `coin`, `imageUrl` |
| GameFruitRankListInfo `0x436a6c` | `signature`, `avatarUrl`, `garlandUrl`, `winCoin` |
| GameFruitWinerListInfo `0x444b60` | `signature`, `avatarUrl`, `winCoin` — shipped Winer spelling retained |
| GameFruitDialogListInfo `0x436214` | `coin`, `winCoin`, `itemName`, `createTime` |

Constructor key access is stronger evidence than a field-name string alone. It does not fully establish JSON type/nullability, requiredness, units for every field, or backend validation. Empty-string defaults and incidental literals are excluded from the key lists. Numeric/duration semantics are assessed at actual use sites in the separate flow report.

### Round and result behavior

Recovered GameFruitProcessState objects label UNKNOWN=0, BET=1, DISTRIBUTE=2, SHOW=3. In `checkProcessState` at `0x4d26ec`, actual branches select the corresponding handlers. Timing calculations use supplied process values:

- BET countdown: `ceil((totalBetMs - currentMs) / 1000)`.
- DISTRIBUTE countdown: `ceil((totalBetMs + totalDistributeMs - currentMs) / 1000)`.
- SHOW countdown: `ceil((totalMs - currentMs) / 1000)`.

A one-second timer updates client presentation. Results are read through `currentResult` and the result endpoint, with delayed winner-data retrieval using `resultRemainMs`. The function named `randomRequestWinnerInfo` must not be interpreted as random winner generation: its recovered behavior schedules a request. No local outcome-generating RNG was established in these selected methods. Server RNG, fairness, permitted bets, odds application, settlement, and full reconnect semantics remain unverified.

The shipped rules describe up to six fruit selections, one selection per fruit per round, and 35 seconds. The recovered model supplies phase durations dynamically; the UI copy is not proof that every server round uses a fixed 35-second window.

See `flutter/flutter-flow-report.md` for the complete function/address evidence, page initialization, event subscription, result animation, timer and teardown findings.

## Flutter/native integration

Dart `VirtualParty.sendTextToParty` at `0x3a8d40` and `inviteUserToParty` at `0x42066c` use `channel_virtual_party` (channel constructor `0x3a8e18`). Native DEX confirms a corresponding SOF handler `Lok/a.b`:

- `inviteUserToParty`: parses `roomId` and `userIdList`, calls `ShareService.inviteSoulerToRoom`.
- `sendTextToParty`: Dart supplies `roomId` and `text`; the selected native handler reads `text` and calls `VirtualPartyService.sendRoomText`. **Use of the Dart-supplied roomId is not established on this native branch**; current-room context is a hypothesis.
- Success/notImplemented paths are represented in handler instruction references. Full permissions, argument validation and error semantics are not reconstructed by reference extraction alone.

Additional generic channels: `soul_channel_event` with sendEvent/addEventListener/removeEventListener; `soul_channel_message` with user/language/H5 host/theme; dialog/payment and codec channels. Fruit page initialization subscribes to `soul.event.business.charge_coin_success`, so coin-charge updates cross the generic event boundary. No Dart room-bridge RTC command was recovered; audio ownership must be traced through the Android room/RTC layer.

Native FlutterPageId constants explicitly route GAME_FRUIT to `page_game_fruit`, and dice bet/record/rule entries to their Flutter pages. Banner IDs FRUIT_GAME_ID=-30, GAMBLE_DICE_ID=-20, LUCKY_POCKET_ID=-10 identify configuration entries. `showSlotMachine`/`showGambleDice` are shipped configuration fields, not proof of current activation.

## Additional gameplay schemas

### 你画我猜 / DrawSomething

`classes8.dex` has `com.soul.game.protos` generated declarations. Recovered envelope:

- `GameMessage`: id #1, gameId #2, type #3, phase #4; ping #5, invite #6, ready #7, play #8, gameover #9, extension map #10.
- Type DRAW_SOMETHING=1; phases PING=0, INVITE=1, READY=2, PLAY=3, GAMEOVER=4.
- `DrawSomethingPlayGameMessage`: round #3, maxRound #4, action type #5, question #6, questionDesc #7, answer #8, answerDesc #9, extension map #10.
- Actions QUESTION_SET=0, ANSWER_SET=1, DRAW=2, GUESS=3, TIMER=4.
- Push messages include invite/ready/question-set/answer-set completion, round start/done, answer result, and gameover. Round pushes carry round/nextRound and timestamps; results include question/answer descriptions, right boolean, timestamp and extensions.
- IM `MsgCommand.Type` includes GAME=34; game payload is field #31. Finger guessing and dice roll have their own IM types/payloads.

This is a good candidate for **protocol reconstruction**, with explicit field numbers and semantic getter types. It does not prove the app still exposes the game, that it runs inside voice rooms, or that drawing strokes are carried in a particular extension key. Exact protobuf scalar encoding/options remain incomplete; no synthetic .proto file is presented as original.

### Dice / PK

Native create request: `gambleType`, `targetId`, `maxParticipant`, `maxCoin`; bet request: `gambleDiceId`, `diceBet`, `coin`. Process has state/countdown, big/small lists and totals, own record; result has win/lose totals and winners.

Flutter adds:

| Function / VA | GET route | Request keys |
|---|---|---|
| SOApiService.getPKGameRecordList `0x444360` | `gamble/dice/record/query` | `dealType`, `pageSize`, `cursor` |
| getPKBetGameRankList `0x3ac7ec` | `gamble/dice/record/detail` | `gambleDiceId`, `diceBet`, `cursor` |

`GamePkBetRecordListModel.fromJson` at `0x445098`: `winBetCoin`, `loseBetCoin`, `diceCoin`, `resultType`, `diceBet`, `createTime`. `GamePkMakeBetListModel` at `0x42ee08`: `signature`, `avatarUrl`, `garlandUrl`, `diceCoin`. The combination ties these PK record pages to dice participation, without proving an independent active PK game engine.

### 红包 / Lucky Pocket and shared media

Flutter `PartyApiService.sendRedPocket` at `0x429de0` calls POST `red/packet/make` with `targetId`, `soulCoinNum`, `packetNum`, `packetType`; resource retrieval at `0x4d5b88` calls GET `red/packet/resource`. Resources include coin/count choices; history models preserve sender/recipient presentation, Soul Coins, VIP/lucky flags and timestamps. Native claim result states include SUCCESS, ALREADY_ROBED, NO_MORE, OVER_TIME, ROBED_SELF, UNKNOWN.

Watch Together models expose video ID/title, position, player switch/state and operations PLAY_OR_PAUSE, SLIDER, SWITCH, UNSTART, UNKNOWN. These provide synchronization/control schemas; authority, timing tolerances and live provider behavior remain unknown.

Avatar collection/gallery objects expose slots, levels and display metadata. That is collection presentation evidence, not a demonstrated game-round loop.

The detailed native/IM declaration inventory, parameter annotations and bridge instruction references are in `gameplay-schemas.md` and `gameplay-schemas.json`.

## Coverage and remaining questions

Performed: extraction with matching binary identity; Dart snapshot/object/function export; scoped pseudocode/disassembly; focused raw instruction verification; model/key/API reconstruction; native parameter and protobuf schemas; bridge cross-check. SOUL itself was not executed; no backend URL or credential was used. Only the analysis directory was changed; no commit or push.

Bounded negative searches of decoded Dart libraries/classes/strings for 剧本/狼人/卧底/murder/werewolf/jubensha/scriptkill found no matching module. A `Gludo` string is not enough to establish Ludo gameplay. The result still excludes remote game catalogs, downloaded H5/content, encrypted/encoded assets and other editions.

Remaining: verify unverified snapshot profile against source/oracle if exact reconstruction is needed; resolve indirect calls and full field types; trace DrawSomething UI/routing and transport use; test enabled entries and two-party behavior on a user-controlled device; obtain the mainland artifact exposing 剧本杀 if that remains the main goal. These are limits of this completed static pass, not claims of live product acceptance.


## Follow-up: DrawSomething

The dedicated deeper pass is [drawsomething/REVERSE-ENGINEERING.md](drawsomething/REVERSE-ENGINEERING.md). It recovers the complete original game and IM envelope descriptors, validates exact schema equivalence, and decompiles invitation/gameover packet adapters. READY/PLAY declarations are broader than the observed client adapter; a complete playable game and voice-room attachment were not established.
