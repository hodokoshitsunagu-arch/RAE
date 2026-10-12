# Soul 2.78.0: voice rooms and gameplay reverse-engineering assessment

Analyzed 2026-10-12. Target: `../Soul-Chat%2C+Match%2C+Party_2.78.0_APKPure.xapk`.

## Main conclusion

This artifact is a useful target for reconstructing **voice-room client contracts, seats/moderation, room messaging, audio integration, gifts/pockets, basic interaction games, dice rounds, and Flutter game pages**. It identifies itself as **international Soul**, package `com.soul.android.international`, version 2.78.0, version code 260921000. It is not a reliable stand-in for the mainland edition's entire gameplay catalog.

No explicit 剧本杀/狼人杀 module was identified in the searches described below. That is a bounded negative result, not proof those features never exist in Soul. The highest-value next step for those specific玩法 is an artifact or a user-controlled runtime session showing their actual entry point.

## Evidence and identity

These are ordinary local ZIP/DEX/resource parsing records, **not REA-produced Evidence IDs**. REA MCP tools were not connected; no `rea` or `jadx` executable was found. Acquiring the REA CLI with npx failed with npm-registry DNS resolution error. No local JDK directory or required headless JADX JAR was located in the bounded checks. Accordingly no Java method bodies, Dart code, or native functions were decompiled in this pass. No app or recorded service endpoint was executed/contacted.

- **E1 — artifact**: SHA-256 `071b2f441a1eff7b96a063fce4ed8b0c9415797da98d7037284649f26db797c1`; 121,843,916 bytes. XAPK manifest declares identity, SDK 21/35, and splits. Compiled AndroidManifest.xml root attributes independently confirm package/version/code; see `manifest-identity.json` for typed values, byte offsets and manifest digest. Archive contains base APK, ARM64 APK, mdpi APK, icon, and manifest. Packaging metadata alone does not establish publisher authenticity or signature validity.
- **E2 — DEX definitions**: `dex-index.json` parses all nine base APK DEX files: 54,120 defined classes, including 1,351 under `cn.soul.android.virtualparty`. Records include class descriptor, superclass, defined methods, code-item offsets, defined fields, and method annotations. UTF-8 decoding uses replacement for malformed/modified UTF-8 sequences; semantic names are not deobfuscated. No control-flow or reference graph is recovered.
- **E3 — client contracts**: `room-contracts.json` selects room/RTC classes and 52 Retrofit route declarations: 49 in `IVirtualPartyApi`, three in `IPayApi`. Each carries DEX member, declaring class, method, declared HTTP verb/path, and available generic signature. Parameter annotations, numeric enum mapping, host/auth headers, callsites, and actual requests have not been decoded.
- **E4 — resources/AOT packaging**: `resources-report.md` and `resources-evidence.json` retain ZIP inventory, Android global resource strings, and ARM64 Flutter AOT ASCII strings with byte offsets. See that report's R1–R5 anchors and limits. Paths within binaries are compiler artifacts, not a claim that original Dart source was recovered.

## Voice-room investigation map

| Module | Observed package evidence | What can be recovered next | Priority / limit |
|---|---|---|---|
| Discovery, creation, joining, exit | Native room activities; `PrepareRoomManager`, `JoinRoomManager`; Retrofit create/join/detail/list/exit/disband declarations | Entry routes, request/response models, permission prompts, token handoff, local lifecycle and failure paths | P0; backend eligibility/discovery ranking remains external |
| Seats and mic permissions | `RoomOperateManager`, `RoomUpdateManager`; mic apply/invite/reply/ban/unban/close/updateSwitch routes; `RoomUserInfo` fields | Seat positions, moderation commands, request/reply flow, mute versus removal semantics, reconciliation | P0; runtime needed for race/reconnect behavior and server enforcement |
| Room state and messaging | `RoomMessageManager`, `RoomMessageProvider`, `RoomNetworkManager`, `CorrectorManager`, `BizNotifyMsg`, `BizExtField` | Message types, payloads, local event dispatch, state reducers, snapshot versus incremental update handling | P0; infer a graph only after tracing actual calls |
| RTC adapter and audio controls | `IChatRoomEngine`, `RoomChatEngineManager`; 676 Agora class definitions; Agora ARM64 libraries | Token renew, room entry, stream mapping, publishing/listening, mic/speaker controls, volume callbacks, effects and mixing | P0; SDK presence does not prove active route/provider |
| Native party game interactions | `PartyGameType` defines DICE, FINGER, LUCKY_NUMBER, UNKNOWN; `RoomGameProviderKt`; game assets/labels | Launch action, result representation, rendering, result distribution; `sendGame` returns a result model | P1; server randomness/authority unknown |
| Dice round / wager presentation | Dedicated bet/result dialogs; process/result models; four dice API routes | Round phases, timer presentation, bet inputs, records and result UI | P1; settlement/RNG/economic enforcement not recoverable from client alone |
| Music and media rooms | LocalMusic/MusicLib/UploadMusic activities; engine music/effect APIs; YoutubeApiService/controller; watch progress push/pull routes | Playlist ownership, queue actions, host permissions, video position synchronization, interruption behavior | P1; content rights/provider service behavior outside artifact |
| Gifts, room rankings, red/lucky pockets | RoomGiftProvider/RoomVipGiftProvider; gift/pay route declarations; Flutter pocket pages; ranking and rob-pocket APIs | Gift presentation, reward message models, pocket create/collect/history flows and ranking UI | P1/P2; ledger and settlement are backend responsibilities |
| Flutter game layer | `libapp.so` first-party `biz/game`, `biz/pkGame`, `biz/party` paths; `channel_virtual_party`; Fruit Land assets | Dart AOT entry points, page/notifier/model/API relationships, Flutter/native channel payloads | P1; requires a separate AOT/native pass, not only JADX |
| Configuration and remote/H5 content | RoomSupportTypeInfo.allowCreate/notAllowTips; H5 bridge classes; Flutter room search/password/invite pages | Capability gates, remotely supplied options, navigation URLs and downloaded content boundaries | P0 for locating missing玩法; current server configuration unknown |

### Specific recovered client contracts

In `classes.dex`, `cn.soul.android.virtualparty.api.IVirtualPartyApi` declares:

| Method | Declared route | Interpretation boundary |
|---|---|---|
| createVirtualPartyRoom | POST `virtual/party/room/create` | Returns PartyInfo wrapper in generic signature |
| joinRoom | POST `virtual/party/room/join` | Joining contract; successful execution unobserved |
| getRoomDetail | GET `virtual/party/room/detail` | Returns RoomInfo |
| refreshToken | GET `virtual/party/room/refreshToken` | Token refresh contract, not extracted token |
| applyTakeSeat / replyApplyTakeSeat | POST `virtual/party/room/micro/apply` / `applyReply` | Mic application and reply |
| inviteTakeSeat / replyInviteTakeSeat | POST `virtual/party/room/micro/invite` / `inviteReply` | Mic invite and response |
| banMic / reopenMic | POST `virtual/party/room/micro/ban` / `unban` | Distinct mute permission commands |
| sendGame | POST `virtual/party/room/send/game` | Signature returns PartyGameResultInfo |
| createGambleDice / betGambleDice | POST `gamble/dice/create` / `gamble/dice/bet` | Round creation and bet input |
| getGambleDiceProcess / getGambleDiceResult | GET `gamble/dice/process` / `gamble/dice/result` | Client round status and result retrieval |
| pushVideoProgress / getVideoProgress | POST `virtual/party/watch/progress/push` / GET `.../pull` | Explicit watch-progress synchronization contracts |

Route suffix shorthand above inherits the preceding full prefix. Full unshortened paths are in `room-contracts.json`. These are parsed Retrofit method annotations, stronger evidence than unassociated URL strings, but still not network observations.

`PartyInfo` declares `partyRoom`, `token`, `userId`. `RoomUserInfo` declares `microIndex`, `microState`, `microSwitchState`, `role`, `roomId`, and `userId`, alongside presentation fields. `RoomInfo` declares owner, topic, visibility, joinPassword, type, roomerNum, maxRoomerNumModel, musicStation, and background image. These are a strong starting schema, not a complete protocol specification.

`PartyGameResultInfo` declares `randomResult: Integer` and `type: PartyGameType`. The API returning that model suggests a server-mediated result flow; proving authority or randomness needs callsites and runtime observations.

**Role clarification:** `com.soul.android.entity.virtualparty.RoomUserRole` defines ADMIN, MEMBER, OWNER, UNKNOWN. The `/role/apply` and `/role/invite` family must not be presented as evidence of narrative character selection. `RoomType` defines BASIC, VIDEO, UNKNOWN; remote labels such as Premium/Private need separate mapping. `RoomGambleDiceState` defines BETTING, NOT_STATED, UNKNOWN; preserve the shipped spelling and do not invent missing phases or numeric values.

### Audio-provider caution

The application abstraction is under `cn.soulapp.android.lib.media.zego`, but the inspected DEX contains Agora definitions and the ARM64 split contains `libagora-rtc-sdk.so` and audio processing extensions. No `im.zego` or `com.tencent.trtc` class definitions matched those exact prefixes. **Do not identify the active provider from a stale package name.** Trace `RoomChatEngineManager` through its delegates/JNI into the actual SDK, separately for party rooms and private voice matching.

`IChatRoomEngine` exposes enterRoom/leaveRoom, takeSeat, enableMic, muteSpeaker, renewToken, per-user volume, audio profiles/bitrate, DTX, in-ear monitoring, music/effect controls, and external video frames. `IRoomCallback` declares custom-command and token-expiry/request callbacks. This makes the application adapter much more useful to study initially than proprietary codec internals.

## Gameplay findings and 剧本杀

**Directly supported:** native Dice, Rock Paper Scissors (FINGER enum plus resource label), Lucky Number, and a distinct dice-round/bet/result feature. Music and Watch Together are room entertainment features rather than proven competitive games.

**Flutter candidate with substantial evidence:** Fruit Land has page, notifier, model, API path strings and image assets. Its shipped English rule text describes choosing fruits and Soul Coin amounts, up to six different fruits, one choice per fruit per round, and a 35-second window. This is UI copy, not a validated runtime timer or payout algorithm. Its connection to specific room states must still be traced through `channel_virtual_party` and native plugin handlers. Similarly, `biz/pkGame` bet/record/rule names do not establish the exact kind of PK competition.

**Not identified:** DEX string searches for 剧本, 狼人, 卧底, jubensha, scriptkill, werewolf, murder returned no matches. Separate resource/AOT searches found no explicit 剧本杀/狼人杀/murder-mystery markers. A ludo substring occurred in an unrelated application-ID list, not a Soul gameplay module. Generic `ScriptCategory` from Flutter is not a murder-mystery feature.

Coverage excludes full Dart Unicode heap strings, encrypted/encoded data, dynamic code, remote assets/catalogs, region/account flags, and other app editions. Thus the responsible conclusion is **“not located in this international package,” not “Soul has no 剧本杀.”**

For actual 剧本杀, investigate these questions once a real entry is located:

1. Lobby/catalog: native screen, Flutter page, WebView, or downloaded game package? Which flags/version/region select it?
2. Session setup: script ID/version, capacity, host/DM, ready state, character assignment, spectator handling.
3. Narrative flow: introduction → private reading → discussion → investigation/clues → voting → reveal, or whatever phases the observed product actually uses.
4. Voice integration: public/private channels, permitted speakers per phase, host controls, timed turns, reconnect and late join.
5. Content transport: chapter/clue/role schemas, per-role visibility, caching/versioning, and resumed-session behavior.
6. Game authority: who advances phases and resolves votes/results? Client requests versus authoritative server messages.

These are a proposed investigation checklist, not claims about SOUL's implementation. Obtain the mainland/version artifact containing the feature, or observe that exact feature on a user-controlled Android session. Do not try to infer missing story scripts from generic room APIs.

## Suggested reverse-engineering sequence

1. **Recover Java/Kotlin room behavior with JADX.** Supply an existing full JDK 17+ and `jadx-headless-mcp` 0.7.1 for REA's Android workflow. Use the extracted working copy `base.apk`; inspect package, search classes, inspect selected classes/methods, then incoming references. Start with IVirtualPartyApi, JoinRoomManager, RoomOperateManager, RoomMessageManager, RoomUpdateManager, and RoomGameProviderKt. JADX supports APK/DEX decompilation and usage navigation but does not guarantee complete reconstruction: https://github.com/skylot/jadx.
2. **Produce a room event dictionary and state model.** Decode parameter annotations and model serializers, follow message handlers, map numeric enums, and distinguish seat state, audio publishing state, permissions, and room membership. Deliver an API/schema table plus join/seat/reconnect/message sequence diagrams with each edge tied to a real callsite.
3. **Trace the real RTC delegate.** Follow initialization, token acquisition, room/stream IDs, callbacks, publish/subscription actions, audio route changes, music mixing and leaving. Recover app configuration and lifecycle; reimplement against a supported SDK rather than starting by reversing its audio codecs.
4. **Analyze Flutter separately.** Extract matching libapp.so and libflutter.so working copies. Identify exact engine/Dart build and AOT layout before choosing compatible tools. Trace Fruit Land, dice rules/records, pocket pages and virtual-party channel handlers. Android Flutter release code is compiled to native code, so Java decompilation alone cannot expose Dart implementation bodies: https://docs.flutter.dev/resources/architectural-overview.
5. **Use a controlled runtime only for unresolved behavior.** On a user-controlled device/account, record entry screens and consenting test-room actions. Compare host/member views for joins, seat requests, mute/removal, background/foreground, disconnection, game launches/results, music/video synchronization and pocket flows. Compare observable state and messages to the static model. Such a runtime session is not part of this pass.
6. **Use another artifact for the missing玩法.** Compare exact package/version and feature entry first. Search its native/Flutter/H5 routes and downloaded content, then build a dedicated 剧本杀 phase/content/voice model from actual evidence.

## Other modules visible in the package

App-owned DEX package families include login, user/profile, planet match/measure/card, chat, square feed, business/payment, share, notice, H5, Flutter integration, and media. These are useful independent follow-up targets. Package membership establishes code organization; matchmaking ranking, recommendation algorithms, moderation decisions and backend storage are not recovered by listing classes.

## Feasibility and what this pass completed

- **High yield:** client interfaces/models, route declarations, layout/assets, feature naming, local presentation and (with method decompilation) lifecycle/event handling.
- **Moderate yield:** obfuscated Android implementation, native/Flutter bridge, Dart AOT game behavior; requires focused tools and runtime corroboration.
- **Unknown/external:** server algorithms, RNG/settlement, authoritative permissions, live feature availability, downloadable story catalog and publisher-original source.

Checklist: artifact identity corroborated from compiled manifest and packaging inventoried; room modules and basic gameplay substantially mapped; contracts partially recovered; Flutter boundary identified; 剧本杀 availability unresolved after bounded negative search; RTC active delegate unresolved; runtime behavior and backend rules untested. Input SHA-256 retained; no source changes, commit, push, app launch or external service action performed.


## Follow-up: Flutter AOT and gameplay schemas

The deeper pass is in [FLUTTER-GAMEPLAY.md](FLUTTER-GAMEPLAY.md). It recovers Fruit Land code/model/API relationships, native bridge handlers, dice record schemas and a substantial DrawSomething / 你画我猜 protobuf protocol. The initial lack of an AOT analysis tool was addressed with a scoped standalone dae executable. Its matched snapshot profile remains unverified; selected instructions were independently checked. Initial static-parser coverage limits still apply to this original report; consult the follow-up for expanded coverage.
