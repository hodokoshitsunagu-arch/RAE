# Exact SOUL IM envelope schema

Observed: recovered the full packaged `im.proto` FileDescriptorProto from classes8.dex using correct modified-UTF8 decoding, preserving original bytes. Full unrelated message schemas are retained in `im.proto` because envelope dependencies form one descriptor. The original import is `draw-something.proto`; compile with both this directory and its parent as proto paths.

Source provenance: DEX string index 351; string_data_item byte offset 3899653; encoded payload range [3899655, 3909234); recovered descriptor 9480 bytes, SHA-256 `cd95dd7266d641b4b641a17997e77c6681e880997aa869b56b08e9cd83148e65`. `Lfp/a;.<clinit>` code_item at 2979360 references this string at PC0, instruction byte offset2979376. All offsets are relative to uncompressed classes8.dex.

## Exact outgoing envelope

`CommandMessage` has `type` field3 (`MSG=0`) and oneof `cmd` containing `MsgCommand msgCommand=5`. Identity fields: `soulId=1`, `cmd_id=2`, `acceptedMsgId=4`, `encryptedUserId=20`; timestamp is `int64` field25. This states declared schema, not which identities the observed application populates.

`MsgCommand` has `type` field1 (`GAME=34`), `from` string field2, `to` string field3, timestamp int64 field4, `extMap` map<string,string> field30, and oneof `msg` containing `GameMessage gameMessage=31`.

Thus the declared nested path is `CommandMessage.msgCommand.gameMessage.playGameMessage.drawSomethingPlayGameMessage` for a DrawSomething PLAY command. The separately recovered `draw-something.proto` defines its exact child schema. Proto3 enum zero/default omission matters: `CommandMessage.Type.MSG` is zero and may not appear on the wire.

## Scope and validation

`protoc35.1` compiled the reconstructed full schema against its original game dependency successfully. Recursive descriptor comparison confirmed exact semantic correspondence after normalizing field order and ignoring modern synthesized json_name. Original descriptor and validation records are retained here.

The descriptor establishes no network framing, compression, encryption, socket authentication, CRC algorithm, endpoint, live feature availability, or backend acceptance. A Java method named `serializeBytes` is not a schema field and needs separate method-level analysis. Do not send sample messages to SOUL infrastructure on the basis of this reconstruction.
