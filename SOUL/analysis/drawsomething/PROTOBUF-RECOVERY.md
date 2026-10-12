# Exact DrawSomething protobuf recovery

## Observed artifact facts

The APK contains a complete serialized `google.protobuf.FileDescriptorProto` for `draw-something.proto`. Recovery reads original DEX string bytes, restores modified-UTF8 encoded NUL (`C0 80`), decodes Java string characters, then maps U+0000..U+00FF back to their descriptor bytes. This avoids the previous declaration parser's lossy replacement of embedded NUL characters. No scalar types were guessed from Java integer storage.

- APK SHA-256: `6c29aadc46a6327d4ed8e595c9c387a1860b43638a5299c6b52c0d2d3f1b4758`
- DEX member: `classes8.dex`; SHA-256: `6fc0a5913fcffa8756645582307052846f7115bab72dfd44922b80b0ecebf703`
- DEX string index: `352`
- DEX `string_data_item` offset: `3909235`; encoded payload range: `3909237`..`3913270` (end exclusive)
- Descriptor: `3995` bytes; SHA-256: `957a244de1ffff3706608be72159929ee319b3cced48d5fd22d2fbee7deebe2c`
- Descriptor initialization: `Lep/a;.<clinit>` code item offset `2967916`, string load at PC `0`, absolute DEX byte offset `2967932`.

The offsets above are relative to uncompressed `classes8.dex`, not the ZIP APK container. `descriptor-provenance.json` retains machine-readable identity and source references.

## Recovered contracts

`draw-something.proto` is a directly reconstructed, compilable schema. `draw-something.descriptor.bin` is the original recovered serialized descriptor; `descriptor.txt` is protoc's decoded text. The original source whitespace and comments are unavailable. The descriptor establishes:

- Proto3 syntax with no protobuf package declaration; Java package `com.soul.game.protos` is a code-generation option.
- Complete message and enum declarations; exact field numbers and scalar types.
- `cmd` oneofs on `GameMessage`, `PlayGameMessage`, `GameoverGameMessage`, `GamePsh`, and `DrawSomethingGamePsh`.
- All `extMap` fields are **map<string, string>**, not arbitrary typed extension fields.
- `AnswerResults.answerResults` is **repeated AnswerResult**.
- Timestamps are **int64**, round/maxRound/nextRound are **int32**, answer correctness is **bool**.
- The DRAW command has no dedicated stroke/point field. Its only declared carrier candidates are the string fields and `extMap`; the payload encoding and actual used keys require handler/runtime evidence.

The generated descriptor contains no protobuf service declaration. Recovering the wire schema does not establish an endpoint, handshake, transport framing, identity rules, timer units, valid round count, scorer, text matching rules, drawing representation, deployment availability, or voice-room attachment.

## Validation

`/opt/homebrew/bin/protoc` (libprotoc 35.1) successfully compiled the reconstructed source. A recursive comparison against its recompiled FileDescriptorProto confirmed all field/type/enum/oneof/map/options/syntax contents matched. Only field declaration ordering was normalized by field number, and modern protoc's synthesized `json_name` attributes were ignored (the shipped descriptor omitted them). `descriptor-validation.json` records the outcome. This is exact **schema** validation, not server compatibility or runtime gameplay validation.

## Independent generated-writer corroboration

Writer method references independently agree with descriptor scalar types. Below, code offsets identify the generated method's DEX code_item; PC is measured in 16-bit code units. Full instruction references and exact call byte offsets are in `writer-evidence.json`.

| Message | writeTo code item | Relevant writer calls (PC:name) |
|---|---:|---|
| AnswerResult | 1852224 | 13:writeString, 29:writeString, 45:writeString, 61:writeString, 69:writeBool, 82:writeInt64, 93:serializeStringMapTo |
| AnswerResults | 1851432 | message-only wrapper |
| AnswerSetDonePsh | 1858464 | 5:writeInt32, 17:writeInt64, 28:serializeStringMapTo |
| DrawSomethingGamePsh | 1875152 | 13:writeEnum, 124:serializeStringMapTo |
| DrawSomethingGameoverGameMessage | 1880084 | message-only wrapper |
| DrawSomethingPlayGameMessage | 1889680 | 5:writeInt32, 13:writeInt32, 29:writeEnum, 45:writeString, 61:writeString, 78:writeString, 95:writeString, 106:serializeStringMapTo |
| GameMessage | 1906176 | 13:writeString, 29:writeString, 45:writeEnum, 61:writeEnum, 134:serializeStringMapTo |
| GamePsh | 1914728 | 13:writeEnum, 36:serializeStringMapTo |
| GameoverGameMessage | 1920228 | message-only wrapper |
| GameoverPsh | 1926040 | 9:writeInt64, 20:serializeStringMapTo |
| InviteDonePsh | 1931876 | 9:writeInt64, 20:serializeStringMapTo |
| InviteGameMessage | 1938588 | 13:writeString, 29:writeString, 39:serializeStringMapTo |
| PingGameMessage | 1944456 | 9:writeInt64, 19:serializeStringMapTo |
| PlayGameMessage | 1949920 | message-only wrapper |
| QuestionSetDonePsh | 1955992 | 5:writeInt32, 17:writeInt64, 28:serializeStringMapTo |
| ReadyDonePsh | 1962104 | 5:writeInt32, 17:writeInt64, 28:serializeStringMapTo |
| ReadyGameMessage | 1968752 | 13:writeEnum, 23:serializeStringMapTo |
| RoundDonePsh | 1974852 | 5:writeInt32, 17:writeInt64, 28:serializeStringMapTo |
| RoundStartPsh | 1980964 | 5:writeInt32, 17:writeInt64, 28:serializeStringMapTo |

## Offline decoder usage

For a captured payload independently identified as `GameMessage`:

```sh
/opt/homebrew/bin/protoc --proto_path=SOUL/analysis/drawsomething --decode=GameMessage SOUL/analysis/drawsomething/draw-something.proto < game-message.bin
```

For a `GamePsh` payload, use `--decode=GamePsh`. Do not assume an entire socket frame is the protobuf message: transport framing and outer wrappers remain a separate investigation. `--decode_raw` is useful only for structural inspection when the wrapper is unknown.
