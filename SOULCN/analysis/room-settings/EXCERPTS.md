# Selected static excerpts

Generated from the parent task's selected JADX output. Line labels below refer to the original generated files, not this excerpt file. Kotlin metadata annotation lines omitted for readability. This is generated pseudocode; no runtime execution is implied.

## `util/e.java:158-166`

```java
158:     public final boolean E() {
159:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 76, new Class[0], Boolean.TYPE);
160:         if (patchProxyResultProxy.isSupported) {
161:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
162:         }
163:         ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
164:         return ((Character) n70.p.w("218596", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
165:     }
166: 
```

## `soulhouse/bottom/BottomCommonBlock.java:261-273`

```java
261:         @Override // android.view.View.OnClickListener
262:         public final void onClick(View view) {
263:             if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
264:                 return;
265:             }
266:             long jCurrentTimeMillis = System.currentTimeMillis();
267:             if (jCurrentTimeMillis - ViewExtKt.d(this.f146573a) > this.f146574b) {
268:                 ViewExtKt.q(this.f146573a, jCurrentTimeMillis);
269:                 this.f146575c.dismissPartySettingBubble();
270:                 u30.a.f243719a.e(this.f146575c.getDataBus());
271:                 PartySettingContainerDialog.INSTANCE.a(this.f146575c.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(this.f146575c), "PartySettingContainerDialog");
272:             }
273:         }
```

## `soulhouse/bottom/BottomCommonBlock.java:369-385`

```java
369:         @Override // android.view.View.OnClickListener
370:         public final void onClick(View view) {
371:             if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
372:                 return;
373:             }
374:             long jCurrentTimeMillis = System.currentTimeMillis();
375:             if (jCurrentTimeMillis - ViewExtKt.d(this.f146583a) > this.f146584b) {
376:                 ViewExtKt.q(this.f146583a, jCurrentTimeMillis);
377:                 u30.a.f243719a.d(this.f146585c.getDataBus());
378:                 SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f146585c.blockContainer.getDataBus());
379:                 if ((soulHouseDriverJ0 != null ? (PlayFunctionBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null) == null) {
380:                     BottomCommonBlock.getPlaySetupList$default(this.f146585c, null, 1, null);
381:                 } else {
382:                     RoomPlayFunctionDialog.Companion.b(RoomPlayFunctionDialog.INSTANCE, this.f146585c.blockContainer.getDataBus(), null, 2, null).show(SoulHouseExtensionKt.k(this.f146585c), "RoomPlayFunctionDialog");
383:                 }
384:             }
385:         }
```

## `soulhouse/bottom/BottomCommonBlock.java:1078-1101`

```java
1078:             return;
1079:         }
1080:         TextView textView = (TextView) getRootView().findViewById(R$id.V30);
1081:         textView.setBackground(ContextCompat.getDrawable(textView.getContext(), R$drawable.Lc));
1082:         kotlin.jvm.internal.v.i(textView, "");
1083:         ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
1084:         if (layoutParams == null) {
1085:             throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
1086:         }
1087:         ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
1088:         marginLayoutParams.setMarginStart(ExtensionsKt.dp(8));
1089:         marginLayoutParams.setMarginEnd(ExtensionsKt.dp(8));
1090:         textView.setPadding(ExtensionsKt.dp(10), 0, ExtensionsKt.dp(10), 0);
1091:         textView.setLayoutParams(marginLayoutParams);
1092:         textView.setText("说点什么吧");
1093:         ViewGroup rootView = getRootView();
1094:         int i11 = R$id.jM;
1095:         ViewExtKt.l((PartyMateImageView) rootView.findViewById(i11));
1096:         ((PartyMateImageView) getRootView().findViewById(i11)).setImageResource(SoulHouseExtensionKt.y(this.blockContainer).getIsOwner() ? R$drawable.f127230gf : R$drawable.f127250hf);
1097:         PartyMateImageView partyMateImageView = (PartyMateImageView) getRootView().findViewById(i11);
1098:         partyMateImageView.setOnClickListener(new c(partyMateImageView, 500L, this));
1099:         ((PartyMateImageView) getRootView().findViewById(R$id.Jw)).setImageResource(R$drawable.f127542w8);
1100:         showPartySettingBubbleIfNeeded();
1101:     }
```

## `soulhouse/bottom/BottomCommonBlock.java:1198-1229`

```java
1198:     private final void bindPlayFunc() {
1199:         boolean z11 = false;
1200:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], Void.TYPE).isSupported) {
1201:             return;
1202:         }
1203:         String string = SConfiger.getString("party_play_func_icon", "https://china-img.soulapp.cn/admin/2025-09-03/c277dc18-dab7-483a-8009-b602348ca3ba.png");
1204:         ViewGroup rootView = getRootView();
1205:         int i11 = R$id.Ht;
1206:         PartyMateImageView partyMateImageView = (PartyMateImageView) rootView.findViewById(i11);
1207:         if (partyMateImageView != null) {
1208:             partyMateImageView.F(string);
1209:         }
1210:         PartyMateImageView partyMateImageView2 = (PartyMateImageView) getRootView().findViewById(i11);
1211:         if (partyMateImageView2 != null) {
1212:             if (SoulHouseExtensionKt.y(this.blockContainer).getIsOwner() && !isMelancholyRoom()) {
1213:                 z11 = true;
1214:             }
1215:             ExtensionsKt.visibleOrGone(partyMateImageView2, z11);
1216:         }
1217:         PartyMateImageView partyMateImageView3 = (PartyMateImageView) getRootView().findViewById(i11);
1218:         if (partyMateImageView3 != null) {
1219:             partyMateImageView3.setOnClickListener(new f(partyMateImageView3, 500L, this));
1220:         }
1221:     }
1222: 
1223:     /* JADX INFO: Access modifiers changed from: private */
1224:     public final boolean canShowGameGuide() {
1225:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Boolean.TYPE);
1226:         if (patchProxyResultProxy.isSupported) {
1227:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
1228:         }
1229:         return SoulHouseExtensionKt.y(this.blockContainer).getIsOwner() && !isMelancholyRoom();
```

## `soulhouse/bottom/BottomCommonBlock.java:2135-2145`

```java
2135:         kotlin.jvm.internal.v.j(root, "root");
2136:         super.initView(root);
2137:         registerEventBus(this);
2138:         if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
2139:             adaptPartyNewUX();
2140:         } else {
2141:             bindPlayFunc();
2142:         }
2143:         bindMoreStatus();
2144:         ViewGroup rootView = getRootView();
2145:         int i11 = R$id.Ow;
```

## `setting/PartySettingDialog.java:467-502`

```java
467:                 ViewExtKt.q(this.f144143a, jCurrentTimeMillis);
468:                 SoulHouseDriver soulHouseDriver = this.f144145c;
469:                 if ((soulHouseDriver != null ? (PlayFunctionBean) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null) == null) {
470:                     this.f144146d.A0();
471:                 } else {
472:                     PartySettingContainerDialog partySettingContainerDialogD0 = this.f144146d.D0();
473:                     if (partySettingContainerDialogD0 != null) {
474:                         RoomPlayFunctionDialog roomPlayFunctionDialogB = RoomPlayFunctionDialog.Companion.b(RoomPlayFunctionDialog.INSTANCE, this.f144146d.getDataBus(), null, 2, null);
475:                         final PartySettingDialog partySettingDialog = this.f144146d;
476:                         roomPlayFunctionDialogB.C(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$initCurrentPlayMode$1$1$1
477:                             public static ChangeQuickRedirect changeQuickRedirect;
478: 
479:                             {
480:                                 super(0);
481:                             }
482: 
483:                             @Override // kotlin.jvm.functions.Function0
484:                             public /* bridge */ /* synthetic */ w invoke() {
485:                                 invoke2();
486:                                 return w.f231958a;
487:                             }
488: 
489:                             /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
490:                             public final void invoke2() {
491:                                 PartySettingContainerDialog partySettingContainerDialogD1;
492:                                 if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (partySettingContainerDialogD1 = partySettingDialog.D0()) == null) {
493:                                     return;
494:                                 }
495:                                 partySettingContainerDialogD1.dismissAllowingStateLoss();
496:                             }
497:                         });
498:                         partySettingContainerDialogD0.s(roomPlayFunctionDialogB, "RoomPlayFunctionDialog", true);
499:                     }
500:                 }
501:                 u30.a.f243719a.d(this.f144146d.getDataBus());
502:             }
```

## `setting/PartySettingDialog.java:757-813`

```java
757:     public final void A0() {
758:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 62, new Class[0], Void.TYPE).isSupported) {
759:             return;
760:         }
761:         AnyExtKt.c(h30.g.f225309a.r7(), this).subscribeWith(new HttpSubscriber<PlayFunctionBean>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$fetchPlaySetupAndShowModeDialog$1
762:             public static ChangeQuickRedirect changeQuickRedirect;
763: 
764:             @Override // com.walid.rxretrofit.HttpSubscriber
765:             /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
766:             public void success(@Nullable PlayFunctionBean playFunctionBean) {
767:                 if (PatchProxy.proxy(new Object[]{playFunctionBean}, this, changeQuickRedirect, false, 2, new Class[]{PlayFunctionBean.class}, Void.TYPE).isSupported || playFunctionBean == null) {
768:                     return;
769:                 }
770:                 final PartySettingDialog partySettingDialog = this.f144141a;
771:                 playFunctionBean.updateFuncOpenState(partySettingDialog.getDataBus());
772:                 SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus());
773:                 if (soulHouseDriverJ0 != null) {
774:                     soulHouseDriverJ0.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0(), playFunctionBean);
775:                 }
776:                 PartySettingContainerDialog partySettingContainerDialogD0 = partySettingDialog.D0();
777:                 if (partySettingContainerDialogD0 != null) {
778:                     RoomPlayFunctionDialog roomPlayFunctionDialogB = RoomPlayFunctionDialog.Companion.b(RoomPlayFunctionDialog.INSTANCE, partySettingDialog.getDataBus(), null, 2, null);
779:                     roomPlayFunctionDialogB.C(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$fetchPlaySetupAndShowModeDialog$1$success$1$1$1
780:                         public static ChangeQuickRedirect changeQuickRedirect;
781: 
782:                         {
783:                             super(0);
784:                         }
785: 
786:                         @Override // kotlin.jvm.functions.Function0
787:                         public /* bridge */ /* synthetic */ w invoke() {
788:                             invoke2();
789:                             return w.f231958a;
790:                         }
791: 
792:                         /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
793:                         public final void invoke2() {
794:                             PartySettingContainerDialog partySettingContainerDialogD1;
795:                             if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (partySettingContainerDialogD1 = partySettingDialog.D0()) == null) {
796:                                 return;
797:                             }
798:                             partySettingContainerDialogD1.dismissAllowingStateLoss();
799:                         }
800:                     });
801:                     partySettingContainerDialogD0.s(roomPlayFunctionDialogB, "RoomPlayFunctionDialog", true);
802:                 }
803:             }
804: 
805:             @Override // com.walid.rxretrofit.HttpSubscriber
806:             public void error(int i11, @Nullable String str) {
807:                 if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
808:                     return;
809:                 }
810:                 ExtensionsKt.toast(String.valueOf(str));
811:             }
812:         });
813:     }
```

## `setting/PartySettingDialog.java:884-1006`

```java
884:     private final String G0() {
885:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], String.class);
886:         if (patchProxyResultProxy.isSupported) {
887:             return (String) patchProxyResultProxy.result;
888:         }
889:         int i11 = this.privateStatus;
890:         if (i11 == 0) {
891:             return "所有人";
892:         }
893:         if (i11 == 1) {
894:             return "关闭推荐分发";
895:         }
896:         if (i11 != 2) {
897:             return i11 != 3 ? "所有人" : "仅特定私聊对象可进";
898:         }
899:         return SConfiger.getString("close_friend_option_title", "仅挚友可进");
900:     }
901: 
902:     private final void H0() {
903:         if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 30, new Class[0], Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0()) {
904:             ty.q.J(((ISoulHouse) ty.q.z(ISoulHouse.class)).getSongListPlayCount(), new g());
905:         }
906:     }
907: 
908:     /* JADX INFO: Access modifiers changed from: private */
909:     public final void I0(Integer role) {
910:         RoomDataManager roomDataManagerA1;
911:         List<FunctionBean> listY;
912:         RoomDataManager roomDataManagerA2;
913:         boolean z11 = true;
914:         if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 8, new Class[]{Integer.class}, Void.TYPE).isSupported) {
915:             return;
916:         }
917:         if (role == null || role.intValue() != 1) {
918:             ViewExtKt.j(getBinding().f132935b);
919:             return;
920:         }
921:         ViewExtKt.l(getBinding().f132935b);
922:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
923:         ArrayList arrayList = null;
924:         FunctionBean functionBeanW = (soulHouseDriverJ0 == null || (roomDataManagerA2 = soulHouseDriverJ0.a1()) == null) ? null : roomDataManagerA2.w();
925:         SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
926:         if (functionBeanW != null) {
927:             TextView textView = getBinding().f132949p;
928:             StringBuilder sb2 = new StringBuilder();
929:             sb2.append("当前玩法:");
930:             String name = functionBeanW.getName();
931:             if (name == null) {
932:                 name = "";
933:             }
934:             sb2.append(name);
935:             textView.setText(sb2.toString());
936:             TextView textView2 = getBinding().f132948o;
937:             String desc = functionBeanW.getDesc();
938:             textView2.setText(desc != null ? desc : "");
939:             getBinding().f132953t.setText("切换");
940:             String iconUrl = functionBeanW.getIconUrl();
941:             if (iconUrl != null && iconUrl.length() != 0) {
942:                 z11 = false;
943:             }
944:             if (z11) {
945:                 getBinding().f132938e.setImageResource(R$drawable.f127147cd);
946:             } else {
947:                 ImageView imageView = getBinding().f132938e;
948:                 v.i(imageView, "binding.ivPlayMode");
949:                 cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(functionBeanW.getIconUrl()).into(getBinding().f132938e);
950:             }
951:         } else {
952:             if (soulHouseDriverJ1 != null && (roomDataManagerA1 = soulHouseDriverJ1.a1()) != null && (listY = roomDataManagerA1.y()) != null) {
953:                 arrayList = new ArrayList();
954:                 for (Object obj : listY) {
955:                     Integer type = ((FunctionBean) obj).getType();
956:                     if (type != null && type.intValue() == 2) {
957:                         arrayList.add(obj);
958:                     }
959:                 }
960:             }
961:             if (arrayList == null || arrayList.isEmpty()) {
962:                 getBinding().f132949p.setText("暂无玩法");
963:                 getBinding().f132948o.setText("当前为普通模式,可切换其他玩法");
964:                 getBinding().f132953t.setText("切换");
965:                 getBinding().f132938e.setImageResource(R$drawable.Q8);
966:             } else {
967:                 FunctionBean functionBean = (FunctionBean) CollectionsKt___CollectionsKt.s0(arrayList);
968:                 if (arrayList.size() == 1) {
969:                     TextView textView3 = getBinding().f132949p;
970:                     String name2 = functionBean.getName();
971:                     if (name2 == null) {
972:                         name2 = "";
973:                     }
974:                     textView3.setText(name2);
975:                 } else {
976:                     TextView textView4 = getBinding().f132949p;
977:                     StringBuilder sb3 = new StringBuilder();
978:                     sb3.append("房间玩法: ");
979:                     String name3 = functionBean.getName();
980:                     if (name3 == null) {
981:                         name3 = "";
982:                     }
983:                     sb3.append(name3);
984:                     sb3.append(" 等");
985:                     textView4.setText(sb3.toString());
986:                 }
987:                 TextView textView5 = getBinding().f132948o;
988:                 String desc2 = functionBean.getDesc();
989:                 textView5.setText(desc2 != null ? desc2 : "");
990:                 getBinding().f132953t.setText("切换");
991:                 String iconUrl2 = functionBean.getIconUrl();
992:                 if (iconUrl2 != null && iconUrl2.length() != 0) {
993:                     z11 = false;
994:                 }
995:                 if (z11) {
996:                     getBinding().f132938e.setImageResource(R$drawable.f127147cd);
997:                 } else {
998:                     ImageView imageView2 = getBinding().f132938e;
999:                     v.i(imageView2, "binding.ivPlayMode");
1000:                     cn.soulapp.android.chatroom.dynamic.b.d(imageView2).m(functionBean.getIconUrl()).into(getBinding().f132938e);
1001:                 }
1002:             }
1003:         }
1004:         ConstraintLayout constraintLayout = getBinding().f132935b;
1005:         constraintLayout.setOnClickListener(new h(constraintLayout, 500L, soulHouseDriverJ1, this));
1006:     }
```

## `setting/PartySettingDialog.java:1008-1040`

```java
1008:     private final void J0(Integer role) {
1009:         if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 63, new Class[]{Integer.class}, Void.TYPE).isSupported) {
1010:             return;
1011:         }
1012:         this.entranceList.clear();
1013:         if (role != null && role.intValue() == 1) {
1014:             l0();
1015:             Q();
1016:             j0();
1017:             u0();
1018:         } else if (role != null && role.intValue() == 3) {
1019:             P();
1020:             Q();
1021:             V();
1022:             u0();
1023:         } else {
1024:             V();
1025:             Q();
1026:             u0();
1027:             q0();
1028:         }
1029:         LinearLayout linearLayout = getBinding().f132940g;
1030:         v.i(linearLayout, "binding.llFeatureEntrances");
1031:         Context context = linearLayout.getContext();
1032:         LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
1033:         for (FeatureEntranceModel featureEntranceModel : this.entranceList) {
1034:             v.i(context, "context");
1035:             FeatureEntranceView featureEntranceView = new FeatureEntranceView(context, null, 0, 6, null);
1036:             featureEntranceView.setTag(featureEntranceModel);
1037:             featureEntranceView.setModel(featureEntranceModel);
1038:             linearLayout.addView(featureEntranceView, layoutParams);
1039:         }
1040:     }
```

## `setting/PartySettingDialog.java:1312-1324`

```java
1312:     public final void P0() {
1313:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], Void.TYPE).isSupported) {
1314:             return;
1315:         }
1316:         boolean zN = b0.n(b0.f142548a, SoulHouseExtensionKt.j0(this.dataBus), Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId()), null, 4, null);
1317:         SoulRouter.j().e("soul://ul.soulapp.cn/reactnative/container?pageId=soul_rn_room_status_setting&privateStatus=" + this.privateStatus + "&showOnlyFriendOption=" + zN + "&animated=false&transparent=true").d();
1318:         IReactNativeService iReactNativeService = (IReactNativeService) SoulRouter.j().u(IReactNativeService.class);
1319:         if (iReactNativeService != null) {
1320:             iReactNativeService.addRouterCallbackListener("soul_rn_room_status_setting", new k());
1321:         }
1322:     }
1323: 
1324:     /* JADX WARN: Type inference failed for: r2v1, types: [T, cn.soulapp.cpnt_voiceparty.setting.FeatureEntranceModel, java.lang.Object] */
```

## `setting/PartySettingDialog.java:2026-2059`

```java
2026:     private final void Y0(Integer role) {
2027:         if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 37, new Class[]{Integer.class}, Void.TYPE).isSupported) {
2028:             return;
2029:         }
2030:         this.otherSettingItems.clear();
2031:         if (role != null && role.intValue() == 1) {
2032:             W(this.otherSettingItems);
2033:             h0(this.otherSettingItems);
2034:             X(this.otherSettingItems);
2035:             n0(this.otherSettingItems);
2036:             O(this.otherSettingItems);
2037:         } else if (role != null && role.intValue() == 3) {
2038:             h0(this.otherSettingItems);
2039:             Y(this.otherSettingItems);
2040:             n0(this.otherSettingItems);
2041:             d0(this.otherSettingItems);
2042:             O(this.otherSettingItems);
2043:             r0(this.otherSettingItems);
2044:         } else {
2045:             p0(this.otherSettingItems);
2046:             h0(this.otherSettingItems);
2047:             n0(this.otherSettingItems);
2048:             d0(this.otherSettingItems);
2049:             e0(this.otherSettingItems);
2050:             v0(this.otherSettingItems);
2051:             Y(this.otherSettingItems);
2052:             k0(this.otherSettingItems);
2053:             i0(this.otherSettingItems);
2054:             O(this.otherSettingItems);
2055:         }
2056:         LinearLayout linearLayout = getBinding().f132942i;
2057:         v.i(linearLayout, "binding.llOtherSettingItems");
2058:         B0(linearLayout, this.otherSettingItems);
2059:     }
```

## `setting/PartySettingDialog.java:2103-2120`

```java
2103:     private final void Z0(Integer role) {
2104:         if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 21, new Class[]{Integer.class}, Void.TYPE).isSupported) {
2105:             return;
2106:         }
2107:         this.roomSettingItems.clear();
2108:         if (role != null && role.intValue() == 1) {
2109:             c0(this.roomSettingItems);
2110:             o0(this.roomSettingItems);
2111:             Z(this.roomSettingItems);
2112:             a0(this.roomSettingItems);
2113:             s0(this.roomSettingItems);
2114:             T(this.roomSettingItems);
2115:             g0(this.roomSettingItems);
2116:         }
2117:         LinearLayout linearLayout = getBinding().f132944k;
2118:         v.i(linearLayout, "binding.llRoomSettingItems");
2119:         B0(linearLayout, this.roomSettingItems);
2120:     }
```

## `setting/PartySettingDialog.java:2156-2179`

```java
2156:     private final void a1(Integer role) {
2157:         if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 9, new Class[]{Integer.class}, Void.TYPE).isSupported) {
2158:             return;
2159:         }
2160:         this.userManageItems.clear();
2161:         if (role != null && role.intValue() == 1) {
2162:             S(this.userManageItems);
2163:             f0(this.userManageItems);
2164:             t0(this.userManageItems);
2165:             R(this.userManageItems);
2166:             U(this.userManageItems);
2167:             b0(this.userManageItems);
2168:         } else if (role != null && role.intValue() == 3) {
2169:             S(this.userManageItems);
2170:             f0(this.userManageItems);
2171:             o0(this.userManageItems);
2172:             U(this.userManageItems);
2173:             b0(this.userManageItems);
2174:         }
2175:         LinearLayout linearLayout = getBinding().f132947n;
2176:         v.i(linearLayout, "binding.llUserManageItems");
2177:         B0(linearLayout, this.userManageItems);
2178:     }
2179: 
```

## `setting/PartySettingDialog.java:2557-2569`

```java
2557:     public final void g1(int i11) {
2558:         ChatRoomModel chatRoomModelF;
2559:         if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 31, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
2560:             return;
2561:         }
2562:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
2563:         String str = (soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? null : chatRoomModelF.f24092id;
2564:         if (str == null) {
2565:             return;
2566:         }
2567:         AnyExtKt.c(h30.g.f225309a.ra(str, i11), this).subscribe(new m(i11));
2568:     }
2569: 
```

## `setting/PartySettingDialog.java:3094-3124`

```java
3094:     private final void w0(Integer role) {
3095:         if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 7, new Class[]{Integer.class}, Void.TYPE).isSupported) {
3096:             return;
3097:         }
3098:         if (role != null && role.intValue() == 1) {
3099:             ViewExtKt.l(getBinding().f132952s);
3100:             ViewExtKt.l(getBinding().f132946m);
3101:             ViewExtKt.l(getBinding().f132951r);
3102:             ViewExtKt.l(getBinding().f132943j);
3103:             ViewExtKt.l(getBinding().f132950q);
3104:             ViewExtKt.l(getBinding().f132941h);
3105:             return;
3106:         }
3107:         if (role != null && role.intValue() == 3) {
3108:             ViewExtKt.l(getBinding().f132952s);
3109:             ViewExtKt.l(getBinding().f132946m);
3110:             ViewExtKt.j(getBinding().f132951r);
3111:             ViewExtKt.j(getBinding().f132943j);
3112:             ViewExtKt.l(getBinding().f132950q);
3113:             ViewExtKt.l(getBinding().f132941h);
3114:             return;
3115:         }
3116:         ViewExtKt.j(getBinding().f132952s);
3117:         ViewExtKt.j(getBinding().f132946m);
3118:         ViewExtKt.j(getBinding().f132951r);
3119:         ViewExtKt.j(getBinding().f132943j);
3120:         ViewExtKt.j(getBinding().f132950q);
3121:         ViewExtKt.l(getBinding().f132941h);
3122:     }
3123: 
3124:     /* JADX INFO: Access modifiers changed from: private */
```

## `setting/PartySettingDialog.java:3125-3128`

```java
3125:     public final SwitchSettingItemModel x0(boolean switchChecked) {
3126:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(switchChecked ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 16, new Class[]{Boolean.TYPE}, SwitchSettingItemModel.class);
3127:         return patchProxyResultProxy.isSupported ? (SwitchSettingItemModel) patchProxyResultProxy.result : new SwitchSettingItemModel("禁止所有人上麦", "开启后，房客将不可申请上麦，只可群主邀请", switchChecked, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$createBannedTakeSeatModel$1
3128:             public static ChangeQuickRedirect changeQuickRedirect;
```

## `setting/PartySettingDialog.java:3192-3195`

```java
3192:     public final SwitchSettingItemModel y0(boolean switchChecked) {
3193:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(switchChecked ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 20, new Class[]{Boolean.TYPE}, SwitchSettingItemModel.class);
3194:         return patchProxyResultProxy.isSupported ? (SwitchSettingItemModel) patchProxyResultProxy.result : new SwitchSettingItemModel("屏蔽进场动画", "开启后，LV.6以下的用户，进房特效不展示", switchChecked, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$createHideEnterAnimationModel$1
3195:             public static ChangeQuickRedirect changeQuickRedirect;
```

## `setting/PartySettingDialog.java:3220-3224`

```java
3220:     private final SwitchSettingItemModel z0(boolean switchChecked) {
3221:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(switchChecked ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 13, new Class[]{Boolean.TYPE}, SwitchSettingItemModel.class);
3222:         return patchProxyResultProxy.isSupported ? (SwitchSettingItemModel) patchProxyResultProxy.result : new SwitchSettingItemModel("自助上麦", "开启后，房客可自助上麦", switchChecked, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$createSelfTakeSeatModel$1
3223:             public static ChangeQuickRedirect changeQuickRedirect;
3224: 
```

## `setting/PartySettingDialog.java:3283-3297`

```java
3283:                 return w.f231958a;
3284:             }
3285: 
3286:             public final void invoke(boolean z11) {
3287:                 if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
3288:                     return;
3289:                 }
3290:                 LinkedHashMap linkedHashMap = new LinkedHashMap();
3291:                 SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
3292:                 linkedHashMap.put("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
3293:                 linkedHashMap.put("rightsCode", RightsFeatureModel.ASSISTANT_AUTO_MIRCO);
3294:                 linkedHashMap.put("turnOn", Boolean.valueOf(z11));
3295:                 AnyExtKt.c(h30.g.f225309a.L(linkedHashMap), this.this$0).subscribe(new a(this.this$0, z11));
3296:                 u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "1", z11, 2, null);
3297:             }
```

## `setting/PartySettingContainerDialog.java:404-440`

```java
404:                 {
405:                     super(0);
406:                 }
407: 
408:                 @Override // kotlin.jvm.functions.Function0
409:                 public /* bridge */ /* synthetic */ w invoke() {
410:                     invoke2();
411:                     return w.f231958a;
412:                 }
413: 
414:                 /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
415:                 public final void invoke2() {
416:                     if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
417:                         return;
418:                     }
419:                     this.this$0.dismissAllowingStateLoss();
420:                 }
421:             };
422:             if (viewL2 != null) {
423:                 c0 c0Var2 = this.dragHelper;
424:                 FrameLayout frameLayout2 = getBinding().f132955b;
425:                 v.i(frameLayout2, "binding.flContainer");
426:                 c0Var2.c(viewL2, frameLayout2);
427:             }
428:         }
429:     }
430: 
431:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
432:     public void _$_clearFindViewByIdCache() {
433:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Void.TYPE).isSupported) {
434:             return;
435:         }
436:         this.f144108k.clear();
437:     }
438: 
439:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
440:     public int getDialogHeight() {
```

## `setting/PartySettingContainerDialog.java:483-552`

```java
483:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
484:     public void onDestroyView() {
485:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Void.TYPE).isSupported) {
486:             return;
487:         }
488:         super.onDestroyView();
489:         this.dragHelper.d();
490:         _$_clearFindViewByIdCache();
491:     }
492: 
493:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
494:     public void onStart() {
495:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
496:             return;
497:         }
498:         super.onStart();
499:         Dialog dialog = getDialog();
500:         if (dialog != null) {
501:             dialog.setCanceledOnTouchOutside(true);
502:             dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.c
503:                 @Override // android.content.DialogInterface.OnKeyListener
504:                 public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
505:                     return PartySettingContainerDialog.n(this.f144167a, dialogInterface, i11, keyEvent);
506:                 }
507:             });
508:             Window window = dialog.getWindow();
509:             if (window != null) {
510:                 window.setSoftInputMode(48);
511:                 window.addFlags(256);
512:             }
513:         }
514:     }
515: 
516:     public final void q() {
517:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported || this.subPageStack.isEmpty()) {
518:             return;
519:         }
520:         getChildFragmentManager().popBackStackImmediate();
521:     }
522: 
523:     public final void s(@NotNull Fragment fragment, @NotNull String tag, boolean z11) {
524:         int i11;
525:         int i12;
526:         if (PatchProxy.proxy(new Object[]{fragment, tag, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 6, new Class[]{Fragment.class, String.class, Boolean.TYPE}, Void.TYPE).isSupported) {
527:             return;
528:         }
529:         v.j(fragment, "fragment");
530:         v.j(tag, "tag");
531:         boolean z12 = fragment instanceof DialogFragment;
532:         if (z12) {
533:             ((DialogFragment) fragment).setShowsDialog(false);
534:         }
535:         if (z11) {
536:             i11 = R$anim.f127051i;
537:             i12 = R$anim.f127053k;
538:         } else {
539:             i11 = R$anim.f127050h;
540:             i12 = R$anim.f127052j;
541:         }
542:         int iCommitAllowingStateLoss = getChildFragmentManager().beginTransaction().setCustomAnimations(i11, 0, 0, i12).add(R$id.Wc, fragment, tag).addToBackStack(tag).commitAllowingStateLoss();
543:         if (z12) {
544:             try {
545:                 Field declaredField = DialogFragment.class.getDeclaredField("mBackStackId");
546:                 declaredField.setAccessible(true);
547:                 declaredField.setInt(fragment, iCommitAllowingStateLoss);
548:             } catch (Exception unused) {
549:             }
550:         }
551:         this.subPageStack.add(new b(tag, z11));
552:     }
```

## `bean/FunctionBean.java:200-221`

```java
200: 
201:     public final boolean isNativeGame() {
202:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Boolean.TYPE);
203:         if (patchProxyResultProxy.isSupported) {
204:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
205:         }
206:         Integer num = this.techType;
207:         return num != null && num.intValue() == 1;
208:     }
209: 
210:     public final boolean isOpened() {
211:         return this.isOpened;
212:     }
213: 
214:     public final boolean isTypeGroup() {
215:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Boolean.TYPE);
216:         if (patchProxyResultProxy.isSupported) {
217:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
218:         }
219:         Integer num = this.type;
220:         return num != null && num.intValue() == 3;
221:     }
```

## `bean/PlayFunctionBean.java:212-245`

```java
212:     public final List<FunctionBean> filterFunctionsByType(@Nullable ArrayList<Integer> types) {
213:         Object next;
214:         Integer bizType;
215:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{types}, this, changeQuickRedirect, false, 4, new Class[]{ArrayList.class}, List.class);
216:         if (patchProxyResultProxy.isSupported) {
217:             return (List) patchProxyResultProxy.result;
218:         }
219:         if (types == null || types.isEmpty()) {
220:             return kotlin.collections.v.m();
221:         }
222:         List<FunctionBean> playSetUpFuncList = getPlaySetUpFuncList();
223:         if (playSetUpFuncList == null) {
224:             return null;
225:         }
226:         ArrayList arrayList = new ArrayList();
227:         Iterator<T> it = types.iterator();
228:         while (it.hasNext()) {
229:             int iIntValue = ((Number) it.next()).intValue();
230:             Iterator<T> it2 = playSetUpFuncList.iterator();
231:             do {
232:                 if (!it2.hasNext()) {
233:                     next = null;
234:                     break;
235:                 }
236:                 next = it2.next();
237:                 bizType = ((FunctionBean) next).getBizType();
238:             } while (!(bizType != null && bizType.intValue() == iIntValue));
239:             FunctionBean functionBean = (FunctionBean) next;
240:             if (functionBean != null) {
241:                 arrayList.add(functionBean);
242:             }
243:         }
244:         return CollectionsKt___CollectionsKt.q1(arrayList);
245:     }
```

## `bean/PlayFunctionBean.java:412-433`

```java
412:     public final List<FunctionBean> sortFunctionsByOpenedState() {
413:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], List.class);
414:         if (patchProxyResultProxy.isSupported) {
415:             return (List) patchProxyResultProxy.result;
416:         }
417:         List<FunctionBean> playSetUpFuncList = getPlaySetUpFuncList();
418:         if (playSetUpFuncList == null || playSetUpFuncList.isEmpty()) {
419:             return playSetUpFuncList;
420:         }
421:         ArrayList arrayList = new ArrayList();
422:         ArrayList arrayList2 = new ArrayList();
423:         for (FunctionBean functionBean : playSetUpFuncList) {
424:             if (functionBean.isOpened() || hasChildOpened(functionBean)) {
425:                 arrayList.add(functionBean);
426:             } else {
427:                 arrayList2.add(functionBean);
428:             }
429:         }
430:         return CollectionsKt___CollectionsKt.q1(CollectionsKt___CollectionsKt.R0(arrayList, arrayList2));
431:     }
432: 
433:     public final void updateFuncOpenState(@Nullable Integer playType, @Nullable Integer groupType, boolean isOpen) {
```

## `bean/PlayFunctionBean.java:440-478`

```java
440: 
441:     public final void updateFuncOpenState(@Nullable DataBus dataBus) {
442:         RoomDataManager roomDataManagerA1;
443:         if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 12, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
444:             return;
445:         }
446:         ArrayList<FunctionBean> arrayList = new ArrayList<>();
447:         filterFuncListOpenState(dataBus, this.playSetups, arrayList);
448:         filterFuncListOpenState(dataBus, this.recPlaySetups, arrayList);
449:         ArrayList<FunctionBean> arrayList2 = this.playSetups;
450:         if (arrayList2 != null) {
451:             Iterator<T> it = arrayList2.iterator();
452:             while (it.hasNext()) {
453:                 ChildPlaySetups childGameSetups = ((FunctionBean) it.next()).getChildGameSetups();
454:                 filterFuncListOpenState(dataBus, childGameSetups != null ? childGameSetups.getPlaySetups() : null, arrayList);
455:             }
456:         }
457:         ArrayList<FunctionBean> arrayList3 = this.recPlaySetups;
458:         if (arrayList3 != null) {
459:             Iterator<T> it2 = arrayList3.iterator();
460:             while (it2.hasNext()) {
461:                 ChildPlaySetups childGameSetups2 = ((FunctionBean) it2.next()).getChildGameSetups();
462:                 filterFuncListOpenState(dataBus, childGameSetups2 != null ? childGameSetups2.getPlaySetups() : null, arrayList);
463:             }
464:         }
465:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
466:         if (soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null) {
467:             return;
468:         }
469:         roomDataManagerA1.f0(arrayList);
470:     }
471: }
```

## `adapter/PlayFunctionAdapter.java:112-154`

```java
112: 
113:     private final void b(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
114:         if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 4, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
115:             return;
116:         }
117:         TextView textView = (TextView) baseViewHolder.getView(R$id.f128179i70);
118:         TextView textView2 = (TextView) baseViewHolder.getView(R$id.f128110h70);
119:         textView.setText(functionBean.getName());
120:         textView2.setText(functionBean.getDesc());
121:     }
122: 
123:     private final void c(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
124:         if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 3, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
125:             return;
126:         }
127:         ImageView imageView = (ImageView) baseViewHolder.getView(R$id.Qp);
128:         if (functionBean.isOpened()) {
129:             ViewExtKt.l(imageView);
130:             imageView.setBackgroundResource(R$drawable.f127122b9);
131:         } else if (!e(functionBean)) {
132:             ViewExtKt.j(imageView);
133:         } else {
134:             ViewExtKt.l(imageView);
135:             imageView.setBackgroundResource(R$drawable.f127101a9);
136:         }
137:     }
138: 
139:     private final void d(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
140:         Integer bizType;
141:         ImageView imageView;
142:         if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 7, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported || cn.mate.android.utils.a.f10639a.d(getContext())) {
143:             return;
144:         }
145:         if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0() && (bizType = functionBean.getBizType()) != null && bizType.intValue() == 500001 && cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.a() && (imageView = (ImageView) baseViewHolder.getViewOrNull(R$id.UK)) != null) {
146:             ViewExtKt.l(imageView);
147:             cn.soulapp.android.chatroom.dynamic.b.c(getContext()).m("https://china-img.soulapp.cn/admin/2024-05-06/74716db0-94ab-49dc-b8ce-5e25fb5bd78c.png").into(imageView);
148:         }
149:         LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R$id.hD);
150:         linearLayout.removeAllViews();
151:         List<String> tagIconUrls = functionBean.getTagIconUrls();
152:         if (tagIconUrls != null) {
153:             for (String str : tagIconUrls) {
154:                 ImageView imageView2 = new ImageView(getContext());
```

## `adapter/PlayFunctionAdapter.java:188-205`

```java
188:     }
189: 
190:     @Override // com.chad.library.adapter.base.BaseQuickAdapter
191:     /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
192:     public void convert(@NotNull BaseViewHolder holder, @NotNull FunctionBean item) {
193:         if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
194:             return;
195:         }
196:         v.j(holder, "holder");
197:         v.j(item, "item");
198:         c(holder, item);
199:         b(holder, item);
200:         a(holder, item);
201:         d(holder, item);
202:     }
203: }
```

## `dialog/RoomPlayFunctionDialog.java:224-243`

```java
224:         if (PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 22, new Class[]{RoomPlayFunctionDialog.class, View.class}, Void.TYPE).isSupported) {
225:             return;
226:         }
227:         kotlin.jvm.internal.v.j(this$0, "this$0");
228:         this$0.dismiss();
229:     }
230: 
231:     @SuppressLint({"ClickableViewAccessibility"})
232:     private final void D() {
233:         List<PlayFunctionTypeBean> classifySetups;
234:         int iA = 0;
235:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], Void.TYPE).isSupported) {
236:             return;
237:         }
238:         PlayFunctionBean playFunctionBean = this.playFunctionBean;
239:         if (playFunctionBean != null && (classifySetups = playFunctionBean.getClassifySetups()) != null) {
240:             iA = cn.soulapp.lib.utils.ext.e.a(classifySetups);
241:         }
242:         if (iA > 0) {
243:             ViewExtKt.l(getBinding().f133247f);
```

## `dialog/RoomPlayFunctionDialog.java:340-386`

```java
340:         ViewExtKt.l(this$0.getBinding().f133249h);
341:     }
342: 
343:     /* JADX INFO: Access modifiers changed from: private */
344:     public final void H() {
345:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], Void.TYPE).isSupported) {
346:             return;
347:         }
348:         if (this.isPlayFuncSelectPopVisible) {
349:             z();
350:         } else {
351:             F();
352:         }
353:     }
354: 
355:     private final void n(PlayFunctionTypeBean playFunctionTypeBean, boolean z11) {
356:         List<FunctionBean> listFilterFunctionsByType;
357:         RoomDataManager roomDataManagerM;
358:         List<FunctionBean> listSortFunctionsByOpenedState;
359:         if (PatchProxy.proxy(new Object[]{playFunctionTypeBean, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 9, new Class[]{PlayFunctionTypeBean.class, Boolean.TYPE}, Void.TYPE).isSupported) {
360:             return;
361:         }
362:         getBinding().f133255n.setText(playFunctionTypeBean.getClassifyName());
363:         z();
364:         Integer classifyType = playFunctionTypeBean.getClassifyType();
365:         String strX = null;
366:         if (classifyType != null && classifyType.intValue() == 0) {
367:             PlayFunctionAdapter playFunctionAdapterV = v();
368:             PlayFunctionBean playFunctionBean = this.playFunctionBean;
369:             playFunctionAdapterV.setNewInstance((playFunctionBean == null || (listSortFunctionsByOpenedState = playFunctionBean.sortFunctionsByOpenedState()) == null) ? null : CollectionsKt___CollectionsKt.t1(listSortFunctionsByOpenedState));
370:         } else {
371:             PlayFunctionAdapter playFunctionAdapterV2 = v();
372:             PlayFunctionBean playFunctionBean2 = this.playFunctionBean;
373:             playFunctionAdapterV2.setNewInstance((playFunctionBean2 == null || (listFilterFunctionsByType = playFunctionBean2.filterFunctionsByType(playFunctionTypeBean.getBizTypes())) == null) ? null : CollectionsKt___CollectionsKt.t1(listFilterFunctionsByType));
374:         }
375:         if (z11) {
376:             Pair[] pairArr = new Pair[5];
377:             DataBus dataBus = this.dataBus;
378:             pairArr[0] = kotlin.m.a("RoomId", dataBus != null ? SoulHouseExtensionKt.O(dataBus) : null);
379:             DataBus dataBus2 = this.dataBus;
380:             pairArr[1] = kotlin.m.a("JoinCode", dataBus2 != null ? SoulHouseExtensionKt.q(dataBus2) : null);
381:             DataBus dataBus3 = this.dataBus;
382:             pairArr[2] = kotlin.m.a("joinUniqueCode", dataBus3 != null ? SoulHouseExtensionKt.u(dataBus3) : null);
383:             DataBus dataBus4 = this.dataBus;
384:             if (dataBus4 != null && (roomDataManagerM = SoulHouseExtensionKt.M(dataBus4)) != null) {
385:                 strX = roomDataManagerM.x();
386:             }
```

## `dialog/RoomPlayFunctionDialog.java:424-474`

```java
424:         List<FunctionBean> listSortFunctionsByOpenedState;
425:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], Void.TYPE).isSupported) {
426:             return;
427:         }
428:         getBinding().f133251j.setLayoutManager(new LinearLayoutManager(requireContext()));
429:         getBinding().f133251j.setAdapter(v());
430:         PlayFunctionAdapter playFunctionAdapterV = v();
431:         PlayFunctionBean playFunctionBean = this.playFunctionBean;
432:         playFunctionAdapterV.setNewInstance((playFunctionBean == null || (listSortFunctionsByOpenedState = playFunctionBean.sortFunctionsByOpenedState()) == null) ? null : CollectionsKt___CollectionsKt.t1(listSortFunctionsByOpenedState));
433:         v().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.x0
434:             @Override // com.chad.library.adapter.base.listener.OnItemClickListener
435:             public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
436:                 RoomPlayFunctionDialog.q(this.f141631a, baseQuickAdapter, view, i11);
437:             }
438:         });
439:     }
440: 
441:     /* JADX INFO: Access modifiers changed from: private */
442:     public static final void q(RoomPlayFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
443:         Integer bizType;
444:         boolean z11 = false;
445:         if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 25, new Class[]{RoomPlayFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
446:             return;
447:         }
448:         kotlin.jvm.internal.v.j(this$0, "this$0");
449:         kotlin.jvm.internal.v.j(adapter, "adapter");
450:         kotlin.jvm.internal.v.j(view, "view");
451:         Object item = adapter.getItem(i11);
452:         FunctionBean functionBean = item instanceof FunctionBean ? (FunctionBean) item : null;
453:         if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0()) {
454:             if (functionBean != null && (bizType = functionBean.getBizType()) != null && bizType.intValue() == 500001) {
455:                 z11 = true;
456:             }
457:             if (z11) {
458:                 cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.f();
459:                 ImageView imageView = (ImageView) view.findViewById(R$id.UK);
460:                 if (imageView != null) {
461:                     ViewExtKt.j(imageView);
462:                 }
463:             }
464:         }
465:         RoomFunctionDialogHelper roomFunctionDialogHelper = this$0.dialogHelper;
466:         if (roomFunctionDialogHelper != null) {
467:             roomFunctionDialogHelper.u(functionBean);
468:         }
469:     }
470: 
471:     private final void r() {
472:         List<PlayFunctionTypeBean> classifySetups;
473:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
474:             return;
```

## `dialog/RoomPlayFunctionDialog.java:506-555`

```java
506:         List<FunctionBean> recentPlayFuncList;
507:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], Void.TYPE).isSupported) {
508:             return;
509:         }
510:         GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 24);
511:         gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog$bindRvRecentPlayFunc$1
512:             public static ChangeQuickRedirect changeQuickRedirect;
513: 
514:             @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
515:             public int getSpanSize(int position) {
516:                 Object[] objArr = {new Integer(position)};
517:                 ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
518:                 Class cls = Integer.TYPE;
519:                 PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 2, new Class[]{cls}, cls);
520:                 if (patchProxyResultProxy.isSupported) {
521:                     return ((Integer) patchProxyResultProxy.result).intValue();
522:                 }
523:                 return new int[][]{new int[]{24, 0, 0, 0}, new int[]{12, 12, 0, 0}, new int[]{9, 6, 9, 0}, new int[]{6, 6, 6, 6}}[this.f141391a.y().getItemCount() - 1][position % this.f141391a.y().getItemCount()];
524:             }
525:         });
526:         getBinding().f133253l.setLayoutManager(gridLayoutManager);
527:         getBinding().f133253l.setAdapter(y());
528:         RecentPlayFunctionAdapter recentPlayFunctionAdapterY = y();
529:         PlayFunctionBean playFunctionBean = this.playFunctionBean;
530:         recentPlayFunctionAdapterY.setNewInstance((playFunctionBean == null || (recentPlayFuncList = playFunctionBean.getRecentPlayFuncList()) == null) ? null : CollectionsKt___CollectionsKt.t1(recentPlayFuncList));
531:         y().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.w0
532:             @Override // com.chad.library.adapter.base.listener.OnItemClickListener
533:             public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
534:                 RoomPlayFunctionDialog.u(this.f141629a, baseQuickAdapter, view, i11);
535:             }
536:         });
537:     }
538: 
539:     /* JADX INFO: Access modifiers changed from: private */
540:     public static final void u(RoomPlayFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
541:         if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 24, new Class[]{RoomPlayFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
542:             return;
543:         }
544:         kotlin.jvm.internal.v.j(this$0, "this$0");
545:         kotlin.jvm.internal.v.j(adapter, "adapter");
546:         kotlin.jvm.internal.v.j(view, "<anonymous parameter 1>");
547:         RoomFunctionDialogHelper roomFunctionDialogHelper = this$0.dialogHelper;
548:         if (roomFunctionDialogHelper != null) {
549:             Object item = adapter.getItem(i11);
550:             roomFunctionDialogHelper.u(item instanceof FunctionBean ? (FunctionBean) item : null);
551:         }
552:     }
553: 
554:     private final PlayFunctionAdapter v() {
555:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], PlayFunctionAdapter.class);
```

## `dialog/RoomPlayFunctionDialog.java:605-650`

```java
605:             return ((Integer) patchProxyResultProxy.result).intValue();
606:         }
607:         return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? R$color.f127064a : R.color.color_282828;
608:     }
609: 
610:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
611:     public int getDialogHeight() {
612:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Integer.TYPE);
613:         if (patchProxyResultProxy.isSupported) {
614:             return ((Integer) patchProxyResultProxy.result).intValue();
615:         }
616:         return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? (int) (MateScreenUtil.f10630a.m() * 0.82f) : ExtensionsKt.dp(526);
617:     }
618: 
619:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
620:     public int getDialogWidth() {
621:         return -1;
622:     }
623: 
624:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
625:     public int getWindowAnimationStyleResId() {
626:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Integer.TYPE);
627:         if (patchProxyResultProxy.isSupported) {
628:             return ((Integer) patchProxyResultProxy.result).intValue();
629:         }
630:         return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? R$style.f130235h : super.getWindowAnimationStyleResId();
631:     }
632: 
633:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
634:     public void initView() {
635:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported) {
636:             return;
637:         }
638:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
639:         this.playFunctionBean = soulHouseDriverJ0 != null ? (PlayFunctionBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null;
640:         this.dialogHelper = new RoomFunctionDialogHelper(this.dataBus, this, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog.initView.1
641:             public static ChangeQuickRedirect changeQuickRedirect;
642: 
643:             {
644:                 super(0);
645:             }
646: 
647:             @Override // kotlin.jvm.functions.Function0
648:             public /* bridge */ /* synthetic */ kotlin.w invoke() {
649:                 invoke2();
650:                 return kotlin.w.f231958a;
```

## `soulhouse/dialog/RoomPlayFunctionSecDialog.java:163-246`

```java
163:             recyclerView.setItemAnimator(null);
164:             recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
165:             PlayFunctionAdapter playFunctionAdapterM = m();
166:             FunctionBean functionBean = this.functionBean;
167:             if (functionBean != null && (childGameSetups = functionBean.getChildGameSetups()) != null && (playSetups = childGameSetups.getPlaySetups()) != null) {
168:                 listT1 = CollectionsKt___CollectionsKt.t1(playSetups);
169:             }
170:             playFunctionAdapterM.setNewInstance(listT1);
171:             recyclerView.setAdapter(m());
172:         }
173:         m().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.l2
174:             @Override // com.chad.library.adapter.base.listener.OnItemClickListener
175:             public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
176:                 RoomPlayFunctionSecDialog.r(this.f149534a, baseQuickAdapter, view, i11);
177:             }
178:         });
179:         n();
180:         q();
181:     }
182: 
183:     private final PlayFunctionAdapter m() {
184:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], PlayFunctionAdapter.class);
185:         return patchProxyResultProxy.isSupported ? (PlayFunctionAdapter) patchProxyResultProxy.result : (PlayFunctionAdapter) this.functionAdapter.getValue();
186:     }
187: 
188:     private final void n() {
189:         FunctionBean functionBean;
190:         ChildPlaySetups childGameSetups;
191:         final List<OperationModel> positionContentResp;
192:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported || (functionBean = this.functionBean) == null || (childGameSetups = functionBean.getChildGameSetups()) == null || (positionContentResp = childGameSetups.getPositionContentResp()) == null) {
193:             return;
194:         }
195:         ScaleConvenientBanner scaleConvenientBanner = new ScaleConvenientBanner(getContext());
196:         scaleConvenientBanner.setLayoutParams(new ViewGroup.LayoutParams(-1, ExtensionsKt.dp(68)));
197:         scaleConvenientBanner.m(false);
198:         scaleConvenientBanner.i(new com.bigkoo.convenientbanner.listener.OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.o2
199:             @Override // com.bigkoo.convenientbanner.listener.OnItemClickListener
200:             public final void onItemClick(int i11) {
201:                 RoomPlayFunctionSecDialog.p(positionContentResp, i11);
202:             }
203:         });
204:         Object context = scaleConvenientBanner.getContext();
205:         LifecycleOwner lifecycleOwner = context instanceof LifecycleOwner ? (LifecycleOwner) context : null;
206:         if (lifecycleOwner != null) {
207:             lifecycleOwner.getLifecycle().addObserver(scaleConvenientBanner);
208:         }
209:         scaleConvenientBanner.l(new CBViewHolderCreator() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.p2
210:             @Override // com.bigkoo.convenientbanner.holder.CBViewHolderCreator
211:             public final Object createHolder() {
212:                 return RoomPlayFunctionSecDialog.o();
213:             }
214:         }, positionContentResp);
215:         scaleConvenientBanner.n(5000L);
216:         BaseQuickAdapter.addHeaderView$default(m(), scaleConvenientBanner, 0, 0, 6, null);
217:     }
218: 
219:     /* JADX INFO: Access modifiers changed from: private */
220:     public static final Object o() {
221:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 15, new Class[0], Object.class);
222:         return patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : new k1();
223:     }
224: 
225:     /* JADX INFO: Access modifiers changed from: private */
226:     public static final void p(List bannerList, int i11) {
227:         if (PatchProxy.proxy(new Object[]{bannerList, new Integer(i11)}, null, changeQuickRedirect, true, 14, new Class[]{List.class, Integer.TYPE}, Void.TYPE).isSupported) {
228:             return;
229:         }
230:         kotlin.jvm.internal.v.j(bannerList, "$bannerList");
231:         String jumpUrl = ((OperationModel) bannerList.get(i11)).getJumpUrl();
232:         if (jumpUrl != null) {
233:             SoulRouter.j().e(jumpUrl).d();
234:         }
235:     }
236: 
237:     private final void q() {
238:         Context context;
239:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported || (context = getContext()) == null) {
240:             return;
241:         }
242:         LinearLayout linearLayout = new LinearLayout(context);
243:         linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, ExtensionsKt.dp(33)));
244:         linearLayout.setGravity(81);
245:         ImageView imageView = new ImageView(context);
246:         LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ExtensionsKt.dp(171), ExtensionsKt.dp(17));
```

## `soulhouse/dialog/RoomPlayFunctionSecDialog.java:316-355`

```java
316: 
317:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
318:     public int getDialogWidth() {
319:         return -1;
320:     }
321: 
322:     @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
323:     public void initView() {
324:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
325:             return;
326:         }
327:         RoomFunctionDialogHelper roomFunctionDialogHelper = new RoomFunctionDialogHelper(this.dataBus, this, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomPlayFunctionSecDialog.initView.1
328:             public static ChangeQuickRedirect changeQuickRedirect;
329: 
330:             {
331:                 super(0);
332:             }
333: 
334:             @Override // kotlin.jvm.functions.Function0
335:             public /* bridge */ /* synthetic */ kotlin.w invoke() {
336:                 invoke2();
337:                 return kotlin.w.f231958a;
338:             }
339: 
340:             /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
341:             public final void invoke2() {
342:                 Function0 function0;
343:                 if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (function0 = RoomPlayFunctionSecDialog.this.dismissCb) == null) {
344:                     return;
345:                 }
346:                 function0.invoke();
347:             }
348:         });
349:         this.dialogHelper = roomFunctionDialogHelper;
350:         roomFunctionDialogHelper.p();
351:         this.recyclerView = getBinding().f133260d;
352:         initRecyclerView();
353:         ImageView imageView = getBinding().f133259c;
354:         imageView.setOnClickListener(new b(imageView, 800L, this));
355:         TextView textView = getBinding().f133261e;
```

## `function/BaseRoomFunction.java:58-139`

```java
58:         boolean z11 = false;
59:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, functionBean, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, FunctionBean.class, Function2.class}, Void.TYPE).isSupported) {
60:             return;
61:         }
62:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
63:         if (!d(dataBus)) {
64:             f(dataBus, fragmentManager, function2);
65:             return;
66:         }
67:         SoulDialog.Companion aVar = SoulDialog.INSTANCE;
68:         SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
69:         attributeConfig.W(SoulDialogType.P35);
70:         if (functionBean != null) {
71:             Integer bizType = functionBean.getBizType();
72:             int iD = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.U.getId();
73:             if (bizType != null && bizType.intValue() == iD) {
74:                 z11 = true;
75:             }
76:         }
77:         if (z11) {
78:             sb2 = new StringBuilder();
79:             sb2.append("确认关闭");
80:             sb2.append(functionBean.getName());
81:             str = "玩法吗？";
82:         } else {
83:             sb2 = new StringBuilder();
84:             sb2.append("确认关闭");
85:             sb2.append(functionBean != null ? functionBean.getName() : null);
86:             str = "吗？";
87:         }
88:         sb2.append(str);
89:         attributeConfig.h0(sb2.toString());
90:         attributeConfig.M("取消");
91:         attributeConfig.S("确认关闭");
92:         attributeConfig.L(true);
93:         attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction$commonClosePlayFuncDialog$1$1
94:             public static ChangeQuickRedirect changeQuickRedirect;
95: 
96:             /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
97:             /* JADX WARN: Multi-variable type inference failed */
98:             {
99:                 super(0);
100:             }
101: 
102:             @Override // kotlin.jvm.functions.Function0
103:             @Nullable
104:             public final kotlin.w invoke() {
105:                 PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
106:                 if (patchProxyResultProxy.isSupported) {
107:                     return (kotlin.w) patchProxyResultProxy.result;
108:                 }
109:                 Function2<Integer, Boolean, kotlin.w> function3 = function2;
110:                 if (function3 == null) {
111:                     return null;
112:                 }
113:                 function3.mo3invoke(1, Boolean.valueOf(this.i()));
114:                 return kotlin.w.f231958a;
115:             }
116:         });
117:         aVar.a(attributeConfig).n(fragmentManager);
118:     }
119: 
120:     public void b(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
121:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
122:             return;
123:         }
124:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
125:         if (!e(dataBus)) {
126:             g(dataBus, fragmentManager, function2);
127:         } else if (function2 != null) {
128:             function2.mo3invoke(2, Boolean.valueOf(i()));
129:         }
130:     }
131: 
132:     public final void c(@Nullable ArrayList<FunctionBean> arrayList, @Nullable final FunctionBean functionBean, @Nullable final DataBus dataBus, @NotNull final FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
133:         if (PatchProxy.proxy(new Object[]{arrayList, functionBean, dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{ArrayList.class, FunctionBean.class, DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
134:             return;
135:         }
136:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
137:         CommonUtil commonUtil = CommonUtil.f161882a;
138:         String name = functionBean != null ? functionBean.getName() : null;
139:         if (name == null) {
```

## `function/BaseRoomFunction.java:160-205`

```java
160:                     return;
161:                 }
162:                 SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
163:                 SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
164:                 FunctionBean functionBean2 = functionBean;
165:                 DataBus dataBus2 = dataBus;
166:                 final Function2<Integer, Boolean, kotlin.w> function3 = function2;
167:                 final BaseRoomFunction baseRoomFunction = this;
168:                 StringBuilder sb2 = new StringBuilder();
169:                 sb2.append("确定切换为【");
170:                 sb2.append(functionBean2 != null ? functionBean2.getName() : null);
171:                 sb2.append("】？");
172:                 attributeConfig.I(sb2.toString());
173:                 attributeConfig.z(CommonUtil.f161882a.D0(dataBus2) ? "提醒：正在进行中的玩法将会被关闭，直接结算" : "提醒：当前正在进行中的玩法将被关闭");
174:                 attributeConfig.w("取消");
175:                 attributeConfig.y("立即切换");
176:                 attributeConfig.A(true);
177:                 attributeConfig.C(true);
178:                 attributeConfig.x(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction$commonSwitchPlayFuncDialog$1$1$1
179:                     public static ChangeQuickRedirect changeQuickRedirect;
180: 
181:                     /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
182:                     /* JADX WARN: Multi-variable type inference failed */
183:                     {
184:                         super(0);
185:                     }
186: 
187:                     @Override // kotlin.jvm.functions.Function0
188:                     @Nullable
189:                     public final kotlin.w invoke() {
190:                         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
191:                         if (patchProxyResultProxy.isSupported) {
192:                             return (kotlin.w) patchProxyResultProxy.result;
193:                         }
194:                         Function2<Integer, Boolean, kotlin.w> function4 = function3;
195:                         if (function4 == null) {
196:                             return null;
197:                         }
198:                         function4.mo3invoke(3, Boolean.valueOf(baseRoomFunction.i()));
199:                         return kotlin.w.f231958a;
200:                     }
201:                 });
202:                 companion.a(attributeConfig).A(fragmentManager);
203:             }
204:         });
205:     }
```

## `function/b0.java:75-85`

```java
75:     private final void D(BaseRoomFunction baseRoomFunction, DataBus dataBus, FunctionBean functionBean, FragmentManager fragmentManager, Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
76:         if (PatchProxy.proxy(new Object[]{baseRoomFunction, dataBus, functionBean, fragmentManager, function2}, this, changeQuickRedirect, false, 4, new Class[]{BaseRoomFunction.class, DataBus.class, FunctionBean.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
77:             return;
78:         }
79:         ArrayList<FunctionBean> arrayListG = ModeConflictConfiguration.f154904a.g(SoulHouseExtensionKt.j0(dataBus), baseRoomFunction.h());
80:         if (arrayListG == null || arrayListG.isEmpty()) {
81:             baseRoomFunction.b(dataBus, fragmentManager, function2);
82:         } else {
83:             baseRoomFunction.c(arrayListG, functionBean, dataBus, fragmentManager, function2);
84:         }
85:     }
```

## `function/b0.java:888-906`

```java
888:                     }
889:                 }
890:             }
891:         } while (!z12);
892:         BaseRoomFunction baseRoomFunction2 = (BaseRoomFunction) next;
893:         if (baseRoomFunction2 == null) {
894:             cn.soulapp.lib.widget.toast.e.u("需更新至最新版本");
895:             return;
896:         }
897:         if (y(functionBean)) {
898:             baseRoomFunction2.b(dataBus, fragmentManager, function2);
899:             return;
900:         }
901:         if (k(dataBus, functionBean != null ? functionBean.getBizType() : null, functionBean != null ? functionBean.getTechType() : null)) {
902:             baseRoomFunction2.a(dataBus, fragmentManager, functionBean, function2);
903:         } else {
904:             D(baseRoomFunction2, dataBus, functionBean, fragmentManager, function2);
905:         }
906:     }
```

## `function/RoomFunctionDialogHelper.java:240-310`

```java
240:         }
241:         kotlin.jvm.internal.v.j(this$0, "this$0");
242:         this$0.k();
243:     }
244: 
245:     public final void p() {
246:         if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
247:             return;
248:         }
249:         m().f().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.x
250:             @Override // androidx.lifecycle.Observer
251:             public final void onChanged(Object obj) {
252:                 RoomFunctionDialogHelper.q(this.f142550a, (RequestResult) obj);
253:             }
254:         });
255:         n().l().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.y
256:             @Override // androidx.lifecycle.Observer
257:             public final void onChanged(Object obj) {
258:                 RoomFunctionDialogHelper.r(this.f142551a, (FunctionBean) obj);
259:             }
260:         });
261:         m().h().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.z
262:             @Override // androidx.lifecycle.Observer
263:             public final void onChanged(Object obj) {
264:                 RoomFunctionDialogHelper.s(this.f142552a, (RequestResult) obj);
265:             }
266:         });
267:         m().g().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.a0
268:             @Override // androidx.lifecycle.Observer
269:             public final void onChanged(Object obj) {
270:                 RoomFunctionDialogHelper.t(this.f142547a, (OperationResult) obj);
271:             }
272:         });
273:     }
274: 
275:     public final void u(@Nullable final FunctionBean functionBean) {
276:         if (PatchProxy.proxy(new Object[]{functionBean}, this, changeQuickRedirect, false, 6, new Class[]{FunctionBean.class}, Void.TYPE).isSupported) {
277:             return;
278:         }
279:         if (functionBean != null && functionBean.isTypeGroup()) {
280:             RoomPlayFunctionSecDialog roomPlayFunctionSecDialogA = RoomPlayFunctionSecDialog.INSTANCE.a(this.dataBus, functionBean, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$openFunction$1
281:                 public static ChangeQuickRedirect changeQuickRedirect;
282: 
283:                 {
284:                     super(0);
285:                 }
286: 
287:                 @Override // kotlin.jvm.functions.Function0
288:                 public /* bridge */ /* synthetic */ kotlin.w invoke() {
289:                     invoke2();
290:                     return kotlin.w.f231958a;
291:                 }
292: 
293:                 /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
294:                 public final void invoke2() {
295:                     if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
296:                         return;
297:                     }
298:                     this.this$0.k();
299:                 }
300:             });
301:             FragmentManager childFragmentManager = l();
302:             kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
303:             roomPlayFunctionSecDialogA.show(childFragmentManager, "RoomPlayFunctionSecDialog");
304:             return;
305:         }
306:         if (o(functionBean)) {
307:             return;
308:         }
309:         b0 b0Var = b0.f142548a;
310:         DataBus dataBus = this.dataBus;
```

## `function/RoomFunctionDialogHelper.java:316-346`

```java
316:             /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
317:             {
318:                 super(2);
319:             }
320: 
321:             @Override // kotlin.jvm.functions.Function2
322:             /* JADX INFO: renamed from: invoke */
323:             public /* bridge */ /* synthetic */ kotlin.w mo3invoke(Integer num, Boolean bool) {
324:                 invoke(num.intValue(), bool.booleanValue());
325:                 return kotlin.w.f231958a;
326:             }
327: 
328:             public final void invoke(int i11, boolean z11) {
329:                 SoulHouseContainer soulHouseContainerP0;
330:                 SoulHouseContainer soulHouseContainerP1;
331:                 if (PatchProxy.proxy(new Object[]{new Integer(i11), new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, Boolean.TYPE}, Void.TYPE).isSupported) {
332:                     return;
333:                 }
334:                 if (i11 == 1) {
335:                     FunctionBean functionBean2 = functionBean;
336:                     Integer bizType = functionBean2 != null ? functionBean2.getBizType() : null;
337:                     int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i.getId();
338:                     if (bizType != null && bizType.intValue() == id2) {
339:                         this.m().c(this.dataBus);
340:                         return;
341:                     }
342:                     int id3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
343:                     if (bizType != null && bizType.intValue() == id3) {
344:                         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
345:                         if (soulHouseDriverJ0 != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
346:                             soulHouseContainerP0.C(BlockMessage.MSG_CREATE_RANDOM_TOPIC);
```

## `mvvm/GameViewModel.java:685-757`

```java
685:     public final void i(@Nullable DataBus dataBus, @Nullable Boolean isOpenMusicalOpened, int id2) {
686:         if (PatchProxy.proxy(new Object[]{dataBus, isOpenMusicalOpened, new Integer(id2)}, this, changeQuickRedirect, false, 8, new Class[]{DataBus.class, Boolean.class, Integer.TYPE}, Void.TYPE).isSupported) {
687:             return;
688:         }
689:         h30.g gVar = h30.g.f225309a;
690:         Pair[] pairArr = new Pair[3];
691:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
692:         pairArr[0] = new Pair("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
693:         pairArr[1] = new Pair("bizType", Integer.valueOf(id2));
694:         pairArr[2] = new Pair("operateType", Integer.valueOf(v.e(isOpenMusicalOpened, Boolean.TRUE) ? 2 : 1));
695:         register((Disposable) gVar.u1(r0.n(pairArr)).subscribeWith(HttpSubscriber.create(new e())));
696:     }
697: 
698:     public final void k(@Nullable DataBus dataBus) {
699:         if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 9, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
700:             return;
701:         }
702:         h30.g gVar = h30.g.f225309a;
703:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
704:         register((Disposable) gVar.e7(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null, 1).subscribeWith(new f(dataBus)));
705:     }
706: 
707:     public final void m(@Nullable DataBus dataBus, @Nullable Integer openType, @Nullable Integer openBizType, @Nullable Map<String, ? extends Object> extParams) {
708:         if (PatchProxy.proxy(new Object[]{dataBus, openType, openBizType, extParams}, this, changeQuickRedirect, false, 12, new Class[]{DataBus.class, Integer.class, Integer.class, Map.class}, Void.TYPE).isSupported) {
709:             return;
710:         }
711:         Pair[] pairArr = new Pair[3];
712:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
713:         pairArr[0] = m.a("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
714:         pairArr[1] = m.a("openType", openType);
715:         pairArr[2] = m.a("openBizType", openBizType);
716:         HashMap mapL = r0.l(pairArr);
717:         if (extParams != null) {
718:             mapL.put("extParams", extParams);
719:         }
720:         register((Disposable) h30.g.f225309a.R9(mapL).subscribeWith(HttpSubscriber.create(new g(dataBus, openBizType))));
721:     }
722: 
723:     public final void o(@Nullable DataBus dataBus, @Nullable Boolean isOpenMusicalOpened) {
724:         if (PatchProxy.proxy(new Object[]{dataBus, isOpenMusicalOpened}, this, changeQuickRedirect, false, 7, new Class[]{DataBus.class, Boolean.class}, Void.TYPE).isSupported) {
725:             return;
726:         }
727:         h30.g gVar = h30.g.f225309a;
728:         Pair[] pairArr = new Pair[2];
729:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
730:         pairArr[0] = new Pair("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
731:         pairArr[1] = new Pair("type", Integer.valueOf(!v.e(isOpenMusicalOpened, Boolean.TRUE) ? 1 : 0));
732:         register((Disposable) gVar.s9(r0.n(pairArr)).subscribeWith(HttpSubscriber.create(new h(isOpenMusicalOpened, dataBus, this))));
733:     }
734: 
735:     public final void p(@Nullable DataBus dataBus, boolean z11, @Nullable String str) {
736:         if (PatchProxy.proxy(new Object[]{dataBus, new Byte(z11 ? (byte) 1 : (byte) 0), str}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, Boolean.TYPE, String.class}, Void.TYPE).isSupported) {
737:             return;
738:         }
739:         Pair[] pairArr = new Pair[3];
740:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
741:         pairArr[0] = m.a("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
742:         pairArr[1] = m.a("playType", str);
743:         pairArr[2] = m.a("operateType", ExtensionsKt.select(z11, "1", "2"));
744:         h30.g.f225309a.a7(r0.l(pairArr)).subscribe(HttpSubscriber.create(new i(z11, dataBus, str)));
745:     }
746: 
747:     public final void q(@Nullable DataBus dataBus, int i11) {
748:         if (PatchProxy.proxy(new Object[]{dataBus, new Integer(i11)}, this, changeQuickRedirect, false, 11, new Class[]{DataBus.class, Integer.TYPE}, Void.TYPE).isSupported) {
749:             return;
750:         }
751:         h30.g gVar = h30.g.f225309a;
752:         Pair[] pairArr = new Pair[3];
753:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
754:         pairArr[0] = new Pair("outerRoomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
755:         pairArr[1] = new Pair("outerRoomType", "chat_live");
756:         pairArr[2] = new Pair("type", Integer.valueOf(i11));
757:         register((Disposable) gVar.ha(r0.n(pairArr)).subscribeWith(HttpSubscriber.create(new j())));
```

## `function/RoomFunctionSwitchManager.java:748-795`

```java
748:         SoulHouseContainer soulHouseContainerP22;
749:         SoulHouseContainer soulHouseContainerP23;
750:         SoulHouseContainer soulHouseContainerP24;
751:         SoulHouseContainer soulHouseContainerP25;
752:         if (PatchProxy.proxy(new Object[]{soulHouseDriver, roomModeInfo, new Byte(z11 ? (byte) 1 : (byte) 0), map, cVar}, this, changeQuickRedirect, false, 2, new Class[]{SoulHouseDriver.class, RoomModeInfo.class, Boolean.TYPE, Map.class, mn0.c.class}, Void.TYPE).isSupported) {
753:             return;
754:         }
755:         Integer playType = roomModeInfo != null ? roomModeInfo.getPlayType() : null;
756:         Integer numValueOf = roomModeInfo != null ? Integer.valueOf(roomModeInfo.getGroupType()) : null;
757:         b0 b0Var = b0.f142548a;
758:         Integer num = numValueOf;
759:         Integer num2 = playType;
760:         b0Var.G(soulHouseDriver, playType, numValueOf, z11, roomModeInfo);
761:         cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R;
762:         int id2 = hVar3.getId();
763:         if (num2 != null && num2.intValue() == id2) {
764:             SoulHouseExtensionKt.w0(this, "RoomFunctionTag", b0Var.g(num2) + "，不需要修改房间的玩法");
765:         } else {
766:             int id3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
767:             if (num2 != null && num2.intValue() == id3) {
768:                 SoulHouseExtensionKt.w0(this, "RoomFunctionTag", b0Var.g(num2) + "，不需要修改房间的玩法");
769:             } else {
770:                 int id4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
771:                 if (num2 != null && num2.intValue() == id4) {
772:                     SoulHouseExtensionKt.w0(this, "RoomFunctionTag", b0Var.g(num2) + "，不需要修改房间的玩法");
773:                 } else {
774:                     f(soulHouseDriver, z11 ? num2 : Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId()), z11 ? num : 1);
775:                 }
776:             }
777:         }
778:         String strC = b0Var.c(soulHouseDriver);
779:         StringBuilder sb2 = new StringBuilder();
780:         sb2.append("收到IM将要");
781:         sb2.append(z11 ? "开启" : "关闭");
782:         sb2.append((char) 65306);
783:         sb2.append(b0Var.g(num2));
784:         sb2.append((char) 65292);
785:         if (strC.length() == 0) {
786:             str = "现在房间没有开启的功能";
787:         } else {
788:             str = "现在房间开启的功能有: " + strC + "，是否是小球状态：" + ZoomOutManager.f144296a.o();
789:         }
790:         sb2.append(str);
791:         SoulHouseExtensionKt.w0(this, "RoomFunctionTag", sb2.toString());
792:         if (ZoomOutManager.f144296a.o() && !z11) {
793:             g(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId()), null, 4, null);
794:         }
795:         cn.soul.insight.log.core.a.f15353b.i("LUK", "RoomFunctionSwitchManager updateFunctionState isOpen=" + z11 + ",playType=" + num2 + ",groupType=" + num);
```

## `function/KTVRoomFunction.java:35-69`

```java
35:     public boolean d(@Nullable DataBus dataBus) {
36:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class}, Boolean.TYPE);
37:         return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : !CommonUtil.f161882a.H1(SoulHouseExtensionKt.j0(dataBus));
38:     }
39: 
40:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
41:     public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
42:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
43:             return;
44:         }
45:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
46:         CommonUtil.f161882a.n2("比赛正在进行中，无法关闭模式，是否结束比赛？", fragmentManager, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.KTVRoomFunction$dealFunctionClose$1
47:             public static ChangeQuickRedirect changeQuickRedirect;
48: 
49:             /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
50:             /* JADX WARN: Multi-variable type inference failed */
51:             {
52:                 super(0);
53:             }
54: 
55:             @Override // kotlin.jvm.functions.Function0
56:             public /* bridge */ /* synthetic */ kotlin.w invoke() {
57:                 invoke2();
58:                 return kotlin.w.f231958a;
59:             }
60: 
61:             /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
62:             public final void invoke2() {
63:                 Function2<Integer, Boolean, kotlin.w> function3;
64:                 if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (function3 = function2) == null) {
65:                     return;
66:                 }
67:                 function3.mo3invoke(1, Boolean.valueOf(this.i()));
68:             }
69:         });
```

## `function/PvpRoomFunction.java:30-80`

```java
30:     public boolean d(@Nullable DataBus dataBus) {
31:         return false;
32:     }
33: 
34:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
35:     public void f(@Nullable final DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
36:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
37:             return;
38:         }
39:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
40:         SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
41:         SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
42:         attributeConfig.I("关闭玩法提醒");
43:         attributeConfig.z("关闭欢乐预言，将导致玩法关闭或提前结算");
44:         attributeConfig.w("确认操作");
45:         attributeConfig.y("再想想");
46:         attributeConfig.A(true);
47:         attributeConfig.C(true);
48:         attributeConfig.u(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.PvpRoomFunction$dealFunctionClose$1$1
49:             public static ChangeQuickRedirect changeQuickRedirect;
50: 
51:             /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
52:             /* JADX WARN: Multi-variable type inference failed */
53:             {
54:                 super(0);
55:             }
56: 
57:             @Override // kotlin.jvm.functions.Function0
58:             @Nullable
59:             public final kotlin.w invoke() {
60:                 cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0 e0Var;
61:                 PvpInfo pvpInfoC;
62:                 PkRoundInfo pkRoundInfo;
63:                 PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
64:                 if (patchProxyResultProxy.isSupported) {
65:                     return (kotlin.w) patchProxyResultProxy.result;
66:                 }
67:                 SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
68:                 if (((soulHouseDriverJ0 == null || (e0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.F())) == null || (pvpInfoC = e0Var.C()) == null || (pkRoundInfo = pvpInfoC.getPkRoundInfo()) == null) ? 0 : pkRoundInfo.getStage()) == 20) {
69:                     ExtensionsKt.toast("玩法已进入助力阶段，请结算后再切换。");
70:                     return kotlin.w.f231958a;
71:                 }
72:                 Function2<Integer, Boolean, kotlin.w> function3 = function2;
73:                 if (function3 == null) {
74:                     return null;
75:                 }
76:                 function3.mo3invoke(1, Boolean.valueOf(this.i()));
77:                 return kotlin.w.f231958a;
78:             }
79:         });
80:         companion.a(attributeConfig).A(fragmentManager);
```

## `function/TurtleSoupRoomFunction.java:26-77`

```java
26:     public boolean e(@Nullable DataBus dataBus) {
27:         return false;
28:     }
29: 
30:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
31:     public void g(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
32:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
33:             return;
34:         }
35:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
36:         if (b0.m(b0.f142548a, dataBus, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n.getId()), null, 4, null)) {
37:             if (function2 != null) {
38:                 function2.mo3invoke(2, Boolean.valueOf(i()));
39:                 return;
40:             }
41:             return;
42:         }
43:         SoulDialog.Companion companion = SoulDialog.INSTANCE;
44:         SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
45:         attributeConfig.W(SoulDialogType.P35);
46:         attributeConfig.h0("是否开启海龟汤游戏？");
47:         attributeConfig.M("下次一定");
48:         attributeConfig.S("确认开启");
49:         attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.TurtleSoupRoomFunction$dealFunctionOpen$1$1
50:             public static ChangeQuickRedirect changeQuickRedirect;
51: 
52:             /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
53:             /* JADX WARN: Multi-variable type inference failed */
54:             {
55:                 super(0);
56:             }
57: 
58:             @Override // kotlin.jvm.functions.Function0
59:             @Nullable
60:             public final kotlin.w invoke() {
61:                 PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
62:                 if (patchProxyResultProxy.isSupported) {
63:                     return (kotlin.w) patchProxyResultProxy.result;
64:                 }
65:                 Function2<Integer, Boolean, kotlin.w> function3 = function2;
66:                 if (function3 == null) {
67:                     return null;
68:                 }
69:                 function3.mo3invoke(2, Boolean.valueOf(this.i()));
70:                 return kotlin.w.f231958a;
71:             }
72:         });
73:         companion.a(attributeConfig).n(fragmentManager);
74:     }
75: 
76:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
77:     @NotNull
```

## `function/HeartBeatRoomFunction.java:40-90`

```java
40:     public boolean d(@Nullable DataBus dataBus) {
41:         HeartBeatModel heartBeatModel;
42:         boolean zIsStartHeartBeatMode = false;
43:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
44:         if (patchProxyResultProxy.isSupported) {
45:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
46:         }
47:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
48:         if (soulHouseDriverJ0 != null && (heartBeatModel = (HeartBeatModel) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b())) != null) {
49:             zIsStartHeartBeatMode = heartBeatModel.isStartHeartBeatMode();
50:         }
51:         return !zIsStartHeartBeatMode;
52:     }
53: 
54:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
55:     public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
56:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
57:             return;
58:         }
59:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
60:         SoulDialog.Companion companion = SoulDialog.INSTANCE;
61:         SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
62:         attributeConfig.W(SoulDialogType.P35);
63:         attributeConfig.h0("心动正在进行中，关闭后心动值与配对结果将不保留");
64:         attributeConfig.M("确认关闭");
65:         attributeConfig.S("取消");
66:         attributeConfig.J(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.HeartBeatRoomFunction$dealFunctionClose$1$1
67:             public static ChangeQuickRedirect changeQuickRedirect;
68: 
69:             /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
70:             /* JADX WARN: Multi-variable type inference failed */
71:             {
72:                 super(0);
73:             }
74: 
75:             @Override // kotlin.jvm.functions.Function0
76:             @Nullable
77:             public final kotlin.w invoke() {
78:                 PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
79:                 if (patchProxyResultProxy.isSupported) {
80:                     return (kotlin.w) patchProxyResultProxy.result;
81:                 }
82:                 Function2<Integer, Boolean, kotlin.w> function3 = function2;
83:                 if (function3 == null) {
84:                     return null;
85:                 }
86:                 function3.mo3invoke(1, Boolean.valueOf(this.i()));
87:                 return kotlin.w.f231958a;
88:             }
89:         });
90:         companion.a(attributeConfig).n(fragmentManager);
```

## `function/j0.java:28-65`

```java
28:     public boolean d(@Nullable DataBus dataBus) {
29:         ThrowingThunderSlice throwingThunderSlice;
30:         ThrowingThunderInfo throwingThunderInfo;
31:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
32:         if (patchProxyResultProxy.isSupported) {
33:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
34:         }
35:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
36:         if (soulHouseDriverJ0 == null || (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null || (throwingThunderInfo = throwingThunderSlice.getThrowingThunderInfo()) == null) {
37:             return false;
38:         }
39:         return throwingThunderInfo.canCloseGame();
40:     }
41: 
42:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
43:     public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
44:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
45:             return;
46:         }
47:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
48:         SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
49:         SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
50:         attributeConfig.F(true);
51:         attributeConfig.I("暂不支持关闭");
52:         attributeConfig.z("当前正在进行冒险之雷玩法，暂不支持关闭，请等本局结束后进行操作");
53:         attributeConfig.v(false);
54:         attributeConfig.H(true);
55:         attributeConfig.y("我知道了");
56:         attributeConfig.C(true);
57:         attributeConfig.A(true);
58:         companion.a(attributeConfig).A(fragmentManager);
59:     }
60: 
61:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
62:     @NotNull
63:     public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
64:         return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154992q;
65:     }
```

## `function/g0.java:47-75`

```java
47:     public boolean d(@Nullable DataBus dataBus) {
48:         SpeedMatchStatus statusDTO;
49:         Integer status;
50:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
51:         if (patchProxyResultProxy.isSupported) {
52:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
53:         }
54:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
55:         SpeedMatchModel speedMatchModel = soulHouseDriverJ0 != null ? (SpeedMatchModel) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.C0()) : null;
56:         if (b0.m(b0.f142548a, dataBus, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154987l.getId()), null, 4, null)) {
57:             return !(speedMatchModel != null && (statusDTO = speedMatchModel.getStatusDTO()) != null && (status = statusDTO.getStatus()) != null && status.intValue() == 1);
58:         }
59:         return true;
60:     }
61: 
62:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
63:     public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
64:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
65:             return;
66:         }
67:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
68:         ExtensionsKt.toast("当前速配进行中，无法关闭速配模式");
69:     }
70: 
71:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
72:     @NotNull
73:     public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
74:         return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154987l;
75:     }
```

## `function/p.java:26-54`

```java
26:     public boolean d(@Nullable DataBus dataBus) {
27:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
28:         if (patchProxyResultProxy.isSupported) {
29:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
30:         }
31:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
32:         MusicMarketInfo musicMarketInfo = soulHouseDriverJ0 != null ? (MusicMarketInfo) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q()) : null;
33:         if (musicMarketInfo == null) {
34:             return true;
35:         }
36:         String songName = musicMarketInfo.getSongName();
37:         return songName == null || songName.length() == 0;
38:     }
39: 
40:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
41:     public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
42:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
43:             return;
44:         }
45:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
46:         ExtensionsKt.toast("有未演唱的歌曲，无法关闭模式");
47:     }
48: 
49:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
50:     @NotNull
51:     public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
52:         return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R;
53:     }
54: }
```

## `function/n0.java:28-56`

```java
28:     public boolean d(@Nullable DataBus dataBus) {
29:         Integer enableClose;
30:         H5PlaySlice h5PlaySlice;
31:         boolean z11 = false;
32:         PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
33:         if (patchProxyResultProxy.isSupported) {
34:             return ((Boolean) patchProxyResultProxy.result).booleanValue();
35:         }
36:         SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
37:         H5PlayGameStatusBean h5PlayGameStatusBean = (soulHouseDriverJ0 == null || (h5PlaySlice = (H5PlaySlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.t())) == null) ? null : h5PlaySlice.getH5PlayGameStatusBean();
38:         if (h5PlayGameStatusBean != null && (enableClose = h5PlayGameStatusBean.getEnableClose()) != null && enableClose.intValue() == 1) {
39:             z11 = true;
40:         }
41:         return !z11;
42:     }
43: 
44:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
45:     public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
46:         if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
47:             return;
48:         }
49:         kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
50:         ExtensionsKt.toast("狼人魅影正在游戏中，不支持切换模式哦");
51:     }
52: 
53:     @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
54:     @NotNull
55:     public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
56:         return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.O;
```
