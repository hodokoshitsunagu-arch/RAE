# SOUL resource / native packaging findings

Target: `/Users/mark/Projects/REA/SOUL/Soul-Chat%2C+Match%2C+Party_2.78.0_APKPure.xapk`
SHA-256: `071b2f441a1eff7b96a063fce4ed8b0c9415797da98d7037284649f26db797c1`
Method: Python ZIP inventory, format-aware Android compiled resource global string-pool decoding, ASCII string extraction with byte offsets from Flutter AOT `libapp.so`. App not executed. No recorded URLs fetched. No DEX inspection in this sub-report. Exact member inventories and string offsets are retained in `resources-evidence.json`.

## Observed identity and packaging

XAPK `manifest.json` (R1): `com.soul.android.international`, version `2.78.0`, version code `260921000`, minimum SDK 21, target SDK 35. Binary AndroidManifest.xml root attributes independently corroborate package (attribute byte offset 37160), versionName (37060) and integer versionCode (37040); exact typed values and manifest SHA-256 are in `manifest-identity.json`. This artifact identifies itself as INTERNATIONAL Soul. It is not evidence of the mainland application's complete feature catalog. Outer archive contains base `com.soul.android.international.apk`, native `config.arm64_v8a.apk`, density `config.mdpi.apk`, icon, and manifest. Base has 4236 members, including nine DEX files and 432 assets. ARM64 split has 39 native libraries.

## R2: Module inventory supported by resources

All resource paths below are within `com.soul.android.international.apk`.

| Module candidate | Exact packaged evidence | What it establishes |
|---|---|---|
| Room shell / lifecycle / room types | `res/layout/activity_virtual_party.xml`, `res/layout/activity_virtual_party_create_room.xml`, `res/layout/fragment_room_type.xml`, `res/layout/activity_disband_room.xml` | Packaged native room screens. Global strings: Basic Room (index 3833), Premium Room (4628), Private Virtual Party (4636), Choose Party Room Type (3923). |
| Seats, mic applications, host moderation | `res/layout/view_virtual_party_seat_item.xml`, `res/layout/virtual_party_dialog_room_management.xml`, `res/layout/virtual_party_dialog_room_user_profile.xml` | Packaged seat / management views. Strings describe host approval, invite mic, removal, muting, admin transfer; e.g. strings 3939, 3963-3966, 4964, 5205. Presence does not establish currently enabled state or server enforcement. |
| Music / jukebox | `res/drawable-xxhdpi-v4/virtual_party_admin_music_icon.png`, `res/layout/item_room_music_bg.xml` | Strings Music Playlist (4401), host consent/admin transfer for music (4419), Background Music (3824), Local Music (4329), System Music (4908). |
| Watch Together / video rooms | `res/layout/view_virtual_party_video_seat_item.xml`, `res/drawable-xxhdpi-v4/virtual_party_icon_watch_together.webp`, `res/drawable-xxhdpi-v4/virtual_party_img_video_youtube_release.webp` | Watch Together string 5135, YouTube string 4513, video room/playlist/controller assets; inspect native players and sync messages next. |
| Lightweight social games | `res/drawable-xxhdpi-v4/virtual_party_img_game_dice.webp`, `res/drawable-xxhdpi-v4/virtual_party_img_game_rock.webp`, `res/drawable-xxhdpi-v4/virtual_party_img_game_lucky_number.webp` | Dice (4041), Rock Paper Scissors (4717), Lucky Number (4346). Not automatically evidence of a full competitive game state machine. |
| Dice wager / round records | `res/layout/fragment_room_send_gamble_dice.xml`, `res/layout/fragment_room_bet_gamble_dice.xml`, `res/layout/fragment_room_gamble_dice_result.xml`, `res/layout/view_gamble_dice_dealer_profit.xml`, `res/layout/view_gamble_dice_bettor_profit.xml` | Distinct launcher, bet, result and payout UI. Resource string 5218 mentions minimum Soul Coins and a 5% platform entry cost; runtime/server rule correctness unknown. |
| Fruit Land | `assets/flutter_assets/assets/images/3.0x/game_fruit_img_bg.webp`, `assets/flutter_assets/assets/images/3.0x/game_fruit_img_count_down.webp`, `assets/flutter_assets/assets/images/3.0x/game_fruit_icon_ranked.webp` | Flutter assets for fruit game UI, countdown, ranking, Soul Coin choices. Corroborated by first-party Dart paths below. |
| Lucky Pocket / gifting economy | `assets/flutter_assets/assets/images/3.0x/party_send_pocket_bg.webp`, `res/drawable-xxhdpi-v4/virtual_party_img_red_pocket_bg.webp`, `res/layout/business_item_party_gift_count.xml` | Pocket and gift-count presentation. String 4969 describes pocket collection expiration after 24h. Server balance/settlement logic is not in these resources. |

## R3: Flutter implementation boundary (observed strings, inferred architecture)

Carrier: `config.arm64_v8a.apk!/lib/arm64-v8a/libapp.so` (6,488,992 bytes). Exact ASCII offsets:

- `package:soul_flutter_international/common/plugins/virtual_party.dart` at 307095; `channel_virtual_party` at 269334. Inference: a Flutter/native room bridge merits tracing, but strings alone do not establish bridge call direction or payload types.
- `package:soul_flutter_international/biz/game/page_game_fruit.dart` at 281448; `biz/game/widget/game_fruit_land.dart` at 269841; `biz/game/notifier/notifier_game_fruit.dart` at 284779; `model/game_fruit_model.dart` at 435403; `api/game_api_service.dart` at 322178.
- `package:soul_flutter_international/biz/pkGame/page_game_bet_pk_rule.dart` at 573957; `biz/pkGame/page_game_make_bet_record.dart` at 441204; `biz/pkGame/page_game_tab_bet_record.dart` at 302447; `model/game_pk_model.dart` at 603854.
- `package:soul_flutter_international/biz/party/page_party_search.dart` at 617644; `page_party_password.dart` at 266650; `page_party_invite.dart` at 174614; `page_party_send_pocket.dart` at 208115; `page_party_lucky_bag.dart` at 153775; `page_party_lucky_bag_history.dart` at 536304; `api/party_api_service.dart` at 369854.
- `betFruit` at 279402, `getRecentFruitResult` at 382396, `GameFruitProcessState` at 593794. Rule text at 545310-545651 says participant selects Soul Coin amount and fruit, can choose up to six different fruits, a particular fruit once each round, and has 35 seconds before results are drawn automatically. This is shipped UI rule text, not observed timing or algorithm.
- Candidate protocol path strings: `virtual/party/room/search` at 387295, `gamble/dice/record/query` at 478010, `gamble/dice/record/detail` at 525432, `/party/room` at 285548. They were not fetched; callsites, HTTP method, base URL, payloads and server behavior require separate evidence.

Inference: hybrid native Android room shell plus Flutter AOT mini-game/pocket pages. A JADX-only pass will miss Dart implementation bodies. Extract a working copy of `libapp.so` with its matching `libflutter.so`, identify exact Flutter/Dart build from the binary, then use compatible AOT tooling or native disassembly to follow narrowly chosen page/notifier/model functions. Preserved symbol/source-path strings help name candidates but are not recovered source code.

## R4: Native library boundary

Exact paths within `config.arm64_v8a.apk`:

- `lib/arm64-v8a/libagora-rtc-sdk.so` (11,985,888 bytes), `libagora_audio_beauty_extension.so` (2,162,432), `libagora-soundtouch.so`, `libagora-fdkaac.so`, `libagora-ffmpeg.so`: direct packaging evidence of Agora RTC and audio processing. Binding to a particular voice room or voice-match flow requires Java/DEX/JNI callsites.
- `lib/arm64-v8a/libflutter.so` (10,833,168), `libapp.so` (6,488,992): Flutter engine plus Dart AOT payload.
- `lib/arm64-v8a/libijkplayer.so`, `libijkffmpeg.so`, `libijksdl.so`, `libmedialive.so`, `libsoulmedia.so`, `libslresdk.so`: media/native candidates; names do not prove their room role.
- `lib/arm64-v8a/libim-lib.so`, `libmmkv.so`, `libobjectbox.so`: IM/local state candidates; responsibilities must be traced from callsites.

Prioritize application RTC wrapper/delegate and authoritative room messages before third-party RTC SDK internals; provider binaries alone will not reveal room gameplay or server rules.

## R5: 剧本杀 / 狼人杀 and H5 limits

Bounded search for `剧本杀|狼人杀|murder.mystery|werewolf|jubensha|script.kill` found no match in the 32,057 decoded base global resource strings, 75 density-split global resource strings, or 18,776 ASCII strings in `libapp.so`. Filename inventory also provides no script/murder/wolf-specific gameplay asset pack. This does not prove absence: it excludes DEX code, UTF-16/Dart non-ASCII object strings, downloaded content, server-configured H5 pages, dynamic splits, and gated features. Generic Flutter `ScriptCategory` is a platform/library symbol, not evidence of 剧本杀.

Packaged assets with .html/.js/.wasm/.dart extensions: `assets/flutter_assets/packages/wakelock_web/assets/no_sleep.js`. The only .js asset is the generic wakelock `no_sleep.js`; no packaged first-party H5 game bundle was identified by those extensions. Resource string `sp_h5_ip_host` (5432) hints at H5 configuration but does not identify gameplay. To answer 剧本杀 robustly, obtain the mainland artifact/version containing that feature or observe the exact feature entry and its downloaded resources on a user-controlled device. Start by comparing package ID and displayed region, then trace feature routing, feature flags, WebView/native bridge, script catalog/role/phase/clue/vote message schemas. Those are next-step questions, not discoveries from this artifact.

## Coverage and limitations

Complete ZIP filenames/sizes inventoried in the three APK members. Base Android global string pool decoded (32,057 strings); this pass did not resolve resource IDs, qualifiers, all package key/name tables, nested skin ZIP contents, or layout XML attributes. Only ASCII runs (length >=5) from Flutter AOT were read, not code disassembly or full Dart heap recovery. No DEX scan, UI launch, login, room join, packet capture, network requests, authentication extraction, or backend correctness validation. Filename-based module labels remain candidates unless corroborated by strings/code/runtime. Input archive remained unchanged.
