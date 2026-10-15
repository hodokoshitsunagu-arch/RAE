package h30;

import android.os.Build;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import cn.jpush.android.api.InAppSlotParams;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.middle.platform.newui.UnifyUIStyleManager;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chat.bean.SetCommonResult;
import cn.soulapp.android.chatroom.api.ILiveApi;
import cn.soulapp.android.chatroom.api.IRoomApi;
import cn.soulapp.android.chatroom.bean.AudioAuthInfo;
import cn.soulapp.android.chatroom.bean.ChatRoom;
import cn.soulapp.android.chatroom.bean.CreateChatRoomPreCheckBean;
import cn.soulapp.android.chatroom.bean.CreateGiftConfig;
import cn.soulapp.android.chatroom.bean.CreateRoomModel;
import cn.soulapp.android.chatroom.bean.GroupClassifyDetailBean;
import cn.soulapp.android.chatroom.bean.HotTopicRoomListResp;
import cn.soulapp.android.chatroom.bean.JoinRoomBean;
import cn.soulapp.android.chatroom.bean.MeCardModel;
import cn.soulapp.android.chatroom.bean.PartyGroupOperateModel;
import cn.soulapp.android.chatroom.bean.ReceiveMedalUserBean;
import cn.soulapp.android.chatroom.bean.RoomLimitConfig;
import cn.soulapp.android.chatroom.bean.RoomModel;
import cn.soulapp.android.chatroom.bean.RoomRandomResultBean;
import cn.soulapp.android.chatroom.bean.RoomRandomTopicItemResultBean;
import cn.soulapp.android.chatroom.bean.RoomTopicBean;
import cn.soulapp.android.chatroom.bean.RoomTypeBean;
import cn.soulapp.android.chatroom.bean.RoomerCardModel;
import cn.soulapp.android.chatroom.bean.SoulGiftListModel;
import cn.soulapp.android.chatroom.bean.UpdateRoomTopicBean;
import cn.soulapp.android.chatroom.bean.UserFmAsset;
import cn.soulapp.android.chatroom.bean.UserUsageBean;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.client.component.middle.platform.bean.msg.ChatHistoryMessageBean;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.lib.common.api.common.RequestKey;
import cn.soulapp.android.nawa.api.expression.net.model.NawaExpressionInfo;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.android.square.bean.audio.ChatRoomAudioInfo;
import cn.soulapp.android.square.bean.audio.PartyAudioAuthInfo;
import cn.soulapp.android.square.bean.audio.ShareRoomAudioInfo;
import cn.soulapp.cpnt_voiceparty.CpSeatBean;
import cn.soulapp.cpnt_voiceparty.api.IActivityApi;
import cn.soulapp.cpnt_voiceparty.api.IGroupApi;
import cn.soulapp.cpnt_voiceparty.api.IRoomPlayApi;
import cn.soulapp.cpnt_voiceparty.api.ISoulHouse;
import cn.soulapp.cpnt_voiceparty.api.IVirtualLiveRecordApi;
import cn.soulapp.cpnt_voiceparty.api.IVoiceParty;
import cn.soulapp.cpnt_voiceparty.bean.ActivityCenterEntrance;
import cn.soulapp.cpnt_voiceparty.bean.AgreeJoinGroupResult;
import cn.soulapp.cpnt_voiceparty.bean.AiBackgroundGenerateInfo;
import cn.soulapp.cpnt_voiceparty.bean.AiBackgroundRandomName;
import cn.soulapp.cpnt_voiceparty.bean.AuctionBoxModel;
import cn.soulapp.cpnt_voiceparty.bean.AuctionContentResult;
import cn.soulapp.cpnt_voiceparty.bean.AuctionGiftModel;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkInfo;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkInviteBean;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkMatchInfo;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkPersonalInfo;
import cn.soulapp.cpnt_voiceparty.bean.AuctionRule;
import cn.soulapp.cpnt_voiceparty.bean.AudioEffectModel;
import cn.soulapp.cpnt_voiceparty.bean.BigVipInfo;
import cn.soulapp.cpnt_voiceparty.bean.BistroMusicBean;
import cn.soulapp.cpnt_voiceparty.bean.BistroMusicPanelBean;
import cn.soulapp.cpnt_voiceparty.bean.BistroMusicPickSongResultInfo;
import cn.soulapp.cpnt_voiceparty.bean.BistroMusicSongInfo;
import cn.soulapp.cpnt_voiceparty.bean.BistroMusicSongListInfo;
import cn.soulapp.cpnt_voiceparty.bean.BistroMusicWaitSongInfo;
import cn.soulapp.cpnt_voiceparty.bean.BulletGameInfo;
import cn.soulapp.cpnt_voiceparty.bean.CeremonyReservationList;
import cn.soulapp.cpnt_voiceparty.bean.CeremonyScoreRuleBean;
import cn.soulapp.cpnt_voiceparty.bean.CeremonySubscribeInfo;
import cn.soulapp.cpnt_voiceparty.bean.ChangeJoinModel;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomHisMusicBean;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomMusicBean;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomPopupInfo;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomSongDataModel;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomTopicBean;
import cn.soulapp.cpnt_voiceparty.bean.ClueItem;
import cn.soulapp.cpnt_voiceparty.bean.CollectionPageDataBean;
import cn.soulapp.cpnt_voiceparty.bean.CreateGroupModel;
import cn.soulapp.cpnt_voiceparty.bean.CreateOrJoinPrivateRoomBean;
import cn.soulapp.cpnt_voiceparty.bean.DislikeDataBean;
import cn.soulapp.cpnt_voiceparty.bean.DowngradeRemindModel;
import cn.soulapp.cpnt_voiceparty.bean.FeatureTagModel;
import cn.soulapp.cpnt_voiceparty.bean.FetchLuckBagResultModel;
import cn.soulapp.cpnt_voiceparty.bean.FlowCardBean;
import cn.soulapp.cpnt_voiceparty.bean.FollowRemindListBean;
import cn.soulapp.cpnt_voiceparty.bean.FortuneBagConfigInfo;
import cn.soulapp.cpnt_voiceparty.bean.FortuneBagInfo;
import cn.soulapp.cpnt_voiceparty.bean.FriendsCabinTemplateBean;
import cn.soulapp.cpnt_voiceparty.bean.GameInfo;
import cn.soulapp.cpnt_voiceparty.bean.GiftReinderInfo;
import cn.soulapp.cpnt_voiceparty.bean.GroupChatWidgetBean;
import cn.soulapp.cpnt_voiceparty.bean.GroupInterestTagInfo;
import cn.soulapp.cpnt_voiceparty.bean.GroupMedalConfig;
import cn.soulapp.cpnt_voiceparty.bean.GuidePopBean;
import cn.soulapp.cpnt_voiceparty.bean.GuineaPigInfo;
import cn.soulapp.cpnt_voiceparty.bean.GuineaPigTeamRankingBean;
import cn.soulapp.cpnt_voiceparty.bean.H5PlayGameSettleBean;
import cn.soulapp.cpnt_voiceparty.bean.HeartAdventureBean;
import cn.soulapp.cpnt_voiceparty.bean.HeartBeatGiftInfoBean;
import cn.soulapp.cpnt_voiceparty.bean.HistoryNameModel;
import cn.soulapp.cpnt_voiceparty.bean.HotLuckBagPackModel;
import cn.soulapp.cpnt_voiceparty.bean.IconModel;
import cn.soulapp.cpnt_voiceparty.bean.InterestTagConfigMo;
import cn.soulapp.cpnt_voiceparty.bean.InviteOnlineFriendCandidateResp;
import cn.soulapp.cpnt_voiceparty.bean.JoinRoomConfirmBean;
import cn.soulapp.cpnt_voiceparty.bean.KtvAudioRecordDataBean;
import cn.soulapp.cpnt_voiceparty.bean.KtvAudioUploadPreCheckModel;
import cn.soulapp.cpnt_voiceparty.bean.KtvBeatGameHandleBean;
import cn.soulapp.cpnt_voiceparty.bean.KtvChallengeDataBean;
import cn.soulapp.cpnt_voiceparty.bean.KtvLampSignAiInfo;
import cn.soulapp.cpnt_voiceparty.bean.KtvLampSignListInfo;
import cn.soulapp.cpnt_voiceparty.bean.KtvMatchToolOldBean;
import cn.soulapp.cpnt_voiceparty.bean.KtvPlaySongDetail;
import cn.soulapp.cpnt_voiceparty.bean.KtvPlaySongModel;
import cn.soulapp.cpnt_voiceparty.bean.KtvPlaySongResult;
import cn.soulapp.cpnt_voiceparty.bean.KtvRecordMaterielData;
import cn.soulapp.cpnt_voiceparty.bean.KtvScoreLevelBean;
import cn.soulapp.cpnt_voiceparty.bean.KtvSearchAssociativeModel;
import cn.soulapp.cpnt_voiceparty.bean.KtvSimpleSongModel;
import cn.soulapp.cpnt_voiceparty.bean.KtvTab;
import cn.soulapp.cpnt_voiceparty.bean.KtvZoneInfo;
import cn.soulapp.cpnt_voiceparty.bean.LiveRoomDetailModel;
import cn.soulapp.cpnt_voiceparty.bean.LuckBagModel;
import cn.soulapp.cpnt_voiceparty.bean.LuckBagPackModel;
import cn.soulapp.cpnt_voiceparty.bean.MatchListJsonBean;
import cn.soulapp.cpnt_voiceparty.bean.MicroSkinInfo;
import cn.soulapp.cpnt_voiceparty.bean.MusicRecommendRoomBean;
import cn.soulapp.cpnt_voiceparty.bean.MyAtmosBagModel;
import cn.soulapp.cpnt_voiceparty.bean.MyGeneratedDataModel;
import cn.soulapp.cpnt_voiceparty.bean.OnlineUserModel;
import cn.soulapp.cpnt_voiceparty.bean.OperationResult;
import cn.soulapp.cpnt_voiceparty.bean.OptFavoriteMusicBean;
import cn.soulapp.cpnt_voiceparty.bean.PartyAudioReqTokenBean;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.PushJoinOrLandingResponse;
import cn.soulapp.cpnt_voiceparty.bean.PvpAssistancePanelConfigurationModel;
import cn.soulapp.cpnt_voiceparty.bean.PvpInfo;
import cn.soulapp.cpnt_voiceparty.bean.QuickJoinRoomBean;
import cn.soulapp.cpnt_voiceparty.bean.RandomRecBean;
import cn.soulapp.cpnt_voiceparty.bean.RecSwitchBean;
import cn.soulapp.cpnt_voiceparty.bean.RecallBean;
import cn.soulapp.cpnt_voiceparty.bean.RecommendRoomBean;
import cn.soulapp.cpnt_voiceparty.bean.RecommendSettingModel;
import cn.soulapp.cpnt_voiceparty.bean.RecommendTabDataBean;
import cn.soulapp.cpnt_voiceparty.bean.RelationUserRecEnvelope;
import cn.soulapp.cpnt_voiceparty.bean.ReqTokenBean;
import cn.soulapp.cpnt_voiceparty.bean.RequestAResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestMsgResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestOperationResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestPageResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RobBluePacketInfo;
import cn.soulapp.cpnt_voiceparty.bean.RoomAuctionInfo;
import cn.soulapp.cpnt_voiceparty.bean.RoomBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomCeremonyInfo;
import cn.soulapp.cpnt_voiceparty.bean.RoomConfigBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomCreateParams;
import cn.soulapp.cpnt_voiceparty.bean.RoomGuideUserListDataBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomLowQualityBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomModeInfo;
import cn.soulapp.cpnt_voiceparty.bean.RoomRecActionResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomRecModel;
import cn.soulapp.cpnt_voiceparty.bean.RoomRecStatusData;
import cn.soulapp.cpnt_voiceparty.bean.RoomRecTopicTipBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomRelationBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomTransferCheckData;
import cn.soulapp.cpnt_voiceparty.bean.ScoreHistory;
import cn.soulapp.cpnt_voiceparty.bean.SearchEmptyRecData;
import cn.soulapp.cpnt_voiceparty.bean.SearchSuggestBean;
import cn.soulapp.cpnt_voiceparty.bean.SendGiftForMicroResult;
import cn.soulapp.cpnt_voiceparty.bean.SetManagerModel;
import cn.soulapp.cpnt_voiceparty.bean.SideslipRoomModel;
import cn.soulapp.cpnt_voiceparty.bean.SlideRoomBean;
import cn.soulapp.cpnt_voiceparty.bean.SongListName;
import cn.soulapp.cpnt_voiceparty.bean.SoupLabelResult;
import cn.soulapp.cpnt_voiceparty.bean.SoupResult;
import cn.soulapp.cpnt_voiceparty.bean.SpeedMatchModel;
import cn.soulapp.cpnt_voiceparty.bean.SpeedMatchUpdateResult;
import cn.soulapp.cpnt_voiceparty.bean.SpeedMatchUserModel;
import cn.soulapp.cpnt_voiceparty.bean.StartGameBean;
import cn.soulapp.cpnt_voiceparty.bean.StudyRoomInfo;
import cn.soulapp.cpnt_voiceparty.bean.StudyRoomTopicPanelInfo;
import cn.soulapp.cpnt_voiceparty.bean.SupplyStationModel;
import cn.soulapp.cpnt_voiceparty.bean.UserListResult;
import cn.soulapp.cpnt_voiceparty.bean.UserSendListModel;
import cn.soulapp.cpnt_voiceparty.bean.VisitCardStateBean;
import cn.soulapp.cpnt_voiceparty.bean.VisitHistoryRecordBean;
import cn.soulapp.cpnt_voiceparty.bean.VisitRecordBean;
import cn.soulapp.cpnt_voiceparty.bean.VoicePartyRetainBean;
import cn.soulapp.cpnt_voiceparty.bean.VoiceRecognizeData;
import cn.soulapp.cpnt_voiceparty.bean.WelcomeBean;
import cn.soulapp.cpnt_voiceparty.bean.WonderfulStoreGiftInfo;
import cn.soulapp.cpnt_voiceparty.bean.WonderfulStoreUserInfo;
import cn.soulapp.cpnt_voiceparty.bean.WushuangMedalRecordModel;
import cn.soulapp.cpnt_voiceparty.bean.creatorx.CreatorxGiftPriceConfig;
import cn.soulapp.cpnt_voiceparty.bean.creatorx.CreatorxKeywordsConfig;
import cn.soulapp.cpnt_voiceparty.followtab.bean.TabInfo;
import cn.soulapp.cpnt_voiceparty.highlightrecord.bean.ChatLiveVideoRecordPageModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelieveConfigData;
import cn.soulapp.cpnt_voiceparty.melancholy.RelieveEndModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelieveOnlineModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelievePanelModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelieveRenewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.aipodcast.AiPodCastQuestionDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.ClimateConfigModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.ClimateGenerateModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.ClimateRandomPromptModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.audio.VoiceTransHelper;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.AdvertisingBoardModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.AvatarShelfResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BoardOnlineUserModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BoardTopicModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.ConfirmOpenMicroModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.FirstChargeTaskModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PartyAssistantModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PkModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PkRuleConfig;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PreJoinCheckModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PurchaseAtmosphereInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RedEnvelopeModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.ReportModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RoomAtmosphereConfigListModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RoomConfigListModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.SimpleUser;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.SoulLiveHouseEntranceModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.VirtualLiveNawaModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.VirtualLivePanelModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.WallAvatarModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.friendscabin.bean.FriendsCabinInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.game.p003private.GamePrivateConfigBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.gamematch.GameCategoryBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.gamematch.GameCategoryConfigBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.gamematch.GameMatchResultModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.KtvAudioUploadInfoDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.KtvBeatDetailBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.KtvDressUpTheMallProduceDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.KtvDressUpTheMallTypeBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.KtvGiftConfigList;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.KtvSpecialEffectInfoBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktv.bean.MyDressUpProduceDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktvmodel.KtvRandomPlayRemainBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.left.banner.bean.CommercialBannerDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketAddedSongListBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketBaseBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketChooseSongTypeBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketContractBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketContractGiftBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketSingerBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketSongListBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.othergame.LukCodeResponse;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionIntroResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionPanel;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionSwitchConst;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionVoteResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.qubaoshow.bean.QubaoGiftListBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.qubaoshow.bean.QubaoShowInfoDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.redpack.RedPackInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.singingroom.record.bean.VirtualLiveCanRecordDTO;
import cn.soulapp.cpnt_voiceparty.soulhouse.singingroom.record.bean.VirtualLiveRecordDTO;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachineInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachinePlayInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.SongListNetBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.SongMachineFreeCountDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.SongMachineTab;
import cn.soulapp.cpnt_voiceparty.soulhouse.soofungame.bean.SooFunCodeInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.unparalleledlevel.SendRecordModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.unparalleledlevel.UnparalleledLevelCardInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.MusicMarketInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.bottom.emoji.bean.ExpressionResourceInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.bottom.emoji.bean.RoomExpressionInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.bottom.emoji.bean.VirtualButlerExpressionModel;
import cn.soulapp.cpnt_voiceparty.util.AnyExtKt;
import cn.soulapp.cpnt_voiceparty.widget.friendcabinbanner.FriendCabinRelationStarScoreData;
import cn.soulapp.imlib.utils.j;
import com.alipay.alipaysecuritysdk.common.config.Constant;
import com.baidu.platform.comapi.map.MapBundleKey;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.dtf.face.api.IDTFacade;
import com.facebook.react.uimanager.ViewProps;
import com.ishumei.smantifraud.l111l1111llIl;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.component.componentlib.service.voiceparty.GroupMedalListModel;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.soulapp.soulgift.bean.CommonDataBo;
import com.soulapp.soulgift.bean.NewFoolishGiftInfo;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.tencent.open.SocialConstants;
import com.tencent.smtt.sdk.TbsListener;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.umeng.analytics.pro.bt;
import com.walid.rxretrofit.HttpSubscriber;
import com.walid.rxretrofit.interfaces.SimpleHttpCallback;
import com.walid.rxretrofit.obserable.RxSchedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.q0;
import kotlin.collections.r0;
import kotlin.jvm.internal.v;
import kotlin.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.LightConstants;
import retrofit2.http.Body;
import retrofit2.http.Query;
import ty.s;

/* JADX INFO: compiled from: SoulHouseApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000²\u000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\bÎ\b\u0010Ï\bJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001c\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002JX\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002J,\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011J\u0082\u0001\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u00070\u00062\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u00112\b\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010!\u001a\u00020\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002J[\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010'\u001a\u00020\u00112\b\u0010(\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b+\u0010,J0\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010(\u001a\u0004\u0018\u00010\u00022\b\u0010)\u001a\u0004\u0018\u00010\u0002J#\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0\u00070\u00062\b\u0010&\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b/\u00100J\u0012\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0\u00070\u0006J&\u00104\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u000103\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\"\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000206050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J*\u0010:\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000209050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u00108\u001a\u00020\u0011J.\u0010>\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010?\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JY\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\bD\u0010EJ.\u0010F\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002JB\u0010I\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010H\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u0002J,\u0010J\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010H\u001a\u0004\u0018\u00010\u0002J*\u0010L\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010K\u001a\u00020\u0011J.\u0010M\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010N\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010O\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010P\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J6\u0010S\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020R020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010Q\u001a\u0004\u0018\u00010\u00022\b\u0010H\u001a\u0004\u0018\u00010\u0002J&\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020T0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J(\u0010V\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020T0\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010W\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010X\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010[\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Z0\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b[\u0010\\J&\u0010]\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Z0\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001c\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020^0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J&\u0010b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020a0\u00070\u00062\b\u0010`\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\"\u0010c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0012\u0010e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020d0\u00070\u0006J-\u0010h\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010f\u001a\u0004\u0018\u00010\u000e2\b\u0010g\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\bh\u0010iJ7\u0010k\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010`\u001a\u0004\u0018\u00010\u00022\b\u0010j\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\bk\u0010lJ\"\u0010o\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020n0m0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J,\u0010p\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J0\u0010r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00022\u0006\u0010q\u001a\u00020\u0002J.\u0010s\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J&\u0010v\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020u0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010t\u001a\u0004\u0018\u00010\u0002J?\u0010{\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020z0y0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010w\u001a\u0004\u0018\u00010\u00112\b\u0010x\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b{\u0010|J\u001a\u0010}\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J(\u0010~\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010q\u001a\u00020\u0011J8\u0010\u0081\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010w\u001a\u00020\u00112\b\b\u0002\u0010\u007f\u001a\u00020\bJB\u0010\u0085\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00112\u000b\b\u0002\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J7\u0010\u0087\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u000b\b\u0002\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00112\u000b\b\u0002\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J2\u0010\u008a\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0089\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\b\u008a\u0001\u0010\\J\u0014\u0010\u008c\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008b\u00010\u00070\u0006J\u0014\u0010\u008e\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008d\u00010\u00070\u0006J)\u0010\u0091\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0090\u00010\u00070\u00062\u000b\b\u0002\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\b\u0091\u0001\u00100J\u0013\u0010\u0092\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\u00070\u0006J\u0016\u0010\u0094\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0093\u00010\u00070\u0006J\u001c\u0010\u0096\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0007\u0010\u0095\u0001\u001a\u00020\u0002J\u0014\u0010\u0098\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0097\u00010\u00070\u0006J\u001c\u0010\u009a\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0099\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J\u001c\u0010\u009c\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009b\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J-\u0010\u009d\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J/\u0010\u009e\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010\u009f\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001d\u0010¡\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030 \u00010\u00070\u00062\u0007\u0010\u008f\u0001\u001a\u00020\u0011J2\u0010¥\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¤\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¢\u0001\u001a\u00020\u00022\u0007\u0010£\u0001\u001a\u00020\u0002J(\u0010§\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010q\u001a\u0004\u0018\u00010\u0002JD\u0010©\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010q\u001a\u00020\u00022\t\u0010¨\u0001\u001a\u0004\u0018\u00010\u00112\b\u0010G\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b©\u0001\u0010ª\u0001J\u001e\u0010¬\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030«\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J0\u0010®\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00ad\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J0\u0010¯\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00ad\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J(\u0010°\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010q\u001a\u0004\u0018\u00010\u0002J\u001e\u0010²\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030±\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001e\u0010´\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030³\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001e\u0010¶\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\t\u0010µ\u0001\u001a\u0004\u0018\u00010\u0002J*\u0010¸\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030·\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010¹\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010·\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J5\u0010»\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010º\u0001\u001a\u0004\u0018\u00010\u0002J3\u0010¾\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030½\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\u00022\t\u0010¼\u0001\u001a\u0004\u0018\u00010\u0002J\u001e\u0010¿\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J)\u0010Á\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030À\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¼\u0001\u001a\u0004\u0018\u00010\u0002J*\u0010Â\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010Ã\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010Ä\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J4\u0010Æ\u0001\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010Å\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J4\u0010Ç\u0001\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010Å\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001f\u0010Ê\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030É\u00010\u00070\u00062\t\u0010È\u0001\u001a\u0004\u0018\u00010\u0002J*\u0010Ë\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030·\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010Ì\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010Í\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J:\u0010Î\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010A\u001a\u0004\u0018\u00010\u00022\b\u0010q\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\bÎ\u0001\u0010|J4\u0010Ñ\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\t\u0010Ï\u0001\u001a\u0004\u0018\u00010\u00022\t\u0010Ð\u0001\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J&\u0010Ó\u0001\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030Ò\u0001\u0018\u00010m0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J+\u0010Õ\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ô\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¼\u0001\u001a\u0004\u0018\u00010\u0002J+\u0010Ö\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ô\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¼\u0001\u001a\u0004\u0018\u00010\u0002J \u0010Ø\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010×\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010Ú\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ù\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J5\u0010Ü\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ù\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u00022\t\u0010Û\u0001\u001a\u0004\u0018\u00010\u0002JC\u0010ä\u0001\u001a\u00030ã\u00012\b\u0010Þ\u0001\u001a\u00030Ý\u00012\t\u0010ß\u0001\u001a\u0004\u0018\u00010\u00022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00112\u0011\u0010â\u0001\u001a\f\u0012\u0005\u0012\u00030á\u0001\u0018\u00010à\u0001J.\u0010æ\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030å\u00010\u00070\u00062\u0018\u0010<\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010;J?\u0010è\u0001\u001a\u00030ã\u00012\b\u0010Þ\u0001\u001a\u00030Ý\u00012\u0018\u0010<\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010;2\u0011\u0010â\u0001\u001a\f\u0012\u0005\u0012\u00030ç\u0001\u0018\u00010à\u0001J1\u0010é\u0001\u001a\u00030ã\u00012\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;2\u0011\u0010â\u0001\u001a\f\u0012\u0005\u0012\u00030¦\u0001\u0018\u00010à\u0001J1\u0010ë\u0001\u001a\u00030ã\u00012\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;2\u0011\u0010â\u0001\u001a\f\u0012\u0005\u0012\u00030ê\u0001\u0018\u00010à\u0001J.\u0010ì\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¦\u00010\u00070\u00062\u0016\u0010<\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010ï\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030î\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010í\u0001\u001a\u0004\u0018\u00010\u0002J\u001d\u0010ð\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J)\u0010ó\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ò\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010ñ\u0001\u001a\u0004\u0018\u00010\u0002J\u0014\u0010õ\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ô\u00010\u00070\u0006J\u0014\u0010÷\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ö\u00010\u00070\u0006J(\u0010ù\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ø\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J$\u0010û\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00010ú\u00010\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0002J!\u0010ý\u0001\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ü\u00010m0ú\u00010\u00070\u0006J$\u0010þ\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00010ú\u00010\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0002J\u001d\u0010ÿ\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Z0\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0002J&\u0010\u0080\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010q\u001a\u00020\u0011J1\u0010\u0082\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010\u0081\u0002\u001a\u00020\u00112\b\u0010G\u001a\u0004\u0018\u00010\u0002J3\u0010\u0084\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010q\u001a\u00020\u00112\u000b\b\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u0086\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0085\u00020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u0088\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0087\u00020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J'\u0010\u0089\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010\u0081\u0002\u001a\u00020\u0011J+\u0010\u008a\u0002\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020m020\u00070\u00062\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0013\u0010\u008b\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00070\u0006J1\u0010\u008f\u0002\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ø\u00010\u00070\u00062\u0007\u0010\u008c\u0002\u001a\u00020\u00112\u0007\u0010\u008d\u0002\u001a\u00020\u00112\u0007\u0010\u008e\u0002\u001a\u00020\u0011J/\u0010\u0090\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\"\u0010\u0092\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0091\u0002020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J*\u0010\u0094\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J*\u0010\u0098\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0097\u00020\u00070\u00062\t\u0010\u0095\u0002\u001a\u0004\u0018\u00010\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u0002J+\u0010\u009a\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0099\u00020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J2\u0010\u009b\u0002\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010\u009c\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0099\u00020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J2\u0010\u009d\u0002\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J2\u0010\u009e\u0002\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J2\u0010\u009f\u0002\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010 \u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0099\u00020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J*\u0010¢\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¡\u00020\u00070\u00062\t\u0010\u0095\u0002\u001a\u0004\u0018\u00010\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u0002J3\u0010¥\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¤\u00020\u00070\u00062\t\u0010\u0095\u0002\u001a\u0004\u0018\u00010\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u00022\u0007\u0010£\u0002\u001a\u00020\u0011J+\u0010¦\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¤\u00020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J0\u0010§\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J0\u0010¨\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J0\u0010©\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J\u001f\u0010ª\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¤\u00020\u00070\u00062\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u0002J\u001f\u0010«\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¤\u00020\u00070\u00062\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u0002J+\u0010¬\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0099\u00020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J;\u0010¯\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010\u00ad\u0002\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00022\u0007\u0010®\u0002\u001a\u00020\u000eJ$\u0010±\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030°\u0002020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J4\u0010´\u0002\u001a\u00030ã\u00012\b\u0010Þ\u0001\u001a\u00030Ý\u00012\u0007\u0010²\u0002\u001a\u00020\u00022\u0017\u0010â\u0001\u001a\u0012\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030³\u00020m\u0018\u00010à\u0001J0\u0010µ\u0002\u001a\u00030ã\u00012\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;2\u0010\u0010â\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010à\u0001J\u001a\u0010·\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¶\u00020y0\u00070\u0006J>\u0010»\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030º\u00020y0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¸\u0002\u001a\u00020\u000e2\u0007\u0010¹\u0002\u001a\u00020\u000e2\u0006\u0010q\u001a\u00020\u0011J\u001c\u0010½\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¼\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J%\u0010¿\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010¾\u0002\u001a\u00020\u0002J7\u0010Ã\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0007\u0010À\u0002\u001a\u00020\u00022\u0007\u0010Á\u0002\u001a\u00020\u00022\u0007\u0010Â\u0002\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J9\u0010Å\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\t\u0010¹\u0002\u001a\u0004\u0018\u00010\u000e2\u0007\u0010Ä\u0002\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0006\bÅ\u0002\u0010Æ\u0002J8\u0010Ê\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¼\u00020\u00070\u00062\u0007\u0010Ç\u0002\u001a\u00020\u00112\u0007\u0010È\u0002\u001a\u00020\u00112\u0007\u0010É\u0002\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u0002J$\u0010Ë\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010q\u001a\u00020\u0011J%\u0010Ì\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010¹\u0002\u001a\u00020\u000eJ%\u0010Í\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010¸\u0002\u001a\u00020\u000eJ1\u0010Î\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000e2\b\u0010G\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÎ\u0002\u0010Ï\u0002J\"\u0010Ñ\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ð\u00020y0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J\u0014\u0010Ó\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ò\u00020\u00070\u0006J\u0014\u0010Õ\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ô\u00020\u00070\u0006J1\u0010×\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ö\u0002020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J\u001f\u0010Ú\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ù\u00020\u00070\u00062\t\u0010Ø\u0002\u001a\u0004\u0018\u00010\u0002J7\u0010Ý\u0002\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\t\u0010Û\u0002\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010Ü\u0002\u001a\u0004\u0018\u00010\u0002J\u001e\u0010ß\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Þ\u00020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J0\u0010á\u0002\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010à\u0002\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020\u0011J\u0014\u0010ã\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030â\u00020\u00070\u0006J2\u0010æ\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030å\u00020\u00070\u00062\t\u0010ä\u0002\u001a\u0004\u0018\u00010\u00112\b\u0010\u001e\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\bæ\u0002\u0010\u0088\u0001J+\u0010è\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ç\u00020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J$\u0010ê\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030é\u00020m0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J/\u0010ì\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ë\u00020y0\u00070\u00062\u000b\b\u0002\u0010²\u0002\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\bì\u0002\u00100J(\u0010ð\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ï\u0002020\u00070\u00062\f\b\u0001\u0010î\u0002\u001a\u0005\u0018\u00010í\u0002J\u001f\u0010ò\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ñ\u00020\u00070\u00062\t\u0010\u00ad\u0002\u001a\u0004\u0018\u00010\u0002J\u001f\u0010ó\u0002\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ñ\u00020\u00070\u00062\t\u0010\u00ad\u0002\u001a\u0004\u0018\u00010\u0002J\u0016\u0010õ\u0002\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ô\u00020\u00070\u0006J/\u0010ø\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b020\u00070\u00062\t\u0010ö\u0002\u001a\u0004\u0018\u00010\u00022\t\u0010÷\u0002\u001a\u0004\u0018\u00010\u0002J\u0018\u0010ú\u0002\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010ù\u0002\u0018\u00010\u00070\u0006J,\u0010ü\u0002\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010û\u0002\u001a\u0004\u0018\u00010\u0002J,\u0010ý\u0002\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010È\u0001\u001a\u0004\u0018\u00010\u0002J \u0010ÿ\u0002\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010þ\u00020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J-\u0010\u0081\u0003\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u0003\u0018\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J \u0010\u0083\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0082\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010\u0085\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0084\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J1\u0010\u0086\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0082\u0003020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010\u0087\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010\u0089\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00030\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010\u008a\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J\u001e\u0010\u008c\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008b\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J}\u0010\u0092\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0091\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010\u008d\u0003\u001a\u0004\u0018\u00010\u00112\b\u0010'\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u008e\u0003\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u008f\u0003\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u0090\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b\u0092\u0003\u0010\u0093\u0003J-\u0010\u0094\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010q\u001a\u0004\u0018\u00010\u0002J%\u0010\u0095\u0003\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0011020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J-\u0010\u0096\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J-\u0010\u0098\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00030\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010\u0099\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010\u009a\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J\u001a\u0010\u009c\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009b\u00030m0\u00070\u0006J*\u0010\u009d\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010\u009e\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010\u009f\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001f\u0010 \u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J-\u0010¢\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¡\u00030\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J6\u0010¤\u0003\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010£\u0003\u0018\u00010\u00070\u00062\t\u0010²\u0002\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0016\u001a\u00020\u0011¢\u0006\u0006\b¤\u0003\u0010¥\u0003J\u0016\u0010§\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¦\u00030\u00070\u0006J4\u0010¨\u0003\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010£\u0003\u0018\u00010\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u0011¢\u0006\u0006\b¨\u0003\u0010¥\u0003J\u0016\u0010ª\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010©\u00030\u00070\u0006J1\u0010«\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00010\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011J\u0016\u0010¬\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00010\u00070\u0006J\u001d\u0010\u00ad\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0002J$\u0010¯\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010®\u0003\u001a\u0004\u0018\u00010\u0002J$\u0010°\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010®\u0003\u001a\u0004\u0018\u00010\u0002J)\u0010±\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J.\u0010³\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030²\u0003020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010x\u001a\u0004\u0018\u00010\u0002J\u001a\u0010µ\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030´\u00030m0\u00070\u0006J-\u0010¶\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J-\u0010·\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J/\u0010¸\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010¹\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010º\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J-\u0010½\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¼\u0003020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010»\u0003\u001a\u00020\u0011J0\u0010À\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¿\u00030\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\t\u0010¾\u0003\u001a\u0004\u0018\u00010\u00022\u0007\u0010»\u0003\u001a\u00020\u0011JD\u0010Á\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010»\u0003\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\bÁ\u0003\u0010|J)\u0010Â\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010Ã\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JD\u0010Å\u0003\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\t\u0010Ä\u0003\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\bÅ\u0003\u0010lJ0\u0010Æ\u0003\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010Ð\u0001\u001a\u0004\u0018\u00010\u0002J*\u0010È\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ç\u00030\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001f\u0010Ê\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030É\u00030\u00070\u00062\t\u0010²\u0002\u001a\u0004\u0018\u00010\u0002JY\u0010Î\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Í\u00030\u00070\u00062\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010Ë\u0003\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010Ì\u0003\u001a\u0004\u0018\u00010\u00112\u000b\b\u0002\u0010ä\u0002\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u007f\u001a\u00020\b¢\u0006\u0006\bÎ\u0003\u0010Ï\u0003J*\u0010Ð\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J(\u0010Ñ\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\u0002J7\u0010Ô\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ó\u0003020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010Ò\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010q\u001a\u00020\u0011J$\u0010Ö\u0003\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Õ\u0003020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J/\u0010×\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J>\u0010Ù\u0003\u001a#\u0012\u001f\u0012\u001d\u0012\u0019\u0012\u0017\u0012\u0013\u0012\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010Ø\u0003020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J<\u0010Ü\u0003\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010Û\u0003\u0018\u0001020\u00070\u00062\u001c\u0010<\u001a\u0018\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u0003\u0018\u00010;J*\u0010Þ\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ý\u00030\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J4\u0010à\u0003\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010ß\u0003\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001e\u0010â\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030á\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J/\u0010ã\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010å\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ä\u00030\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J)\u0010æ\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001e\u0010è\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ç\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002JH\u0010ë\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ê\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010é\u0003\u001a\u0004\u0018\u00010\u00112\b\u0010(\u001a\u0004\u0018\u00010\u00022\b\u0010)\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bë\u0003\u0010ì\u0003J+\u0010î\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030í\u00030\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J+\u0010ð\u0003\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ï\u00030\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J0\u0010ñ\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J/\u0010ò\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010ó\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010ô\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J2\u0010ö\u0003\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010õ\u0003020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J2\u0010÷\u0003\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010õ\u0003020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J \u0010ù\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ø\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J:\u0010ú\u0003\u001a\u001f\u0012\u001b\u0012\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010Ø\u00030\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010û\u0003\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JI\u0010þ\u0003\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ý\u00030\u00070\u00062\b\u0010q\u001a\u0004\u0018\u00010\u00112\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010ü\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bþ\u0003\u0010ÿ\u0003J0\u0010\u0080\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010y0\u00070\u00062\t\u0010È\u0001\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J6\u0010\u0081\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ý\u00030\u00070\u00062\t\u0010È\u0001\u001a\u0004\u0018\u00010\u00022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010\u0082\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ý\u00030\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010\u0084\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0083\u00040\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J3\u0010\u0085\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J4\u0010\u0087\u0004\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u0086\u0004\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010\u0088\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010\u0089\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J+\u0010\u008a\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J+\u0010\u008b\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u008c\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010\u008d\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010\u008f\u0004\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008e\u0004020\u00070\u00062\t\b\u0002\u0010\u0082\u0001\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J9\u0010\u0091\u0004\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008e\u0004020\u00070\u00062\t\b\u0002\u0010\u0090\u0004\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J5\u0010\u0093\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0092\u00040\u00070\u00062\u0007\u0010\u0095\u0002\u001a\u00020\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u00022\t\u0010í\u0001\u001a\u0004\u0018\u00010\u0002J,\u0010\u0095\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0094\u00040\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010\u0097\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0096\u00040\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010\u0098\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0096\u00040\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010\u0099\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0092\u00040\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010\u009a\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0096\u00040\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010\u009b\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0092\u00040\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J*\u0010\u009d\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u009c\u00040\u00070\u00062\u0007\u0010\u0095\u0002\u001a\u00020\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u0002J0\u0010\u009f\u0004\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030\u009e\u0004\u0018\u00010y0\u00070\u00062\u0007\u0010\u0095\u0002\u001a\u00020\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u0002JJ\u0010£\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¢\u00040\u00070\u00062\u0007\u0010\u0095\u0002\u001a\u00020\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u00022\t\u0010 \u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u00022\t\u0010¡\u0004\u001a\u0004\u0018\u00010\u0002J4\u0010¥\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¤\u00040\u00070\u00062\u0007\u0010\u0095\u0002\u001a\u00020\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002J:\u0010§\u0004\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030¦\u0004\u0018\u00010y0\u00070\u00062\u0007\u0010\u0095\u0002\u001a\u00020\u00022\t\u0010\u0096\u0002\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\u0002J3\u0010¨\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001d\u0010©\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010y0\u00070\u0006J3\u0010ª\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;Jb\u0010«\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\u00070\u00062\b\u0010x\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b«\u0004\u0010¬\u0004J4\u0010¯\u0004\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030®\u00040\u00070\u00062\t\u0010\u00ad\u0004\u001a\u0004\u0018\u00010\u00022\t\u0010\u0090\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010)\u001a\u0004\u0018\u00010\u0002J\u0016\u0010±\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010°\u00040\u00070\u0006J9\u0010²\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010³\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J1\u0010´\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J \u0010¶\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010µ\u00040\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J8\u0010¸\u0004\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010·\u0004020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J\u001e\u0010º\u0004\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¹\u00040\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J/\u0010»\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0002020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JL\u0010¾\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010¼\u0004\u001a\u0004\u0018\u00010\u00112\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b¾\u0004\u0010ÿ\u0003JW\u0010Á\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010¿\u0004\u001a\u0004\u0018\u00010\u00112\t\u0010À\u0004\u001a\u0004\u0018\u00010\u00112\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÁ\u0004\u0010Â\u0004J9\u0010Ã\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;JL\u0010Ä\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010¼\u0004\u001a\u0004\u0018\u00010\u00112\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÄ\u0004\u0010ÿ\u0003J2\u0010Æ\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Å\u00040\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010Ç\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J7\u0010È\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¼\u0004\u001a\u00020\u00112\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002J$\u0010Ê\u0004\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030É\u00040m0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J0\u0010Ì\u0004\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ë\u00040\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J3\u0010Í\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J \u0010Ï\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Î\u00040\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J'\u0010Ò\u0004\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030Ñ\u0004\u0018\u00010y0\u00070\u00062\t\u0010Ð\u0004\u001a\u0004\u0018\u00010\u0002J@\u0010Õ\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ô\u00040\u00070\u00062\t\u0010Ð\u0004\u001a\u0004\u0018\u00010\u00022\t\u0010Ó\u0004\u001a\u0004\u0018\u00010\u000e2\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÕ\u0004\u0010Ö\u0004J3\u0010×\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010Ù\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ø\u00040\u00070\u00062\b\u0010q\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\bÙ\u0004\u0010Ú\u0004J,\u0010Û\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ù\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J!\u0010Ü\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ø\u00040\u00070\u00062\t\u0010Ð\u0004\u001a\u0004\u0018\u00010\u0002J\u0016\u0010Þ\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ý\u00040\u00070\u0006J\u0015\u0010ß\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u0006JD\u0010ã\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010à\u0004\u001a\u0004\u0018\u00010\u00022\t\u0010á\u0004\u001a\u0004\u0018\u00010\u00022\u0007\u0010â\u0004\u001a\u00020\u0011J\u001e\u0010å\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ä\u00040\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J'\u0010ç\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010æ\u00040\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010Ð\u0004\u001a\u00020\u0002J\u0016\u0010é\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010è\u00040\u00070\u0006J\u0016\u0010ë\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ê\u00040\u00070\u0006J!\u0010í\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ì\u00040\u00070\u00062\t\u0010È\u0001\u001a\u0004\u0018\u00010\u0002J\u001e\u0010ï\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010î\u00040\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J6\u0010ò\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ñ\u00040\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010ð\u0004\u001a\u0004\u0018\u00010\u00022\t\u0010¸\u0002\u001a\u0004\u0018\u00010\u0002J=\u0010ô\u0004\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ó\u00040\u00070\u00062\b\u0010q\u001a\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u00112\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\bô\u0004\u0010|J2\u0010ö\u0004\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010õ\u0004020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010÷\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ø\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ù\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ú\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010û\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ü\u0004\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u0014\u0010þ\u0004\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ý\u00040\u00070\u0006J/\u0010ÿ\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J!\u0010\u0081\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00050\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J+\u0010\u0082\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00050\u00070\u00062\t\u0010Ò\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J+\u0010\u0083\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00050\u00070\u00062\t\u0010Ò\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J3\u0010\u0084\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001e\u0010\u0086\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0085\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u0088\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0087\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J#\u0010\u0089\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u008b\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008a\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J5\u0010\u008e\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010\u008c\u0005\u001a\u00020\u00112\u0007\u0010\u008d\u0005\u001a\u00020\u0011J8\u0010\u0090\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u008f\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010q\u001a\u00020\u0011J\u001e\u0010\u0092\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0091\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J#\u0010\u0093\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u0095\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0094\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J$\u0010\u0096\u0005\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0094\u0005020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J*\u0010\u0099\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0098\u00050\u00070\u00062\t\u0010\u0097\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u009b\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009a\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J-\u0010\u009c\u0005\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009a\u0005020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¼\u0004\u001a\u00020\u0011J \u0010\u009e\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u009d\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J=\u0010 \u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\t\u0010\u009f\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010²\u0002\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J/\u0010¡\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002JD\u0010¤\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u00112\t\u0010£\u0005\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\b¤\u0005\u0010\u0086\u0001JC\u0010¦\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u00112\t\u0010¥\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\b¦\u0005\u0010|J0\u0010§\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002J \u0010©\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¨\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J9\u0010¬\u0005\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010«\u0005020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010ª\u0005\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\b¬\u0005\u0010\\J*\u0010®\u0005\u001a\u001b\u0012\u0017\u0012\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00ad\u00050m020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J1\u0010¯\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J(\u0010±\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010°\u0005\u001a\u0004\u0018\u00010\u0002J+\u0010´\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010³\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010²\u0005\u001a\u0004\u0018\u00010\u0002J>\u0010¶\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010µ\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010 \u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u00112\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J&\u0010¸\u0005\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030·\u0005\u0018\u00010m0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J(\u0010º\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¹\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0011JD\u0010»\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b»\u0005\u0010¼\u0005J\u0014\u0010¾\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030½\u00050\u00070\u0006JC\u0010¿\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u00112\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\b¿\u0005\u0010|J0\u0010À\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002J0\u0010Á\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002JC\u0010Â\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u00112\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\bÂ\u0005\u0010|J0\u0010Ã\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u0002J\u001f\u0010Æ\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Å\u00050\u00070\u00062\t\u0010Ä\u0005\u001a\u0004\u0018\u00010\u0002J9\u0010È\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010q\u001a\u0004\u0018\u00010\u00112\t\u0010Ç\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÈ\u0005\u0010É\u0005JO\u0010Ë\u0005\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u00022\t\u0010\u008e\u0002\u001a\u0004\u0018\u00010\u00112\t\u0010Ê\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bË\u0005\u0010ª\u0001J\u001f\u0010Î\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\n\u0010Í\u0005\u001a\u0005\u0018\u00010Ì\u0005J3\u0010Ï\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JC\u0010Ñ\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010Ð\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010x\u001a\u0004\u0018\u00010\u00022\t\u0010²\u0002\u001a\u0004\u0018\u00010\u0002J&\u0010Ó\u0005\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ò\u0005020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J,\u0010Õ\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ô\u00050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J2\u0010×\u0005\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ö\u00050\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J/\u0010Ø\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J3\u0010Ù\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Ú\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Û\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Ü\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Ý\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Þ\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010ß\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010à\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010á\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001e\u0010ã\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030â\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J$\u0010å\u0005\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ä\u00050m0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J-\u0010æ\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J#\u0010ç\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010é\u0005\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030è\u00050\u00070\u00062\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002JA\u0010ë\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\t\u0010ê\u0005\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\bë\u0005\u0010ì\u0005J#\u0010í\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J-\u0010î\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J)\u0010ñ\u0005\u001a\u001b\u0012\u0017\u0012\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ð\u00050m020\u00070\u00062\u0007\u0010ï\u0005\u001a\u00020\u0011J#\u0010ó\u0005\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ò\u0005020\u00070\u00062\u0007\u0010ï\u0005\u001a\u00020\u0011JC\u0010õ\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010ô\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010ï\u0005\u001a\u0004\u0018\u00010\u00112\t\u0010\u00ad\u0004\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\bõ\u0005\u0010\u0086\u0001J,\u0010ö\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010ï\u0005\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\bö\u0005\u00100J(\u0010ø\u0005\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010÷\u0005\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J'\u0010ù\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J=\u0010ü\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010ú\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010û\u0005\u001a\u0004\u0018\u00010\u0002J3\u0010ý\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010þ\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J \u0010\u0080\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ÿ\u00050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J0\u0010\u0082\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0005\u0012\u00030ä\u00050\u0081\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J1\u0010\u0083\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u0084\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u0085\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u0086\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J?\u0010\u0087\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010q\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010½\u0004\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\b\u0087\u0006\u0010\u0088\u0006J3\u0010\u0089\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u008a\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010\u008c\u0006\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¦\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010\u008b\u0006\u001a\u0004\u0018\u00010\u0002J+\u0010\u008e\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u008d\u00060\u00070\u00062\t\u0010\u008b\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J3\u0010\u008f\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J+\u0010\u0092\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0091\u00060\u00070\u00062\u000b\b\u0002\u0010\u0090\u0006\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\b\u0092\u0006\u00100J3\u0010\u0093\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J \u0010\u0095\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0094\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J1\u0010\u0096\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001a\u0010\u0098\u0006\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0097\u00060y0\u00070\u0006J\"\u0010\u009a\u0006\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u0099\u0006\u0018\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J9\u0010\u009b\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010\u009c\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010\u009d\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010\u009e\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010\u009f\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J+\u0010 \u0006\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00030\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J%\u0010£\u0006\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¢\u00060y0\u00070\u00062\u0007\u0010¡\u0006\u001a\u00020\u0011J4\u0010¤\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J\u0018\u0010¦\u0006\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010¥\u0006\u0018\u00010\u00070\u0006J:\u0010¨\u0006\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010§\u0006\u0018\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J1\u0010©\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ª\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J2\u0010¬\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010«\u00060\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J9\u0010±\u0006\u001a\u00030ã\u00012\t\u0010\u00ad\u0006\u001a\u0004\u0018\u00010\u00022\t\u0010²\u0002\u001a\u0004\u0018\u00010\u00022\u0019\u0010°\u0006\u001a\u0014\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030¯\u0006\u0018\u00010m\u0018\u00010®\u0006J\u001d\u0010³\u0006\u001a\u00030ã\u00012\u0013\u0010°\u0006\u001a\u000e\u0012\u0007\u0012\u0005\u0018\u00010²\u0006\u0018\u00010®\u0006J1\u0010´\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J-\u0010µ\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J,\u0010·\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¶\u0006\u001a\u00020\u0011J-\u0010¸\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J)\u0010¹\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010º\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J \u0010¼\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010»\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010¾\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010½\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J1\u0010¿\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010À\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010Á\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JA\u0010Ã\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÃ\u0006\u0010¼\u0005JB\u0010Ä\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\bÄ\u0006\u0010Å\u0006J \u0010Ç\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Æ\u00060\u00070\u00062\b\u0010q\u001a\u0004\u0018\u00010\u0002J-\u0010É\u0006\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00010ú\u00010\u00070\u00062\t\u0010È\u0006\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\bÉ\u0006\u00100J%\u0010Ë\u0006\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00010ú\u00010\u00070\u00062\t\u0010Ê\u0006\u001a\u0004\u0018\u00010\u0002J%\u0010Ì\u0006\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00010ú\u00010\u00070\u00062\t\u0010Ê\u0006\u001a\u0004\u0018\u00010\u0002J2\u0010Í\u0006\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020\u0001\u0018\u00010ú\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u0016\u0010Ï\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Î\u00060\u00070\u0006J \u0010Ñ\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ð\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002JL\u0010Ò\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\t\u0010£\u0002\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÒ\u0006\u0010Ó\u0006JM\u0010Ô\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\t\u0010£\u0002\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u0011¢\u0006\u0006\bÔ\u0006\u0010Õ\u0006J3\u0010Ö\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010×\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Ø\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010Ù\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J-\u0010Ú\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J/\u0010Ü\u0006\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030Û\u0006\u0018\u00010y0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010²\u0002\u001a\u00020\u0011J\u0016\u0010Þ\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ý\u00060\u00070\u0006J5\u0010à\u0006\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010ß\u0006\u0018\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0007\u0010\u008f\u0001\u001a\u00020\u0011J<\u0010ã\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000102\u0018\u00010\u00070\u00062\t\u0010Ð\u0004\u001a\u0004\u0018\u00010\u00022\t\u0010á\u0006\u001a\u0004\u0018\u00010\u00022\t\u0010â\u0006\u001a\u0004\u0018\u00010\u0002J-\u0010å\u0006\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010ä\u0006\u0018\u00010\u00070\u00062\t\u0010Ð\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002J/\u0010æ\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u0016\u0010è\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ç\u00060\u00070\u0006J \u0010ê\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010é\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J \u0010ì\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ë\u00060\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J#\u0010í\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J-\u0010î\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010G\u001a\u0004\u0018\u00010\u0002J/\u0010ï\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010ð\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J5\u0010ñ\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010q\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\bñ\u0006\u0010\\J@\u0010ó\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010q\u001a\u0004\u0018\u00010\u00112\t\u0010ò\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\bó\u0006\u0010|J\u0016\u0010õ\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ô\u00060\u00070\u0006J\u001d\u0010ø\u0006\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030÷\u00060\u00070\u00062\u0007\u0010ö\u0006\u001a\u00020\u0011J,\u0010ù\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J!\u0010û\u0006\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ú\u00060\u00070\u00062\t\u0010Ð\u0004\u001a\u0004\u0018\u00010\u0002JT\u0010ÿ\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\t\u0010ü\u0006\u001a\u0004\u0018\u00010\b2\t\u0010ý\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u00022\t\u0010þ\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÿ\u0006\u0010\u0080\u0007J7\u0010\u0081\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J7\u0010\u0082\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J7\u0010\u0083\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J7\u0010\u0084\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0018\u00010\u0001¢\u0006\u0003\bÚ\u00030;J(\u0010\u0086\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u0085\u0007\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0019\u0010\u0087\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u0006J#\u0010\u0088\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0002J-\u0010\u008a\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\t\u0010\u0089\u0007\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\b\u008a\u0007\u0010Ú\u0004J\u001e\u0010\u008c\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u008b\u0007\u0018\u0001020\u00070\u0006J;\u0010\u008f\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u008e\u0007\u0018\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u00022\u0007\u0010\u008d\u0007\u001a\u00020\u0011J$\u0010\u0090\u0007\u001a\u001f\u0012\u001b\u0012\u0019\u0012\u0015\u0012\u0013\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030\u008e\u0007\u0018\u00010m\u0018\u0001020\u00070\u0006J'\u0010\u0092\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u008e\u0007\u0018\u0001020\u00070\u00062\u0007\u0010\u0091\u0007\u001a\u00020\u000eJ&\u0010\u0093\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u0001020\u00070\u00062\u0007\u0010\u0091\u0007\u001a\u00020\u000eJ.\u0010\u0097\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0096\u0007050\u00070\u00062\t\u0010\u0094\u0007\u001a\u0004\u0018\u00010\u00022\u0007\u0010\u0095\u0007\u001a\u00020\u0011J+\u0010\u0098\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J/\u0010\u009b\u0007\u001a \u0012\u001c\u0012\u001a\u0012\u0014\u0012\u0012\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009a\u00070m\u0018\u00010\u0099\u0007\u0018\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0014\u0010\u009d\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009c\u00070\u00070\u0006J$\u0010\u009f\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0007\u0010\u009e\u0007\u001a\u00020\u000eJ\u001e\u0010¡\u0007\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010 \u00070\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002JA\u0010£\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010¸\u0002\u001a\u0004\u0018\u00010\u00112\t\u0010¢\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0005\b£\u0007\u0010|J\"\u0010¥\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¤\u0007020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0002J&\u0010§\u0007\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030¦\u0007\u0018\u00010y0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001c\u0010©\u0007\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030¨\u0007\u0018\u0001020\u00070\u0006J/\u0010«\u0007\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030ª\u0007\u0018\u0001020\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u0011J%\u0010\u00ad\u0007\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030¬\u0007\u0018\u0001020\u00070\u00062\u0007\u0010\u008b\u0006\u001a\u00020\u000eJ6\u0010¯\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u0001020\u00070\u00062\u0007\u0010\u008b\u0006\u001a\u00020\u000e2\u0007\u0010°\u0005\u001a\u00020\u00022\u0007\u0010®\u0007\u001a\u00020\u0011J6\u0010±\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u0001020\u00070\u00062\u0007\u0010°\u0005\u001a\u00020\u00022\u0007\u0010®\u0007\u001a\u00020\u00112\u0007\u0010°\u0007\u001a\u00020\u0011J\u001c\u0010³\u0007\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020\u0002\u0018\u00010²\u00070\u00070\u0006J \u0010µ\u0007\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010´\u00070\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002JC\u0010¶\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b¶\u0007\u0010¼\u0005JD\u0010·\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\t\u0010¢\u0005\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b·\u0007\u0010¸\u0007J9\u0010¹\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\t\u0010Â\u0006\u001a\u0004\u0018\u00010\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\b¹\u0007\u0010É\u0005J9\u0010»\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010º\u0007\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\b»\u0007\u0010¼\u0007J\u001f\u0010½\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001a\u0010¾\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ë\u00020y0\u00070\u0006J*\u0010À\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0080\u00010\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00022\t\u0010¿\u0007\u001a\u0004\u0018\u00010\u0002J(\u0010Ã\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Â\u0007020\u00070\u00062\f\b\u0001\u0010î\u0002\u001a\u0005\u0018\u00010Á\u0007J*\u0010Ä\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J7\u0010Æ\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Å\u0007020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000e2\b\u0010)\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bÆ\u0007\u0010Ï\u0002J&\u0010Ç\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\bÇ\u0007\u0010Ú\u0004J-\u0010É\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030È\u0007020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\bÉ\u0007\u0010Ú\u0004J\u001f\u0010Ì\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ë\u00070\u00070\u00062\t\u0010Ê\u0007\u001a\u0004\u0018\u00010\u0002J0\u0010Í\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ë\u0007020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J,\u0010Î\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J,\u0010Ï\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0015\u0010<\u001a\u0011\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0093\u0002J \u0010Ñ\u0007\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010Ð\u00070\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J2\u0010Ó\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010Ò\u0007\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\bÓ\u0007\u0010\\J.\u0010Õ\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010Ô\u0007\u001a\u00020\u0002J%\u0010Ö\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J+\u0010×\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J<\u0010Ù\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\t\u0010¡\u0006\u001a\u0004\u0018\u00010\u00022\t\u0010Ï\u0001\u001a\u0004\u0018\u00010\u00022\t\u0010Ø\u0007\u001a\u0004\u0018\u00010\u0002J*\u0010Û\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\b\u0010A\u001a\u0004\u0018\u00010\u00022\t\u0010Ú\u0007\u001a\u0004\u0018\u00010\u0002J\u001e\u0010Ý\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010Ü\u0007\u0018\u00010m0\u00070\u0006J5\u0010ß\u0007\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00010\u00070\u00062\t\u0010Þ\u0007\u001a\u0004\u0018\u00010\u00112\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002¢\u0006\u0006\bß\u0007\u0010É\u0005J#\u0010á\u0007\u001a\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010à\u0007\u0018\u00010\u00070\u00062\t\u0010\u00ad\u0002\u001a\u0004\u0018\u00010\u0002J'\u0010ä\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010ã\u0007\u0018\u0001020\u00070\u00062\u0007\u0010â\u0007\u001a\u00020\u000eJ4\u0010æ\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010å\u0007\u0018\u0001050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ç\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001f\u0010é\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030è\u00070\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J\u001f\u0010ê\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030è\u00070\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J\u001f\u0010ì\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ë\u00070\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J\u001f\u0010í\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ë\u00070\u00070\u00062\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0002J(\u0010ï\u0007\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030î\u00070\u00070\u00062\t\u0010â\u0007\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\bï\u0007\u0010Ú\u0004J#\u0010ò\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ñ\u00070\u00070\u00070\u00062\u0007\u0010ð\u0007\u001a\u00020\u000eJ0\u0010ô\u0007\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ó\u0007050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010õ\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J9\u0010ö\u0007\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001050\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\t\u0010â\u0007\u001a\u0004\u0018\u00010\u000e¢\u0006\u0006\bö\u0007\u0010¼\u0007J4\u0010ø\u0007\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010÷\u0007\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u0016\u0010ú\u0007\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010ù\u00070\u00070\u0006J&\u0010ü\u0007\u001a!\u0012\u001d\u0012\u001b\u0012\u0017\u0012\u0015\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010û\u0007\u0018\u00010y\u0018\u0001020\u00070\u0006J\u001d\u0010ý\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u0001020\u00070\u0006J,\u0010ÿ\u0007\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010þ\u00070\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u0080\b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u0081\b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u0016\u0010\u0083\b\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0082\b0\u00070\u0006J6\u0010\u0086\b\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0085\b050\u00070\u00062\u0006\u0010\u001e\u001a\u00020\u00022\u0007\u0010²\u0002\u001a\u00020\u00112\t\u0010\u0084\b\u001a\u0004\u0018\u00010\u0002J\"\u0010\u0088\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\u0007\u0010\u0087\b\u001a\u00020\u0002J/\u0010\u0089\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010\u008a\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;JJ\u0010\u008e\b\u001a\u001f\u0012\u001b\u0012\u0019\u0012\u0015\u0012\u0013\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u008d\b\u0018\u00010m020\u00070\u00062\n\b\u0002\u0010x\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u008b\b\u001a\u0004\u0018\u00010\u00022\u000b\b\u0002\u0010\u008c\b\u001a\u0004\u0018\u00010\u0002J)\u0010\u008f\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J)\u0010\u0090\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010\u0093\b\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0092\b050\u00070\u00062\t\u0010\u0091\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0014\u0010\u0095\b\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0094\b0\u00070\u0006J\u001a\u0010\u0097\b\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0096\b0m0\u00070\u0006J/\u0010\u0098\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010\u0099\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001050\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J3\u0010\u009a\b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u001c\u0010\u009c\b\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030\u009b\b\u0018\u00010y0\u00070\u0006J)\u0010\u009d\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J \u0010\u009f\b\u001a\u001b\u0012\u0017\u0012\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009e\b0m020\u00070\u0006J$\u0010¡\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010 \b\u001a\u0004\u0018\u00010\u0002J,\u0010¢\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\t\u0010\u0091\u0007\u001a\u0004\u0018\u00010\u0011¢\u0006\u0005\b¢\b\u00100J$\u0010¤\b\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030£\b050\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0002J\u001c\u0010¦\b\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030¥\b\u0018\u00010m0\u00070\u0006J3\u0010§\b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001020\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J1\u0010ª\b\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010©\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¨\b\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011J\u001d\u0010«\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u001d\u0010\u00ad\b\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030¬\b0\u00070\u00062\u0007\u0010Ð\u0004\u001a\u00020\u0002J0\u0010¯\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0007\u0010¡\u0006\u001a\u00020\u00022\u0007\u0010Ï\u0001\u001a\u00020\u00022\u0007\u0010®\b\u001a\u00020\u0002J+\u0010°\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J\u0015\u0010±\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u0006J\u001e\u0010²\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0007\u0010Ð\u0001\u001a\u00020\bJ+\u0010³\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010;J/\u0010´\b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010G\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J;\u0010¶\b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0007\u0010¢\u0005\u001a\u00020\u00112\u000b\b\u0002\u0010µ\b\u001a\u0004\u0018\u00010\u0002J \u0010¸\b\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010·\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J%\u0010¹\b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J2\u0010º\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00022\u0007\u0010Â\u0006\u001a\u00020\u0011J*\u0010¼\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010»\b\u001a\u00020\bJ*\u0010½\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0007\u0010Â\u0006\u001a\u00020\u0011J \u0010¿\b\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010¾\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J:\u0010Ã\b\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030Â\b\u0018\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000e2\t\u0010À\b\u001a\u0004\u0018\u00010\u00022\t\u0010Á\b\u001a\u0004\u0018\u00010\u0002J/\u0010Å\b\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030Ä\b\u0018\u0001020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u000e2\t\u0010À\b\u001a\u0004\u0018\u00010\u0002J\u001e\u0010Ç\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0007\u0010Æ\b\u001a\u00020\bJ\u001e\u0010É\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u0007\u0010È\b\u001a\u00020\bJ\u001e\u0010Ë\b\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ê\b0\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J,\u0010Í\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\r\u0010Ì\b\u001a\b\u0012\u0004\u0012\u00020\u00020m¨\u0006Ð\b"}, d2 = {"Lh30/g;", "", "", Constant.IN_KEY_USER_ID, "I4", "roomId", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "", "H9", "K9", "w8", "audioUrl", "videoUrl", "", "duration", "startTime", "", InAppSlotParams.SLOT_KEY.SEQ, "videoId", "ext", "za", "pageIndex", "pageSize", "Lcn/soulapp/cpnt_voiceparty/highlightrecord/bean/ChatLiveVideoRecordPageModel;", "h7", "classifyId", "topicId", "roomName", "backgroundId", "playType", "mFmCode", "recTopicId", "privateStatus", "functionCodes", "bizExt", "Lcn/soulapp/android/chatroom/bean/CreateRoomModel;", "T0", "joinType", "joinMode", "recPageId", "joinCode", "Lcn/soulapp/android/chatroom/bean/JoinRoomBean;", "H5", "(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "n1", "Lcn/soulapp/cpnt_voiceparty/bean/GuidePopBean;", "Z4", "(Ljava/lang/Integer;)Lrs0/e;", "s1", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "Lcn/soulapp/cpnt_voiceparty/bean/FollowRemindListBean;", "o1", "Lcn/soulapp/cpnt_voiceparty/bean/RequestMsgResult;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomRecStatusData;", "j4", "action", "Lcn/soulapp/cpnt_voiceparty/bean/RoomRecActionResult;", "p8", "", "map", "Lcn/soulapp/cpnt_voiceparty/bean/OnlineUserModel;", "J4", "l4", "x2", "songId", "bizSource", "targetMicroSwitch", "z", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "y", "targetUserIdEcpt", "zegoStreamId", "G", "Fa", "microSwitchState", "ga", "B5", "z5", "i1", "D5", "inviteUserIdEcpt", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/ConfirmOpenMicroModel;", l11l11I1111l.l111l1111lIl, "Lcn/soulapp/cpnt_voiceparty/bean/SetManagerModel;", com.hihonor.adsdk.adsconversiontools.report.c.a.U0, "h9", "F1", "N8", "fromType", "Lcn/soulapp/android/chatroom/bean/RoomerCardModel;", "s3", "(Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", com.hihonor.adsdk.adsconversiontools.report.c.a.S0, "Lcn/soulapp/cpnt_voiceparty/bean/LuckBagModel;", "X2", "bagId", "Lcn/soulapp/cpnt_voiceparty/bean/FortuneBagInfo;", "v2", com.hihonor.adsdk.adsconversiontools.report.c.a.V0, "Lcn/soulapp/cpnt_voiceparty/bean/FortuneBagConfigInfo;", "u2", "countDownTime", "userType", "g9", "(Ljava/lang/Long;Ljava/lang/Integer;)Lrs0/e;", "needFollow", "R6", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "", "Lcn/soulapp/cpnt_voiceparty/bean/AudioEffectModel;", "M1", "L5", "type", "i9", "p4", "createCode", "Lcn/soulapp/android/chatroom/bean/PartyGroupOperateModel;", "W0", MapBundleKey.OfflineMapKey.OFFLINE_TOTAL_SIZE, "ownerIdEcpt", "Ljava/util/ArrayList;", "Lcn/soulapp/android/chatroom/bean/GroupClassifyDetailBean;", "w3", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lrs0/e;", "G1", "f9", "needUserRec", "Lcn/soulapp/android/chatroom/bean/ChatRoom;", "U1", "pageCursor", ChatHistoryMessageBean.KEY_SOURCETYPE, "pageSceneId", "Z7", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lrs0/e;", "L7", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lrs0/e;", "Lcn/soulapp/android/chatroom/bean/MeCardModel;", "X4", "Lcn/soulapp/cpnt_voiceparty/bean/GroupMedalConfig;", "b3", "Lcn/soulapp/cpnt_voiceparty/bean/IconModel;", "F2", "scene", "Lcn/soulapp/android/chatroom/bean/UserUsageBean;", "F0", "K5", "Lcn/soulapp/cpnt_voiceparty/bean/VoicePartyRetainBean;", "J7", "labelIds", "V6", "Lcn/soulapp/cpnt_voiceparty/bean/GroupInterestTagInfo;", "y2", "Lcom/soul/component/componentlib/service/voiceparty/GroupMedalListModel;", "z2", "Lcn/soulapp/android/chatroom/bean/RoomTopicBean;", "d4", "K0", "x8", "M8", "Lcom/soulapp/soulgift/bean/NewFoolishGiftInfo;", "g7", "luckyLevel", "partCount", "Lcn/soulapp/cpnt_voiceparty/bean/FetchLuckBagResultModel;", "p1", "Lcn/soulapp/cpnt_voiceparty/bean/OperationResult;", "w9", "code", "J", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionGiftModel;", "N7", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionBoxModel;", "n", "g", "O0", "Lcn/soulapp/cpnt_voiceparty/bean/RoomAuctionInfo;", "I1", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionRule;", "L1", "typeCode", "B0", "Lcn/soulapp/cpnt_voiceparty/bean/KtvSimpleSongModel;", "I2", "Q2", "appPickSource", "h", "clientPublicKey", "Lcn/soulapp/cpnt_voiceparty/bean/KtvPlaySongResult;", "p7", "C8", "Lcn/soulapp/cpnt_voiceparty/bean/KtvPlaySongModel;", "c2", "N6", "d1", "P5", "Lcn/soulapp/cpnt_voiceparty/bean/RequestOperationResult;", "y3", "k7", "keyword", "Lcn/soulapp/cpnt_voiceparty/bean/KtvSearchAssociativeModel;", "O8", "P8", "da", com.igexin.push.core.b.f197357ab, "N0", "functionId", "state", "Q5", "Lcn/soulapp/cpnt_voiceparty/bean/KtvTab;", "R5", "Lcn/soulapp/cpnt_voiceparty/bean/KtvPlaySongDetail;", "O5", "I6", "Lcn/soulapp/android/chatroom/bean/RoomRandomTopicItemResultBean;", "i4", "Lcn/soulapp/android/chatroom/bean/RoomRandomResultBean;", "L0", "topicName", "Q0", "Landroidx/lifecycle/LifecycleOwner;", "owner", "songlistId", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomSongDataModel;", TextureRenderKeys.KEY_IS_CALLBACK, "Lkotlin/w;", "D1", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomMusicBean;", "q4", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomHisMusicBean;", "v4", "f7", "Lcn/soulapp/cpnt_voiceparty/bean/OptFavoriteMusicBean;", "q7", "ea", "targetUserId", "Lcn/soulapp/cpnt_voiceparty/bean/CreateGroupModel;", "r5", "w5", "creatorId", "Lcn/soulapp/cpnt_voiceparty/bean/AgreeJoinGroupResult;", "l", "Lcn/soulapp/android/chatroom/bean/ReceiveMedalUserBean;", "c3", "Lcn/soulapp/cpnt_voiceparty/bean/UserSendListModel;", "K3", "Lcn/soulapp/android/chat/bean/SetCommonResult;", "X6", "Lcn/soulapp/cpnt_voiceparty/bean/RequestAResult;", "W4", "Lcn/soulapp/cpnt_voiceparty/bean/WushuangMedalRecordModel;", "T4", "K8", "A2", "e7", "locationType", "F5", "configExt", "d7", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PkRuleConfig;", "B3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PkModel;", "C3", "k", "E3", "D3", "medalType", "groupMedalLevel", "optType", "Pa", l111l1111llIl.l11l111ll1Il, "Lcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo;", "e4", "", "u8", "outerRoomType", "outerRoomId", "Lcn/soulapp/cpnt_voiceparty/bean/SpeedMatchModel;", "d8", "Lcn/soulapp/cpnt_voiceparty/bean/SpeedMatchUpdateResult;", "y5", "R0", "w", LightConstants.BeautyConfigKey.SMOOTH_VERSION_V5, "q", "q0", "I8", "Lcn/soulapp/cpnt_voiceparty/bean/SpeedMatchUserModel;", "U7", "seatType", "Lcn/soulapp/cpnt_voiceparty/bean/UserListResult;", "e8", "W7", "E9", "f", "l1", "S7", "b8", "ua", RequestKey.USER_ID, "count", "W6", "Lcn/soulapp/cpnt_voiceparty/CpSeatBean;", "j2", SocialConstants.PARAM_SOURCE, "Lcn/soulapp/cpnt_voiceparty/bean/SongListName;", "w4", IDTFacade.ZIM_EXT_PARAMS_LAN_VAL_JA, "Lcn/soulapp/cpnt_voiceparty/bean/SoupLabelResult;", "z4", "gameId", "soupId", "Lcn/soulapp/cpnt_voiceparty/bean/ClueItem;", "M0", "Lcn/soulapp/cpnt_voiceparty/bean/SoupResult;", "p6", "clueContent", "S0", "soupName", "soupText", "soupBase", l111l1111llIl.l11l111l1lll, "clueId", LightConstants.BeautyConfigKey.SMOOTH_VERSION_V7, "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "played", "label", "difficulty", "A4", "b7", "G9", "m1", "o7", "(Ljava/lang/Long;Ljava/lang/String;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/GameInfo;", "r3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", "Z3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomAtmosphereConfigListModel;", "Y3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PurchaseAtmosphereInfo;", "h0", "rerId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RedEnvelopeModel;", "k9", "rerItemId", "extMap", "Z8", "Lcn/soulapp/cpnt_voiceparty/bean/LiveRoomDetailModel;", "W2", "Lcn/soulapp/android/chatroom/bean/CreateChatRoomPreCheckBean;", "ra", "Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "l6", "classifyCode", "Lcn/soulapp/cpnt_voiceparty/bean/RandomRecBean;", "D8", "Lcn/soulapp/cpnt_voiceparty/bean/RoomLowQualityBean;", "E0", "Lcn/soulapp/cpnt_voiceparty/bean/HistoryNameModel;", "D2", "Lcn/soulapp/cpnt_voiceparty/bean/FeatureTagModel;", l111l1111llIl.l11l111ll11l, "Lcn/soulapp/cpnt_voiceparty/bean/ReqTokenBean;", "reqTokenBean", "Lcn/soulapp/android/chatroom/bean/AudioAuthInfo;", com.hihonor.adsdk.adsconversiontools.report.c.a.X0, "Lcn/soulapp/android/chatroom/bean/RoomModel;", "f4", "g4", "Lcn/soulapp/android/chatroom/bean/CreateGiftConfig;", "V4", "configKey", "configValue", "na", "Lcn/soulapp/android/chatroom/bean/RoomLimitConfig;", "X3", "giftCode", "U4", "w1", "Lcn/soulapp/cpnt_voiceparty/bean/LuckBagPackModel;", "r2", "Lcn/soulapp/cpnt_voiceparty/soulhouse/qubaoshow/bean/QubaoGiftListBean;", "L3", "Lcn/soulapp/cpnt_voiceparty/bean/HotLuckBagPackModel;", "e0", "Lcn/soulapp/cpnt_voiceparty/bean/FlowCardBean;", "r1", "g0", "e2", "Lcn/soulapp/cpnt_voiceparty/bean/SideslipRoomModel;", "o4", "W1", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PreJoinCheckModel;", "J5", "sourceId", "fromUserId", "joinExt", "relationTargetUserId", "Lcn/soulapp/cpnt_voiceparty/bean/JoinRoomConfirmBean;", "O6", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "Z0", "c4", "X1", "Lcn/soulapp/android/chatroom/bean/HotTopicRoomListResp;", "E2", "P1", "Y1", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "J3", "I3", "H3", "G3", "F3", "Lcn/soulapp/cpnt_voiceparty/bean/CollectionPageDataBean;", "h2", "Lcn/soulapp/cpnt_voiceparty/bean/RoomGuideUserListDataBean;", "B2", "(Ljava/lang/Integer;I)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/RelationUserRecEnvelope;", "R3", "O1", "Lcn/soulapp/android/chatroom/bean/SoulGiftListModel;", "y4", "k2", com.huawei.hms.feature.dynamic.b.f194509u, "l8", "receiveUserId", "X8", "J8", "c7", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/FirstChargeTaskModel;", "F4", "Lcn/soulapp/cpnt_voiceparty/bean/ActivityCenterEntrance;", "z1", "I0", "q8", "T9", "j9", "S9", "seatId", "Lcn/soulapp/cpnt_voiceparty/bean/HeartBeatGiftInfoBean;", "C2", "itemIdentity", "Lcn/soulapp/cpnt_voiceparty/bean/SendGiftForMicroResult;", "U8", "B", "b9", l111l1111llIl.l11l111lll, "status", "ba", "fa", "Lcn/soulapp/cpnt_voiceparty/bean/SlideRoomBean;", "n6", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomPopupInfo;", "Z1", "placeTopRoomId", "topRoomSource", "Lcn/soulapp/cpnt_voiceparty/bean/RecommendRoomBean;", "h6", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Lrs0/e;", "B8", LightConstants.BeautyConfigKey.SMOOTH_VERSION_V6, "pickId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/SimpleUser;", "u6", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/SoulLiveHouseEntranceModel;", "V2", "m5", "Ljava/util/HashMap;", "l5", "Lkotlin/jvm/JvmSuppressWildcards;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomRecModel;", l111l1111llIl.l11l111l1I1l, "Lcn/soulapp/cpnt_voiceparty/bean/KtvZoneInfo;", "S2", "Lcn/soulapp/cpnt_voiceparty/bean/MusicRecommendRoomBean;", "N3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PartyAssistantModel;", "H1", "L", "Lcn/soulapp/cpnt_voiceparty/bean/SupplyStationModel;", "E4", "sa", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/AdvertisingBoardModel;", "n2", "role", "Lcn/soulapp/cpnt_voiceparty/bean/ChangeJoinModel;", "V9", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BoardOnlineUserModel;", "Y5", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BoardTopicModel;", "K7", "ma", "u5", "r8", "m", "Lcn/soulapp/cpnt_voiceparty/bean/KtvScoreLevelBean;", "k0", "j0", "Lcn/soulapp/cpnt_voiceparty/bean/KtvChallengeDataBean;", "L2", "M5", "s9", "tabCode", "Lcn/soulapp/cpnt_voiceparty/soulhouse/songmachine/bean/SongListNetBean;", com.hihonor.adsdk.adsconversiontools.report.c.a.T0, "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "Q8", "R8", "r4", "Lcn/soulapp/cpnt_voiceparty/soulhouse/songmachine/bean/MusicMachinePlayInfo;", "u4", "n9", "Lcn/soulapp/cpnt_voiceparty/soulhouse/songmachine/bean/MusicMachineInfo;", "p9", "q9", "l9", "m9", "r9", "o9", "ha", "Lcn/soulapp/cpnt_voiceparty/bean/MatchListJsonBean;", "a3", "pageNo", "Z2", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketContractBean;", "D6", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketContractGiftBean;", "A6", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketBaseBean;", "F6", "E6", "B6", "C6", "H6", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/MusicMarketInfo;", "e3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketSingerBean;", "g3", "singer", "cursor", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketSongListBean;", "h3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketAddedSongListBean;", "d3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketChooseSongTypeBean;", "f3", "q1", "i3", "G6", "G5", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "relationType", "Lcn/soulapp/cpnt_voiceparty/bean/PushJoinOrLandingResponse;", "w7", "Lcn/soulapp/cpnt_voiceparty/bean/KtvMatchToolOldBean;", "U2", "V0", "N5", "J0", "Lcn/soulapp/cpnt_voiceparty/bean/KtvAudioRecordDataBean;", "o3", "Lcn/soulapp/cpnt_voiceparty/bean/KtvRecordMaterielData;", "P2", "Lcn/soulapp/cpnt_voiceparty/bean/PvpInfo;", "z7", "X0", "actionType", "roundId", "B7", "respondType", "respond", "C7", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "y7", "A7", "Lcn/soulapp/cpnt_voiceparty/bean/PvpAssistancePanelConfigurationModel;", "x7", "D7", "z0", "Lcn/soulapp/cpnt_voiceparty/bean/RecallBean;", "k8", "Lcn/soulapp/cpnt_voiceparty/bean/WelcomeBean;", "Qa", "l7", "Lcn/soulapp/cpnt_voiceparty/soulhouse/songmachine/bean/SongMachineFreeCountDataBean;", "s4", "sceneId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/KtvDressUpTheMallTypeBean;", "M2", "classId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/KtvDressUpTheMallProduceDataBean;", "p2", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lrs0/e;", "f0", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/MyDressUpProduceDataBean;", "l3", "(Ljava/lang/Long;)Lrs0/e;", "Ca", "p3", "Lcn/soulapp/android/nawa/api/expression/net/model/NawaExpressionInfo;", "V7", "K6", "bundleId", "expressionId", "frameType", "T8", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/KtvSpecialEffectInfoBean;", "R2", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/KtvGiftConfigList;", "N2", "Lcn/soulapp/cpnt_voiceparty/bean/RoomConfigBean;", "z8", "Lcn/soulapp/cpnt_voiceparty/bean/creatorx/CreatorxKeywordsConfig;", "m2", "Lcn/soulapp/cpnt_voiceparty/bean/creatorx/CreatorxGiftPriceConfig;", "l2", "Lcn/soulapp/cpnt_voiceparty/bean/BistroMusicBean;", "W5", "gameRoomId", "Lcn/soulapp/cpnt_voiceparty/bean/H5PlayGameSettleBean;", "d6", "Lcn/soulapp/cpnt_voiceparty/bean/ScoreHistory;", "X5", "Lcn/soulapp/cpnt_voiceparty/bean/BistroMusicPickSongResultInfo;", "U6", "Z", "X", "a0", "b0", "c0", "Y", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionBean;", "r7", "R9", "Lcn/soulapp/cpnt_voiceparty/bean/KtvLampSignListInfo;", "Q7", "P7", "R7", "W8", "Lcn/soulapp/cpnt_voiceparty/melancholy/RelievePanelModel;", "V3", "Lcn/soulapp/cpnt_voiceparty/melancholy/RelieveOnlineModel;", "U3", "t", "Lcn/soulapp/cpnt_voiceparty/melancholy/RelieveConfigData;", "S3", "freeMinutes", "minuteExpendStar", "ta", "targetUidEcpt", "F", "Lcn/soulapp/cpnt_voiceparty/melancholy/RelieveRenewModel;", "W3", "F8", "Lcn/soulapp/cpnt_voiceparty/melancholy/RelieveEndModel;", "T3", "E8", "tab", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionPkInviteBean;", "u3", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionPkMatchInfo;", "K1", "Q6", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionPkInfo;", "N", "targetOwnerIdEcpt", "x5", "I", "replyResult", "relationshipCode", "M", "inviteId", "m8", "x9", "Lcn/soulapp/cpnt_voiceparty/bean/BistroMusicPanelBean;", "V5", "identityType", "Lcn/soulapp/cpnt_voiceparty/bean/WonderfulStoreGiftInfo;", "r6", "Lcn/soulapp/cpnt_voiceparty/bean/WonderfulStoreUserInfo;", "s6", "e9", "commodityId", "A8", "version", "Lcn/soulapp/cpnt_voiceparty/bean/GiftReinderInfo;", "e6", "Lcn/soulapp/cpnt_voiceparty/bean/BistroMusicSongListInfo;", "m6", "Lcn/soulapp/cpnt_voiceparty/bean/BistroMusicSongInfo;", "C1", "Lcn/soulapp/cpnt_voiceparty/bean/BistroMusicWaitSongInfo;", "A3", "Q", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionContentResult;", "J1", "n8", "r", "P", "o8", "d0", "types", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionPkPersonalInfo;", "z3", "attributes", "m7", "(Ljava/lang/Integer;Ljava/lang/String;)Lrs0/e;", "targetRoomId", "O", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/ReportModel;", "reportModel", "b1", "c", "otherRoomId", "d", "Lcn/soulapp/cpnt_voiceparty/bean/GuineaPigInfo;", "f6", "Lcn/soulapp/cpnt_voiceparty/bean/GuineaPigTeamRankingBean;", com.alipay.sdk.m.b0.c.f175379c, "Lcn/soulapp/cpnt_voiceparty/bean/StartGameBean;", "A9", "H8", "C9", "p0", com.hihonor.adsdk.adsconversiontools.report.c.a.W0, "o0", "S5", "c5", l111l1111llIl.l11l111l1Il, "T6", "b5", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/VirtualLivePanelModel;", "S4", "Lcn/soulapp/android/client/component/middle/platform/bean/im/RoomUser;", "Q4", "Ia", "Ha", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/VirtualLiveNawaModel;", "R4", "nawaMetaId", "Ka", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lrs0/e;", "La", "Ja", "index", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/WallAvatarModel;", "T5", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/AvatarShelfResult;", "U5", "friendId", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "Lcn/soulapp/cpnt_voiceparty/bean/KtvAudioUploadPreCheckModel;", "s7", "K2", "songName", "singerName", "C0", "ya", "e1", "Lcn/soulapp/cpnt_voiceparty/soulhouse/throwingthunder/ThrowingThunderInfo;", "o6", "Lcn/soulapp/cpnt_voiceparty/bean/RequestPageResult;", bt.aF, ExifInterface.LONGITUDE_EAST, "Z9", "aa", "Y9", "S8", "(ILjava/lang/String;Ljava/lang/Long;)Lrs0/e;", "F9", "J9", "id", "f1", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/KtvAudioUploadInfoDataBean;", "J2", "va", "sceneCode", "Lcn/soulapp/cpnt_voiceparty/bean/QuickJoinRoomBean;", "i6", "y6", "Lcn/soulapp/cpnt_voiceparty/bean/BulletGameInfo;", "Q1", "G8", "Lcn/soulapp/android/chatroom/bean/UserFmAsset;", "q6", "Lcn/soulapp/cpnt_voiceparty/bean/HeartAdventureBean;", "g6", "k5", "j5", "i5", "h5", "e5", "q2", "businessId", "Lcn/soulapp/cpnt_voiceparty/bean/RecommendSettingModel;", "j6", "Y6", "Lcn/soulapp/cpnt_voiceparty/bean/RecSwitchBean;", "Z6", "Lcn/soulapp/cpnt_voiceparty/bean/KtvBeatGameHandleBean;", "f5", "xa", "i0", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktv/bean/KtvBeatDetailBean;", "R1", "searchContent", "Lcom/walid/rxretrofit/interfaces/SimpleHttpCallback;", "Lcn/soulapp/cpnt_voiceparty/bean/SearchSuggestBean;", "listener", "n4", "Lcn/soulapp/cpnt_voiceparty/bean/SearchEmptyRecData;", "m4", "u1", "n5", "answerType", "o5", "p5", "J6", "Da", "Lcn/soulapp/cpnt_voiceparty/bean/RoomCeremonyInfo;", "Z5", "Lcn/soulapp/cpnt_voiceparty/bean/CeremonyReservationList;", "y0", "s", ExpcompatUtils.COMPAT_VALUE_780, "t0", "seatNo", "r0", "s0", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/CeremonySubscribeInfo;", "w0", "popWindowType", "x0", "partyId", "u0", "v0", "s5", "Lcn/soulapp/cpnt_voiceparty/bean/RoomRelationBean;", "E1", "Lcn/soulapp/cpnt_voiceparty/bean/BigVipInfo;", "S1", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", ExifInterface.LONGITUDE_WEST, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "la", "v", "W9", "d5", "U", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomTopicBean;", "b2", "Lcn/soulapp/cpnt_voiceparty/bean/RoomRecTopicTipBean;", l111l1111llIl.l111l11IlIlIl, "Lcn/soulapp/android/chatroom/bean/UpdateRoomTopicBean;", "j8", "toUserIdEcpt", "msgBodyStr", "u7", "Lcn/soulapp/cpnt_voiceparty/bean/RoomCreateParams;", "b4", "S6", "Lcn/soulapp/cpnt_voiceparty/bean/CeremonyScoreRuleBean;", "T1", "Lcn/soulapp/cpnt_voiceparty/bean/StudyRoomInfo;", "B4", "Lcn/soulapp/cpnt_voiceparty/bean/StudyRoomTopicPanelInfo;", "C4", "L9", "M9", "O9", "E5", "N9", "topic", "P9", "Lcn/soulapp/cpnt_voiceparty/bean/InterestTagConfigMo;", "G2", "field", "Lcn/soulapp/cpnt_voiceparty/bean/DowngradeRemindModel;", "o2", "a", "Lcn/soulapp/cpnt_voiceparty/bean/DislikeDataBean;", "h4", "liked", "reasons", "ids", "h1", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "i8", "h8", "P0", "I9", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktvmodel/KtvRandomPlayRemainBean;", "O2", "d9", "Ma", "voiceId", "Y8", "Lcn/soulapp/cpnt_voiceparty/soulhouse/singingroom/record/bean/VirtualLiveCanRecordDTO;", "l0", "durationSec", "Lcn/soulapp/cpnt_voiceparty/soulhouse/singingroom/record/bean/VirtualLiveRecordDTO;", "Ba", "M4", "recordId", "L4", "g1", "url", "audioDurationSec", "Lcn/soulapp/cpnt_voiceparty/bean/VoiceRecognizeData;", "Oa", "d2", "Lcom/soulapp/soulgift/bean/CommonDataBo;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/redpack/RedPackInfo;", "s8", "Lcn/soulapp/cpnt_voiceparty/bean/MicroSkinInfo;", "q3", "objectId", "Ea", "Lcn/soulapp/cpnt_voiceparty/soulhouse/othergame/LukCodeResponse;", "Y2", "imageUrl", "R", "Lcn/soulapp/cpnt_voiceparty/soulhouse/soofungame/bean/SooFunCodeInfo;", "x4", "Lcn/soulapp/cpnt_voiceparty/soulhouse/songmachine/bean/SongMachineTab;", "f8", "Lcn/soulapp/cpnt_voiceparty/bean/VisitCardStateBean;", "N4", "Lcn/soulapp/cpnt_voiceparty/bean/VisitHistoryRecordBean;", "P4", "Lcn/soulapp/cpnt_voiceparty/bean/VisitRecordBean;", "O4", "payType", "j7", "unlockPeriodType", "i7", "", "z6", "Lcn/soulapp/cpnt_voiceparty/soulhouse/friendscabin/bean/FriendsCabinInfo;", "P3", "A5", "C5", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lrs0/e;", "x", "applyId", "D", "(Ljava/lang/String;Ljava/lang/Long;)Lrs0/e;", "Q3", "c6", "playTypeList", "w2", "Lcn/soulapp/cpnt_voiceparty/bean/PartyAudioReqTokenBean;", "Lcn/soulapp/android/square/bean/audio/PartyAudioAuthInfo;", LightConstants.BeautyConfigKey.SMOOTH_VERSION_V8, "q5", "Lcn/soulapp/android/square/bean/audio/ChatRoomAudioInfo;", "B9", "j1", "Lcn/soulapp/android/square/bean/audio/ShareRoomAudioInfo;", "N1", "bluePackId", "Lcn/soulapp/cpnt_voiceparty/bean/RobBluePacketInfo;", "K4", "L8", "x6", "n0", "Lcn/soulapp/cpnt_voiceparty/bean/FriendsCabinTemplateBean;", "G4", "templateId", "U9", "userIds", "w6", "y9", "A0", "value", "n7", "materielId", "Ga", "Lcn/soulapp/cpnt_voiceparty/followtab/bean/TabInfo;", "s2", "tabId", com.hihonor.adsdk.adsconversiontools.report.c.a.R0, "Lcn/soulapp/cpnt_voiceparty/bean/CreateOrJoinPrivateRoomBean;", "D0", "climateId", "Lcn/soulapp/cpnt_voiceparty/bean/AiBackgroundRandomName;", "o", "Lcn/soulapp/cpnt_voiceparty/bean/AiBackgroundGenerateInfo;", "wa", "p", "Lcn/soulapp/cpnt_voiceparty/bean/MyGeneratedDataModel;", "m3", "n3", "Lcn/soulapp/cpnt_voiceparty/bean/MyAtmosBagModel;", "j3", "k3", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/ClimateConfigModel;", "f2", "styleId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/ClimateRandomPromptModel;", "g2", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/ClimateGenerateModel;", "x1", "ka", "ia", "Lcn/soulapp/cpnt_voiceparty/bean/KtvLampSignAiInfo;", "T2", "Lcn/soulapp/cpnt_voiceparty/bean/GroupChatWidgetBean;", "O3", "Lcn/soulapp/cpnt_voiceparty/widget/friendcabinbanner/FriendCabinRelationStarScoreData;", "k6", "b6", "Lcn/soulapp/cpnt_voiceparty/bean/RoomTransferCheckData;", "k4", "H0", "y8", "Lcn/soulapp/cpnt_voiceparty/soulhouse/gamematch/GameCategoryConfigBean;", "M7", "bizParam", "Lcn/soulapp/cpnt_voiceparty/soulhouse/gamematch/GameMatchResultModel;", "z9", "matchId", "m0", "D9", "k1", "roomIdEcpt", "positionSortPairs", "Lcn/soulapp/cpnt_voiceparty/soulhouse/left/banner/bean/CommercialBannerDataBean;", "i2", "L6", "M6", "ownerId", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/bottom/emoji/bean/RoomExpressionInfo;", "c8", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/bottom/emoji/bean/ExpressionResourceInfo;", "A1", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/bottom/emoji/bean/VirtualButlerExpressionModel;", "g8", "j", "c1", "Y4", "Lcn/soulapp/cpnt_voiceparty/soulhouse/gamematch/GameCategoryBean;", "X7", com.hihonor.adsdk.adsconversiontools.report.c.a.Q0, "Lcn/soulapp/cpnt_voiceparty/soulhouse/unparalleledlevel/SendRecordModel;", "H4", "targetUserIdEncrypt", "c9", "X9", "Lcn/soulapp/cpnt_voiceparty/soulhouse/unparalleledlevel/UnparalleledLevelCardInfo;", "D4", "Lcn/soulapp/cpnt_voiceparty/bean/RecommendTabDataBean;", "M3", "K", "pageNum", "Lcn/soulapp/cpnt_voiceparty/soulhouse/aipodcast/AiPodCastQuestionDataBean;", "B1", "Y0", "Lcn/soulapp/cpnt_voiceparty/soulhouse/game/private/GamePrivateConfigBean;", "Y7", SocialConstants.PARAM_APP_DESC, "T7", "g5", "O7", "oa", "Na", "F7", "showMaterialId", "G7", "Lcn/soulapp/cpnt_voiceparty/soulhouse/qubaoshow/bean/QubaoShowInfoDataBean;", "I7", "E7", com.hihonor.adsdk.adsconversiontools.report.c.a.Y0, "agree", LightConstants.BeautyConfigKey.SMOOTH_VERSION_V9, "u9", "Lcn/soulapp/cpnt_voiceparty/soulhouse/partyinteraction/bean/PartyInteractionPanel;", "x3", "interactId", "optionId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/partyinteraction/bean/PartyInteractionVoteResult;", "Q9", "Lcn/soulapp/cpnt_voiceparty/soulhouse/partyinteraction/bean/PartyInteractionIntroResult;", "y1", ViewProps.ENABLED, "qa", "granted", com.alipay.sdk.m.n.b.f175698k, "Lcn/soulapp/cpnt_voiceparty/bean/InviteOnlineFriendCandidateResp;", "H2", "targetUserIdEcptList", "V8", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final g f225309a;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TOTAL_CACHED_LEN, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f225309a = new g();
    }

    private g() {
    }

    public static /* synthetic */ rs0.e C(g gVar, String str, Integer num, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num = null;
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return gVar.B(str, num, str2);
    }

    public static /* synthetic */ rs0.e G0(g gVar, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        return gVar.F0(num);
    }

    public static /* synthetic */ rs0.e H(g gVar, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str4 = null;
        }
        return gVar.G(str, str2, str3, str4);
    }

    public static /* synthetic */ rs0.e H7(g gVar, String str, int i11, String str2, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            str2 = null;
        }
        return gVar.G7(str, i11, str2);
    }

    private final String I4(String userId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 206, new Class[]{String.class}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        if (cn.soulapp.android.client.component.middle.platform.utils.user.a.G(userId)) {
            return userId;
        }
        String strB = cn.soulapp.android.client.component.middle.platform.utils.user.a.b(userId);
        v.i(strB, "genUserIdEcpt(userId)");
        return strB;
    }

    public static /* synthetic */ rs0.e I5(g gVar, String str, Integer num, int i11, String str2, String str3, String str4, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            num = 0;
        }
        return gVar.H5(str, num, (i12 & 4) != 0 ? 1 : i11, str2, (i12 & 16) != 0 ? null : str3, (i12 & 32) != 0 ? null : str4);
    }

    public static /* synthetic */ rs0.e V1(g gVar, String str, int i11, int i12, boolean z11, int i13, Object obj) {
        if ((i13 & 8) != 0) {
            z11 = cn.soulapp.cpnt_voiceparty.followtab.helper.f.f141761a.m();
        }
        return gVar.U1(str, i11, i12, z11);
    }

    public static /* synthetic */ rs0.e a8(g gVar, String str, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num = null;
        }
        if ((i11 & 4) != 0) {
            num2 = null;
        }
        return gVar.Z7(str, num, num2);
    }

    public static /* synthetic */ rs0.e i(g gVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        return gVar.h(str, str2, str3);
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> A0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 567, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).changeTone(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ExpressionResourceInfo>> A1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 603, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAddExpressionResource().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomerCardModel>> A2(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 123, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        if (targetUserIdEcpt == null) {
            targetUserIdEcpt = "";
        }
        rs0.e eVarCompose = iSoulHouse.getGroupUserMedalInfo(targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BistroMusicWaitSongInfo>> A3(@Nullable String roomId, int pageIndex) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(pageIndex)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DEMUXER_STALL_500, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getPickMusicList(roomId, pageIndex).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SoupResult>> A4(int played, int label, int difficulty, @NotNull String pageCursor) {
        Object[] objArr = {new Integer(played), new Integer(label), new Integer(difficulty), pageCursor};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 164, new Class[]{cls, cls, cls, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(pageCursor, "pageCursor");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("played", Integer.valueOf(played));
        linkedHashMap.put("label", Integer.valueOf(label));
        linkedHashMap.put("difficulty", Integer.valueOf(difficulty));
        linkedHashMap.put("pageCursor", pageCursor);
        linkedHashMap.put("pageSize", 10);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSoupList(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> A5(@Nullable Integer seatNo, @Nullable String targetUserIdEcpt, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, targetUserIdEcpt, roomId}, this, changeQuickRedirect, false, 543, new Class[]{Integer.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).inviteUpSeat(seatNo, targetUserIdEcpt, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketContractGiftBean>> A6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicContractGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> A7(@Nullable Integer actionType, @Nullable String targetUserIdEcpt, @Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{actionType, targetUserIdEcpt, roomId, roundId}, this, changeQuickRedirect, false, 319, new Class[]{Integer.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpSeatDown(actionType, targetUserIdEcpt, roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Integer>> A8(@Nullable String roomId, @Nullable String commodityId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, commodityId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestComboLimit(roomId, commodityId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<StartGameBean>> A9(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 402, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).startGuineaPigGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> B(@Nullable String roomId, @Nullable Integer seatId, @Nullable String songId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, seatId, songId}, this, changeQuickRedirect, false, TbsListener.ErrorCode.TPATCH_FAIL, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        rs0.e eVarCompose = (songId == null || songId.length() == 0 ? iSoulHouse.applyUpSeatById(roomId, seatId) : iSoulHouse.applyUpSeatById(roomId, songId, null)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "observable.compose(RxSch…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> B0(@Nullable String typeCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{typeCode}, this, changeQuickRedirect, false, 79, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).chatRoomSwitches(typeCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AiPodCastQuestionDataBean>> B1(@Nullable String roomId, int pageNum, int pageSize) {
        Object[] objArr = {roomId, new Integer(pageNum), new Integer(pageSize)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 616, new Class[]{String.class, cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getAiPodCastQuestionList(roomId, pageNum, pageSize).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomGuideUserListDataBean>> B2(@Nullable Integer source, int pageIndex) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source, new Integer(pageIndex)}, this, changeQuickRedirect, false, 219, new Class[]{Integer.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getGuideUserList(source, Integer.valueOf(pageIndex)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PkRuleConfig>> B3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 127, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPkConfig(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<StudyRoomInfo>> B4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_BARRAGE_MASK, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getStudyRoomInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> B5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 23, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).inviteUpSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketContractBean>> B6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicMarketAnswerInvite(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> B7(@Nullable Integer actionType, @Nullable String targetUserIdEcpt, @Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{actionType, targetUserIdEcpt, roomId, roundId}, this, changeQuickRedirect, false, 316, new Class[]{Integer.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpSeatUp(actionType, targetUserIdEcpt, roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> B8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 246, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestConfirmPayToppingState(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<ChatRoomAudioInfo>>> B9(@Nullable Long roomId, @Nullable String joinCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, joinCode}, this, changeQuickRedirect, false, 552, new Class[]{Long.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", roomId);
        linkedHashMap.put("joinCode", joinCode);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).startPlayParty(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<VirtualLiveRecordDTO>>> Ba(@Nullable String roomId, @Nullable String audioUrl, int durationSec) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, audioUrl, new Integer(durationSec)}, this, changeQuickRedirect, false, 523, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVirtualLiveRecordApi) ApiConstants.PLAY_API.i(IVirtualLiveRecordApi.class)).uploadRecord(roomId, audioUrl, durationSec).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IVirtua…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> C0(@Nullable String roomId, @Nullable String songName, @Nullable String singerName) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, songName, singerName}, this, changeQuickRedirect, false, 428, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).checkAudioNameAndSingerName(roomId, songName, singerName).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<BistroMusicSongInfo>>> C1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 384, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getAllCallSongList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<HeartBeatGiftInfoBean>>> C2(@Nullable String roomId, int seatId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(seatId)}, this, changeQuickRedirect, false, 236, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getHeartBeatMicroGift(roomId, Integer.valueOf(seatId)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PkModel>> C3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 128, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPkGameInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<StudyRoomTopicPanelInfo>> C4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 500, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getStudyRoomTopicPanelInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> C5(@Nullable Integer seatNo, @Nullable Integer replyResult, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, replyResult, roomId}, this, changeQuickRedirect, false, 544, new Class[]{Integer.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).inviteUpSeatReply(roomId, replyResult, seatNo).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketBaseBean>> C6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicMarketCancel(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> C7(@Nullable Integer respondType, @Nullable Integer respond, @Nullable String targetUserIdEcpt, @Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{respondType, respond, targetUserIdEcpt, roomId, roundId}, this, changeQuickRedirect, false, 317, new Class[]{Integer.class, Integer.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpSeatUpRespond(respondType, respond, targetUserIdEcpt, roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> C8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 84, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestJoinChorus(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> C9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 404, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).startRandomMatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomRandomResultBean>> Ca(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 331, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).useDressUpProduct(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> D(@Nullable String roomId, @Nullable Long applyId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, applyId}, this, changeQuickRedirect, false, 546, new Class[]{String.class, Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).applyUpSeatReply(roomId, applyId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CreateOrJoinPrivateRoomBean>> D0(@Nullable String userIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userIdEcpt}, this, changeQuickRedirect, false, 572, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).checkCreateOrJoinPrivateRoom(userIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void D1(@NotNull LifecycleOwner owner, @Nullable String str, @Nullable String str2, int i11, @Nullable s<ChatRoomSongDataModel> sVar) {
        if (PatchProxy.proxy(new Object[]{owner, str, str2, new Integer(i11), sVar}, this, changeQuickRedirect, false, 105, new Class[]{LifecycleOwner.class, String.class, String.class, Integer.TYPE, s.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(owner, "owner");
        ((ObservableSubscribeProxy) ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).allRecSong(str, str2, i11).compose(RxSchedulers.observableToMain()).as(com.uber.autodispose.b.a(com.uber.autodispose.android.lifecycle.b.e(owner)))).subscribe(HttpSubscriber.create(sVar));
    }

    @NotNull
    public final rs0.e<HttpResult<List<HistoryNameModel>>> D2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 182, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getHistoryNameList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<String>> D3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 131, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPkTitle().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<UnparalleledLevelCardInfo>>> D4(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 613, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSubCardMedalShow(targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> D5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 26, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).inviteUpSeatReply(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketContractBean>> D6(@NotNull String outerRoomType, @Nullable String outerRoomId, @Nullable String targetUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId, targetUserId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(outerRoomType, "outerRoomType");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicContract(outerRoomType, outerRoomId, targetUserId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> D7(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 321, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpSupport(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RandomRecBean>> D8(@Nullable Integer classifyCode, @Nullable Integer playType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{classifyCode, playType}, this, changeQuickRedirect, false, 180, new Class[]{Integer.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestRandomRec(classifyCode, playType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> D9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 597, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).startRoomMatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> Da(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 470, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).useEndReport(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> E(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 433, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).applyUpSeatReply(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomLowQualityBean>> E0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 181, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).checkLowQuality(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomRelationBean>> E1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_READ_MODE, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAllRelations().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<HotTopicRoomListResp>> E2(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 210, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.LIVE_API.i(IRoomApi.class)).getHotTopicRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IRoomAp…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<List<String>>>> E3(@Nullable @Query("roomId") String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 130, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPkUserList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SupplyStationModel>> E4(@Nullable String pageCursor, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, roomId}, this, changeQuickRedirect, false, 257, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSupplyStationProductList(pageCursor, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> E5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 504, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).inviteUpStudyRoomSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketBaseBean>> E6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicMarketInviteRenewal(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> E7(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class);
        if (roomId == null) {
            roomId = "";
        }
        rs0.e eVarCompose = iSoulHouse.qubaoShowEndDisplay(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<RelieveEndModel>>> E8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DECODE_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestRelieveEnd(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> E9(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 147, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).startRound(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Ea(long objectId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(objectId)}, this, changeQuickRedirect, false, 531, new Class[]{Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).useMyVoiceSkin(objectId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> F(@Nullable String roomId, @Nullable String targetUidEcpt, int type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUidEcpt, new Integer(type)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).approvalRelieveConnect(roomId, targetUidEcpt, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserUsageBean>> F0(@Nullable Integer scene) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{scene}, this, changeQuickRedirect, false, 55, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ILiveApi) ApiConstants.LIVE_API.i(ILiveApi.class)).getUserUsageGuidePop(scene).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ILiveAp…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<OnlineUserModel>>> F1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 30, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).applyMicroList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<IconModel>> F2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 54, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestIconMeta().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> F3(@Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor}, this, changeQuickRedirect, false, 217, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        if (pageCursor == null) {
            pageCursor = "";
        }
        rs0.e eVarCompose = iSoulHouse.getPlanetBRoomList(pageCursor).timeout(10L, TimeUnit.SECONDS).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<FirstChargeTaskModel>>> F4(@Nullable String roomId, @Nullable String ownerIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, ownerIdEcpt}, this, changeQuickRedirect, false, 229, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getTaskDetail(roomId, ownerIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> F5(@Nullable String roomId, int locationType, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(locationType), targetUserIdEcpt}, this, changeQuickRedirect, false, 125, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).inviteUserJoinGame(roomId, locationType, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketBaseBean>> F6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicMarketInviteSign(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> F7(@Nullable String targetUserIdEcpt, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt, roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class);
        if (targetUserIdEcpt == null) {
            targetUserIdEcpt = "";
        }
        if (roomId == null) {
            roomId = "";
        }
        rs0.e eVarCompose = iSoulHouse.inviteUpSeat(targetUserIdEcpt, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> F8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestRelieveRenew(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> F9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 438, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).startThrowingThunderGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Fa(@Nullable String roomId, @Nullable String zegoStreamId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, zegoStreamId}, this, changeQuickRedirect, false, 21, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).userCloseMicro(roomId, zegoStreamId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> G(@Nullable String roomId, @Nullable String targetUserIdEcpt, @Nullable String zegoStreamId, @Nullable String bizSource) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt, zegoStreamId, bizSource}, this, changeQuickRedirect, false, 20, new Class[]{String.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        if (bizSource == null || bizSource.length() == 0) {
            rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).approvalUpSeatApply(roomId, targetUserIdEcpt, zegoStreamId).compose(RxSchedulers.observableToMain());
            v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
            return eVarCompose;
        }
        rs0.e eVarCompose2 = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).approvalUpSeatApply(roomId, targetUserIdEcpt, zegoStreamId, bizSource).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose2, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose2;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> G1(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 47, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getApplySwitch(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<InterestTagConfigMo>> G2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 509, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getInterestTagConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> G3(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 216, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPlanetClassifyCustomList(map).timeout(10L, TimeUnit.SECONDS).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FriendsCabinTemplateBean>> G4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 559, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getTemplateList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<JoinRoomBean>> G5(@Nullable String ownerIdEcpt, @Nullable Integer joinType, @Nullable Integer joinMode, @Nullable String recPageId, @Nullable String joinCode, @Nullable String ext) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{ownerIdEcpt, joinType, joinMode, recPageId, joinCode, ext}, this, changeQuickRedirect, false, 303, new Class[]{String.class, Integer.class, Integer.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        HashMap map = new HashMap();
        if (ownerIdEcpt != null) {
            map.put("hostIdEcpt", ownerIdEcpt);
        }
        if (joinType != null) {
            map.put("joinType", joinType);
        }
        if (joinMode != null) {
            map.put("joinMode", joinMode);
        }
        if (recPageId != null) {
            map.put("recPageId", recPageId);
        }
        if (joinCode != null) {
            map.put("joinCode", joinCode);
        }
        if (ext != null) {
            map.put("ext", ext);
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).joinByHostId(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> G6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 302, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicMarketPickSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> G7(@Nullable String roomId, int replyResult, @Nullable String showMaterialId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(replyResult), showMaterialId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class);
        if (roomId == null) {
            roomId = "";
        }
        if (showMaterialId == null) {
            showMaterialId = "";
        }
        rs0.e eVarCompose = iSoulHouse.inviteUpSeatReply(roomId, replyResult, showMaterialId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> G8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 446, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestUseFMCode(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> G9(@NotNull String roomId, long soupId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Long(soupId)}, this, changeQuickRedirect, false, 166, new Class[]{String.class, Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).startTurtleSoupGame(roomId, soupId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> Ga(@Nullable String songId, @Nullable String materielId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{songId, materielId}, this, changeQuickRedirect, false, 569, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).validSongAndMateriel(songId, materielId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> H0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 591, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).chooseTransferUser(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PartyAssistantModel>> H1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 255, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAssistantRights(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<InviteOnlineFriendCandidateResp>> H2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DOWNLOAD_BYTES, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getInviteOnlineFriendCandidates(q0.f(m.a("roomId", roomId))).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> H3(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 215, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPlanetClassifyLocalCityList(map).timeout(10L, TimeUnit.SECONDS).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<List<SendRecordModel>>>> H4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 610, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getUnparalleledLevelCardGiftRecords().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<JoinRoomBean>> H5(@Nullable String roomId, @Nullable Integer joinType, int joinMode, @Nullable String recPageId, @Nullable String joinCode, @Nullable String ext) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, joinType, new Integer(joinMode), recPageId, joinCode, ext}, this, changeQuickRedirect, false, 8, new Class[]{String.class, Integer.class, Integer.TYPE, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        SoulHouseExtensionKt.u0(this, "soulHouse", "调用进房接口：roomId=" + roomId + ",joinType=" + joinType + ",joinMode=" + joinMode + ",recPageId=" + recPageId + ",joinCode=" + joinCode);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).joinChatRoom(roomId, joinType, Integer.valueOf(joinMode), recPageId, joinCode, ext).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketContractBean>> H6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicMarketProducerSelf(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> H8(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 403, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).requestVolcGameCode(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> H9(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        Pair[] pairArr = new Pair[2];
        if (roomId == null) {
            roomId = "";
        }
        pairArr[0] = m.a("roomId", roomId);
        pairArr[1] = m.a("ownerId", cn.soulapp.android.client.component.middle.platform.utils.user.a.w());
        rs0.e eVarCompose = iSoulHouse.startVideoRecord(r0.n(pairArr)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Ha(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 416, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).vlAgreePlay(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> I(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 373, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).approveAuctionPk(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> I0(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 231, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).choseLike(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomAuctionInfo>> I1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 75, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAuctionInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvSimpleSongModel>> I2(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 80, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvAddedSongs(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> I3(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 214, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPlanetClassifyPlayList(map).timeout(10L, TimeUnit.SECONDS).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvPlaySongDetail>> I6(@Nullable String roomId, @Nullable String clientPublicKey) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, clientPublicKey}, this, changeQuickRedirect, false, 101, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).musicPubsPlaySongDetail(roomId, clientPublicKey).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<QubaoShowInfoDataBean>> I7(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_DEC_CREATE_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class);
        if (roomId == null) {
            roomId = "";
        }
        rs0.e eVarCompose = iSoulHouse.queryQubaoShowInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SpeedMatchUpdateResult>> I8(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 143, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).reviewSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> I9(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 517, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).stopRandomPlayKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Ia(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 415, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).vlInvitePlay(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> J(@Nullable String roomId, @NotNull String type, @Nullable Integer code, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, type, code, targetUserIdEcpt}, this, changeQuickRedirect, false, 68, new Class[]{String.class, String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(type, "type");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).approveAuctionV2(roomId, type, code, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> J0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 308, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).closeKtvMatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionContentResult>> J1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getAuctionPkContent().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvAudioUploadInfoDataBean>> J2(@Nullable String id2, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{id2, roomId}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_OBJECT, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvAudioUploadInfo(id2, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<RoomTypeBean>>> J3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 213, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPlanetPartyTabList().timeout(10L, TimeUnit.SECONDS).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<OnlineUserModel>>> J4(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 15, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getUserList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PreJoinCheckModel>> J5(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 204, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).joinPreCheck(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> J6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_GET_NETWORK_CONNECT_COUNT, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).musicSingScore(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<VoicePartyRetainBean>> J7() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 57, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).queryBackWindow().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> J8(@Nullable String receiveUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{receiveUserId}, this, changeQuickRedirect, false, 227, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).revokeLevelMedal(1, receiveUserId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> J9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 439, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).stopThrowingThunderGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Ja(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 420, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).vlRevokePlay(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> K(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 615, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).askQuestion(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> K0(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 62, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).closeMicro(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionPkMatchInfo>> K1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_ALL_SEI_THRESHOLD, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getAuctionPkMatchInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<String>>> K2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_HIJACK_RETRY, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvAudioUploadRule(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserSendListModel>> K3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 118, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPresentedList(1).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RobBluePacketInfo>> K4(@Nullable String bluePackId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{bluePackId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ROTATION, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getUserRobResult(bluePackId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<JoinRoomBean>> K5() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 56, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).joinRandom(0).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> K6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 334, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).nawaCrowdCheck().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BoardTopicModel>> K7(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).queryBlockBoard(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> K8(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 122, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        IActivityApi iActivityApi = (IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class);
        if (targetUserIdEcpt == null) {
            targetUserIdEcpt = "";
        }
        rs0.e eVarCompose = iActivityApi.revokeWushuangMedal(targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> K9(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 3, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        Pair[] pairArr = new Pair[2];
        if (roomId == null) {
            roomId = "";
        }
        pairArr[0] = m.a("roomId", roomId);
        pairArr[1] = m.a("ownerId", cn.soulapp.android.client.component.middle.platform.utils.user.a.w());
        rs0.e eVarCompose = iSoulHouse.stopVideoRecord(r0.n(pairArr)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Ka(@Nullable String roomId, @Nullable Long backgroundId, @Nullable Long nawaMetaId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, backgroundId, nawaMetaId}, this, changeQuickRedirect, false, 418, new Class[]{String.class, Long.class, Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).vlStartPlay(roomId, backgroundId, nawaMetaId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> L(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 256, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).assistantRightsSwitch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomRandomResultBean>> L0(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 103, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).closeRoomRandomTopic(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionRule>> L1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 76, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAuctionRule(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvChallengeDataBean>> L2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvChallengeDataInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<QubaoGiftListBean>> L3(@Nullable String roomId, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, pageCursor}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getQubaoGiftList(roomId, pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<VirtualLiveRecordDTO>>> L4(long recordId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(recordId)}, this, changeQuickRedirect, false, 525, new Class[]{Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVirtualLiveRecordApi) ApiConstants.PLAY_API.i(IVirtualLiveRecordApi.class)).getRecordDetail(recordId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IVirtua…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> L5(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 41, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).kickOutUser(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> L6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 600, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).newBarrageGameChooseTeam(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> L7(@Nullable Integer sourceType, @Nullable Integer pageSceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sourceType, pageSceneId}, this, changeQuickRedirect, false, 51, new Class[]{Integer.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryFewRecList(sourceType, pageSceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<RobBluePacketInfo>>> L8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).robBluePack(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> L9(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 501, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).studyRoomDownSeat(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> La(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 419, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).vlStopPlay(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> M(@Nullable String roomId, @Nullable Integer replyResult, @Nullable Integer relationshipCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, replyResult, relationshipCode}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_MS_GAPS, new Class[]{String.class, Integer.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).auctionPkAgreeToAuction(roomId, replyResult, relationshipCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<ClueItem>>> M0(@Nullable String roomId, long gameId, long soupId, int type) {
        Object[] objArr = {roomId, new Long(gameId), new Long(soupId), new Integer(type)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Long.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 159, new Class[]{String.class, cls, cls, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).clueList(roomId, gameId, soupId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<AudioEffectModel>>> M1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 40, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAudioEffectInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<KtvDressUpTheMallTypeBean>>> M2(@Nullable String sceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId}, this, changeQuickRedirect, false, 327, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvDressUpTheMallTabList(sceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<RecommendTabDataBean>>> M3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 614, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRecommendClassifyTabConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<List<VirtualLiveRecordDTO>>>> M4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_STREAM_DURATION, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVirtualLiveRecordApi) ApiConstants.PLAY_API.i(IVirtualLiveRecordApi.class)).getRecordList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IVirtua…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<HashMap<String, Object>>> M5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 270, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).ktvChallengeClap(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> M6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 601, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).newBarrageGameEncourage(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GameCategoryConfigBean>> M7() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 593, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryGameMatchGameCategoryList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> M8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 64, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).rtcModifyReport(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> M9(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 502, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).studyRoomDownSeatByMaster(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> Ma(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 520, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("targetUserIdEcpt", targetUserIdEcpt);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).voiceCardLike(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionPkInfo>> N(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 371, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).auctionPkInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> N0(@Nullable String songId, @Nullable Integer type, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{songId, type, roomId}, this, changeQuickRedirect, false, 97, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).collectSong(songId, type, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<ShareRoomAudioInfo>>> N1(@Nullable Long roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SAMPLE_RATE, new Class[]{Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getAudioShareInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvGiftConfigList>> N2(@NotNull String roomId, @NotNull String sceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, sceneId}, this, changeQuickRedirect, false, 337, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(sceneId, "sceneId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvGiftInfo(roomId, sceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<MusicRecommendRoomBean>>> N3(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 254, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRecommendRoomId(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<VisitCardStateBean>>> N4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 536, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.COMMERCIAL_API.i(ISoulHouse.class)).getVisitCardStat().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "COMMERCIAL_API.service(I…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Boolean>>> N5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 307, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).ktvMatchVote(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> N6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 86, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).nextKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionGiftModel>> N7(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 69, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryGiftPanel(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<OnlineUserModel>>> N8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 31, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).searchApplyMicro(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> N9(@Nullable String roomId, @Nullable Integer type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, type}, this, changeQuickRedirect, false, 505, new Class[]{String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).studyRoomInviteReply(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> Na(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DNS_START_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.USER.i(ISoulHouse.class)).voiceDress(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "USER.service(ISoulHouse:…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> O(@Nullable String roomId, @Nullable String roundId, @Nullable Integer optType, @Nullable String targetRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, roundId, optType, targetRoomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PAD_HELLO, new Class[]{String.class, String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).auctionPkMute(roomId, roundId, optType, targetRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> O0(@Nullable String roomId, @Nullable String type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, type}, this, changeQuickRedirect, false, 74, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).completeAuction(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomGuideUserListDataBean>> O1(@Nullable Integer pageCursor, int pageSize) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, new Integer(pageSize)}, this, changeQuickRedirect, false, 221, new Class[]{Integer.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getBGuideUserList(pageCursor, Integer.valueOf(pageSize)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvRandomPlayRemainBean>>> O2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 518, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.LIVE_API.i(IRoomPlayApi.class)).getKtvRandomPlayRemainMsg(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GroupChatWidgetBean>> O3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 587, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelatedRoom().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<VisitRecordBean>>> O4(long id2) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(id2)}, this, changeQuickRedirect, false, 538, new Class[]{Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.COMMERCIAL_API.i(ISoulHouse.class)).getVisitRecord(id2).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "COMMERCIAL_API.service(I…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvPlaySongDetail>> O5(@Nullable String roomId, @Nullable String clientPublicKey) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, clientPublicKey}, this, changeQuickRedirect, false, 100, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).ktvPlaySongDetail(roomId, clientPublicKey).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<JoinRoomConfirmBean>> O6(@Nullable String roomId, @Nullable Integer sourceId, @Nullable Integer joinMode, @Nullable Integer joinType, @Nullable String joinCode, @Nullable String fromUserId, @Nullable String joinExt, @Nullable String relationTargetUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, sourceId, joinMode, joinType, joinCode, fromUserId, joinExt, relationTargetUserId}, this, changeQuickRedirect, false, 205, new Class[]{String.class, Integer.class, Integer.class, Integer.class, String.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        String str = !TextUtils.isEmpty(fromUserId) ? fromUserId : relationTargetUserId;
        if (str == null) {
            str = "";
        }
        String strI4 = I4(str);
        Pair[] pairArr = new Pair[7];
        pairArr[0] = m.a("joinCode", joinCode);
        pairArr[1] = m.a("guideUserIdEcpt", strI4);
        cn.meta.android.utils.b.Companion aVar = cn.meta.android.utils.b.INSTANCE;
        pairArr[2] = m.a(bt.f217511w, aVar.c());
        pairArr[3] = m.a(com.alipay.sdk.m.t.e.f175926p, VoiceTransHelper.INSTANCE.a());
        pairArr[4] = m.a("systemVersion", Integer.valueOf(Build.VERSION.SDK_INT));
        pairArr[5] = m.a("ram", Long.valueOf(aVar.g()));
        HashMap<String, Object> mapH = j.h(joinExt != null ? joinExt : "");
        if (mapH == null) {
            mapH = new HashMap<>();
        }
        pairArr[6] = m.a("joinExt", mapH);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).notifyServerJoinSuccess(roomId, sourceId, joinMode, joinType, j.b(r0.o(pairArr))).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> O7() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 621, new Class[0], rs0.e.class);
        return patchProxyResultProxy.isSupported ? (rs0.e) patchProxyResultProxy.result : T7("8", "1", "派对快捷破冰消息");
    }

    @NotNull
    public final rs0.e<HttpResult<KtvSearchAssociativeModel>> O8(@Nullable String keyword) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{keyword}, this, changeQuickRedirect, false, 92, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).searchAssociation(keyword).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> O9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 503, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).studyRoomJoinSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<VoiceRecognizeData>>> Oa(@Nullable String url, int audioDurationSec) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{url, new Integer(audioDurationSec)}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("audioUrl", url);
        linkedHashMap.put("audioDuration", Integer.valueOf(audioDurationSec));
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).voiceRecognize(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> P(@Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, roundId}, this, changeQuickRedirect, false, 390, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).auctionPkPlayAgain(roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> P0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 516, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).confirmRandomLootKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> P1(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 211, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getBRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvRecordMaterielData>>> P2(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 311, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvRecordsMaterielData(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FriendsCabinInfo>> P3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 542, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getRelationHouseInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<VisitHistoryRecordBean>>> P4(@Nullable String pageCursor, int pageSize) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, new Integer(pageSize)}, this, changeQuickRedirect, false, 537, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.COMMERCIAL_API.i(ISoulHouse.class)).getVisitRecordList(pageCursor, pageSize).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "COMMERCIAL_API.service(I…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> P5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 88, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).ktvSong2Top(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvLampSignListInfo>> P7(@Nullable String pickId, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pickId, roomId}, this, changeQuickRedirect, false, 355, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryKtvLampSignAllShowList(pickId, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvSimpleSongModel>> P8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 93, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).searchKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> P9(@Nullable String roomId, @Nullable Integer type, @Nullable String topic) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, type, topic}, this, changeQuickRedirect, false, 506, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).studyRoomUpdateTopic(roomId, type, topic).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SetCommonResult>> Pa(int medalType, int groupMedalLevel, int optType) {
        Object[] objArr = {new Integer(medalType), new Integer(groupMedalLevel), new Integer(optType)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 132, new Class[]{cls, cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).wearOptMedal(medalType, groupMedalLevel, optType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Q(@Nullable Integer scene, @Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{scene, roomId, roundId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_PRE_STALL_500, new Class[]{Integer.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).auctioneerDownSeat(scene, roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomRandomResultBean>> Q0(@Nullable String roomId, @Nullable String topicId, @Nullable String topicName) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, topicId, topicName}, this, changeQuickRedirect, false, 104, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).confirmRoomRandomTopic(roomId, topicId, topicName).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BulletGameInfo>> Q1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 445, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getBarrageGameInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvSimpleSongModel>> Q2(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 81, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> Q3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 547, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getRelationHouseRule(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<RoomUser>>> Q4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 414, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getVlMicroList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> Q5(@Nullable String functionId, @Nullable String state, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{functionId, state, roomId}, this, changeQuickRedirect, false, 98, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).ktvSwitchUpdate(functionId, state, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<AuctionPkMatchInfo>>> Q6(@Nullable String roomId, int actionType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(actionType)}, this, changeQuickRedirect, false, 370, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).onAuctionPkMatch(roomId, Integer.valueOf(actionType)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvLampSignListInfo>> Q7(@Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor}, this, changeQuickRedirect, false, 354, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryKtvLampSignList(pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<String>>> Q8(@Nullable String keyword, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{keyword, roomId}, this, changeQuickRedirect, false, 273, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).searchSongMachineAssociation(keyword, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<PartyInteractionVoteResult>>> Q9(long roomId, @Nullable String interactId, @Nullable String optionId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(roomId), interactId, optionId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME, new Class[]{Long.TYPE, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).submitQuickInteractVote(r0.l(m.a("roomId", Long.valueOf(roomId)), m.a("interactId", interactId), m.a("optionId", optionId))).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<WelcomeBean>> Qa(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 324, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).welcomeNewUser(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> R(@Nullable String roomId, @Nullable Integer gameId, @Nullable String imageUrl) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, gameId, imageUrl}, this, changeQuickRedirect, false, 533, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", roomId);
        linkedHashMap.put("gameId", gameId);
        linkedHashMap.put("imageUrl", imageUrl);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).auditLukDrawGuessImage(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> R0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 138, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).confirmSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvBeatDetailBean>> R1(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 462, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getBeatScoreBoard(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvSpecialEffectInfoBean>> R2(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 336, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvSpecialEffectInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelationUserRecEnvelope>> R3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 220, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelationRecommendUsers().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<VirtualLiveNawaModel>> R4(@Nullable @Query("roomId") String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 417, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getVlNawaData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<KtvTab>>> R5(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 99, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).ktvTab(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> R6(@Nullable String roomId, @Nullable String bagId, @Nullable Integer needFollow) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, bagId, needFollow}, this, changeQuickRedirect, false, 39, new Class[]{String.class, String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).onFortuneBagJoin(roomId, bagId, needFollow).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvLampSignListInfo>> R7(@Nullable String pickId, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pickId, roomId}, this, changeQuickRedirect, false, 356, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryKtvLampSignShowList(pickId, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SongListNetBean>> R8(@Nullable String keyword, @Nullable String pageCursor, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{keyword, pageCursor, roomId}, this, changeQuickRedirect, false, 274, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).searchSongMachineSong(keyword, pageCursor, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> R9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 353, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).switchRoomFunction(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> S(@Nullable Integer index) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{index}, this, changeQuickRedirect, false, 425, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).avatarDown(index).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> S0(@NotNull String roomId, @NotNull String clueContent) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, clueContent}, this, changeQuickRedirect, false, 161, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(clueContent, "clueContent");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).confirmValidClue(roomId, clueContent).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BigVipInfo>> S1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_STOP_SOURCE_ASYNC, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getBigVipInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvZoneInfo>> S2(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 253, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getKtvZoneInfo(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelieveConfigData>> S3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 361, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelieveConfigData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<VirtualLivePanelModel>> S4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 413, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getVlPanelData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> S5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 408, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).leaveGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> S6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).onLotteryLike(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserListResult>> S7(@Nullable String outerRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomId}, this, changeQuickRedirect, false, 150, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).queryLeftPanelSeat("chat_live", outerRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> S8(int type, @Nullable String roomId, @Nullable Long roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(type), roomId, roundId}, this, changeQuickRedirect, false, 437, new Class[]{Integer.TYPE, String.class, Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).selectTopic(type, roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> S9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 235, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).switchSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> T(@Nullable String friendId, @Nullable Integer index, @Nullable Integer relationType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{friendId, index, relationType}, this, changeQuickRedirect, false, 424, new Class[]{String.class, Integer.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).avatarUp(friendId, index, relationType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CreateRoomModel>> T0(int classifyId, int topicId, @NotNull String roomName, @Nullable String backgroundId, int playType, @Nullable String mFmCode, @Nullable String recTopicId, int privateStatus, @Nullable String ext, @Nullable String functionCodes, @Nullable String bizExt) {
        Object[] objArr = {new Integer(classifyId), new Integer(topicId), roomName, backgroundId, new Integer(playType), mFmCode, recTopicId, new Integer(privateStatus), ext, functionCodes, bizExt};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 7, new Class[]{cls, cls, String.class, String.class, cls, String.class, String.class, cls, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomName, "roomName");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).createChatRoom(roomName, classifyId, 0, topicId, backgroundId, playType, mFmCode, recTopicId, privateStatus, ext, functionCodes, bizExt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CeremonyScoreRuleBean>> T1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_LAZY_SEEK, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getCeremonyScoreRule().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvLampSignAiInfo>>> T2(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 586, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getLampSignAiContent(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelieveEndModel>> T3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelieveEndData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<List<WushuangMedalRecordModel>>>> T4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 121, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getWushuangMedalRecordList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<List<WallAvatarModel>>>> T5(int index) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(index)}, this, changeQuickRedirect, false, 422, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).loadAvailableAvatar(index).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> T6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 411, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).onPartyLike(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> T7(@NotNull String businessId, @NotNull String functionId, @NotNull String desc) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{businessId, functionId, desc}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(businessId, "businessId");
        v.j(functionId, "functionId");
        v.j(desc, "desc");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryMapOnlineSwitchState(businessId, functionId, desc).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> T8(@Nullable String roomId, @Nullable String bundleId, @Nullable String expressionId, int frameType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, bundleId, expressionId, new Integer(frameType)}, this, changeQuickRedirect, false, 335, new Class[]{String.class, String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        HashMap map = new HashMap();
        AnyExtKt.g(map, "roomId", roomId);
        AnyExtKt.g(map, "bundleId", bundleId);
        AnyExtKt.g(map, "expressionId", expressionId);
        AnyExtKt.g(map, "frameType", Integer.valueOf(frameType));
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendExpression(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> T9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 233, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).switchStage(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> U(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_PREPARE_CACHE_MS, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).bigVipDownSeat(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> U1(@Nullable String roomId, int pageIndex, int size, boolean needUserRec) {
        Object[] objArr = {roomId, new Integer(pageIndex), new Integer(size), new Byte(needUserRec ? (byte) 1 : (byte) 0)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 49, new Class[]{String.class, cls, cls, Boolean.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChatRoomCareList(roomId, pageIndex, size, needUserRec).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvMatchToolOldBean>> U2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 305, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getLastMatchInfo().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelieveOnlineModel>> U3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 359, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelieveOnlineData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> U4(@Nullable String roomId, @Nullable String giftCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, giftCode}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).giveCreateGift(roomId, giftCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<AvatarShelfResult>>> U5(int index) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(index)}, this, changeQuickRedirect, false, 423, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).loadAvailableAvatarPage(index).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<BistroMusicPickSongResultInfo>>> U6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 344, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).onPickBistroMusicSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SpeedMatchUserModel>> U7(@Nullable String outerRoomType, @Nullable String outerRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId}, this, changeQuickRedirect, false, 144, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).queryMySeat(outerRoomType, outerRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SendGiftForMicroResult>> U8(@NotNull String roomId, @Nullable String itemIdentity, int seatId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, itemIdentity, new Integer(seatId)}, this, changeQuickRedirect, false, 237, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendGiftForMicro(roomId, itemIdentity, seatId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> U9(@Nullable String roomId, @Nullable Integer templateId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, templateId}, this, changeQuickRedirect, false, 560, new Class[]{String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).switchTemplate(roomId, templateId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> V(@Nullable Integer seatNo, @Nullable Integer seatType, @Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, seatType, roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, new Class[]{Integer.class, Integer.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).bigVipInvite(seatNo, seatType, roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<String>>> V0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 306, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).createKtvMatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<SoulLiveHouseEntranceModel>>> V2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 249, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getLiveHousePopInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelievePanelModel>> V3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 358, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelievePanelData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CreateGiftConfig>> V4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 188, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).giveCreateGiftConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BistroMusicPanelBean>> V5(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_QUERY, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadBistroMusicPanel(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> V6(@NotNull String labelIds) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{labelIds}, this, changeQuickRedirect, false, 58, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(labelIds, "labelIds");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).onSaveInterestTag(labelIds).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<NawaExpressionInfo>> V7() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 333, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryNawaExpressionInfo().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> V8(@Nullable String roomId, @NotNull List<String> targetUserIdEcptList) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcptList}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, new Class[]{String.class, List.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(targetUserIdEcptList, "targetUserIdEcptList");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendInviteOnlineFriend(r0.n(m.a("roomId", roomId), m.a("targetUserIdEcptList", targetUserIdEcptList))).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChangeJoinModel>> V9(@Nullable String roomId, @Nullable Integer role, @Nullable String recPageId, @Nullable String joinCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, role, recPageId, joinCode}, this, changeQuickRedirect, false, 260, new Class[]{String.class, Integer.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).switchToJoin(roomId, role, recPageId, joinCode, UnifyUIStyleManager.f11898a.k() ? j.b(q0.f(m.a("uiType", "1"))) : null).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> W(@Nullable Integer seatNo, @Nullable Integer seatType, @Nullable String roomId, @Nullable Integer replyResult) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, seatType, roomId, replyResult}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_RANGE_SIZE, new Class[]{Integer.class, Integer.class, String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).bigVipInviteReply(seatNo, seatType, roomId, replyResult).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PartyGroupOperateModel>> W0(@Nullable String roomId, @Nullable String createCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, createCode}, this, changeQuickRedirect, false, 44, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).createPartyGroup(roomId, createCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> W1(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 203, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChatRoomCityList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<LiveRoomDetailModel>> W2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 175, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getLiveRoomDetail(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelieveRenewModel>> W3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRelieveRenewData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> W4(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 120, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        IActivityApi iActivityApi = (IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class);
        if (targetUserIdEcpt == null) {
            targetUserIdEcpt = "";
        }
        rs0.e eVarCompose = iActivityApi.grantWushuangMedal(targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BistroMusicBean>> W5(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 341, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadBistroMusicPanelInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> W6(@NotNull String roomId, @NotNull String userIdEcpt, @NotNull String targetUserIdEcpt, long count) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, userIdEcpt, targetUserIdEcpt, new Long(count)}, this, changeQuickRedirect, false, 153, new Class[]{String.class, String.class, String.class, Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(userIdEcpt, "userIdEcpt");
        v.j(targetUserIdEcpt, "targetUserIdEcpt");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).onSeatLike(roomId, userIdEcpt, targetUserIdEcpt, count).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserListResult>> W7(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 146, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).queryOnlineUserList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> W8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 357, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendLampSign(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> W9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_SEGMENT_FORMAT_FLAG, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).switchVipSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> X(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 346, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).bistroMusicCompleteSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<String>>> X0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 315, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).createPvp(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> X1(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 209, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).getChatRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<LuckBagModel>> X2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 34, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getUseLuckyBagNow(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomLimitConfig>> X3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 190, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRemainderCount().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MeCardModel>> X4(@Nullable String roomId, @Nullable Integer fromType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, fromType}, this, changeQuickRedirect, false, 52, new Class[]{String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).groupMeInfo(roomId, fromType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ScoreHistory>> X5(@Nullable String type, @Nullable Integer pageIndex, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{type, pageIndex, pageCursor}, this, changeQuickRedirect, false, 343, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadBistroStarHistory(type, pageIndex, pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SetCommonResult>> X6(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 119, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        if (roomId == null) {
            roomId = "";
        }
        if (targetUserIdEcpt == null) {
            targetUserIdEcpt = "";
        }
        rs0.e eVarCompose = iSoulHouse.onSendGroupUserMedal(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<GameCategoryBean>>> X7() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 608, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryPlanetGameMatchConfigList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> X8(@Nullable String receiveUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{receiveUserId}, this, changeQuickRedirect, false, 226, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendLevelMedal(1, receiveUserId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> X9(@Nullable Integer recordId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{recordId}, this, changeQuickRedirect, false, 612, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).thankUnparalleledLevelCardGift(recordId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Y(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).bistroMusicFinishSing(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> Y0(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 617, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (roomId == null) {
            roomId = "";
        }
        linkedHashMap.put("roomId", roomId);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).createRoomTaskDone(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> Y1(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 212, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChatRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<LukCodeResponse>> Y2(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 532, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getLukCode(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomAtmosphereConfigListModel>> Y3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 171, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomAtmosphereConfigList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Y4(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 607, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IGroupApi) ApiConstants.GROUP_MSG.i(IGroupApi.class)).groupRealNameWait(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "GROUP_MSG.service(IGroup…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BoardOnlineUserModel>> Y5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadBoardUserList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Y6(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_DNS_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).onSettingSwitchUpdate(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GamePrivateConfigBean>> Y7(@NotNull String sceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId}, this, changeQuickRedirect, false, 618, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(sceneId, "sceneId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPrivateGameConfig(sceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> Y8(@Nullable Long voiceId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{voiceId}, this, changeQuickRedirect, false, 521, new Class[]{Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("payType", 7);
        linkedHashMap.put("voiceId", voiceId);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendLittleLove(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Y9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 436, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).throwingThunder(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Z(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 345, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).bistroMusicStartSing(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Z0(@Nullable String roomId, @Nullable String type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, type}, this, changeQuickRedirect, false, 207, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).ctrlEnterAnimSwitch(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoomPopupInfo>> Z1(@Nullable String source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source}, this, changeQuickRedirect, false, 244, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChatRoomListPopup(source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<MatchListJsonBean>>> Z2(int pageNo, int pageSize, @Nullable String roomId) {
        Object[] objArr = {new Integer(pageNo), new Integer(pageSize), roomId};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, new Class[]{cls, cls, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getHistoryList(pageSize, pageNo, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomConfigListModel>> Z3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 170, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).roomBasicConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GuidePopBean>> Z4(@Nullable Integer joinType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{joinType}, this, changeQuickRedirect, false, 10, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).guidePop(joinType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomCeremonyInfo>> Z5(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 471, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadCeremonyPanelInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RecSwitchBean>> Z6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_PARAM_SEND_OUTLET_TIME, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).onXMRecSwitch().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> Z7(@Nullable String pageCursor, @Nullable Integer sourceType, @Nullable Integer pageSceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, sourceType, pageSceneId}, this, changeQuickRedirect, false, 50, new Class[]{String.class, Integer.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryRelevantList(pageCursor, sourceType, pageSceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> Z8(@Nullable String rerItemId, @Nullable String roomId, @Nullable String extMap) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{rerItemId, roomId, extMap}, this, changeQuickRedirect, false, 174, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).sendRedEnvelopeRainProp(rerItemId, roomId, extMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> Z9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 434, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).throwingThunderApplyUpSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> a(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 511, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).abstractContentFeedback(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> a0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 347, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).bistroMusicSwitchSinger(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> a1(@NotNull String soupName, @NotNull String soupText, @NotNull String soupBase, @NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soupName, soupText, soupBase, roomId}, this, changeQuickRedirect, false, 162, new Class[]{String.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(soupName, "soupName");
        v.j(soupText, "soupText");
        v.j(soupBase, "soupBase");
        v.j(roomId, "roomId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("soupName", soupName);
        linkedHashMap.put("soupText", soupText);
        linkedHashMap.put("soupBase", soupBase);
        linkedHashMap.put("roomId", roomId);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).customizeSoup(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomRecTopicTipBean>> a2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_DIRECT_URL_BASH, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChatRoomRecTopicTip().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<MatchListJsonBean>>> a3(@NotNull String pageCursor, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(pageCursor, "pageCursor");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMatchList(pageCursor, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<RoomRecModel>>> a4(@Nullable Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 252, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomByRec(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> a5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 410, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).guineaPigChangeCrossRoomVoiceState(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<FeatureTagModel>>> a6(@Nullable Integer source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source}, this, changeQuickRedirect, false, 184, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadClassifyPlayType(source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> a7(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 133, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).openGameMode(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> a9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 240, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendRoomBarrage(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> aa(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 435, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).throwingThunderUserApplyReply(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> b(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 474, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).acceptCeremonyInvite(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> b0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 348, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).bistroMusicSwitchSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> b1(@Nullable ReportModel reportModel) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{reportModel}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_UNRELIABLE, new Class[]{ReportModel.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.REPORT_API.i(ISoulHouse.class)).dataReport(reportModel).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "REPORT_API.service(ISoul…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<ChatRoomTopicBean>>> b2(@Nullable String roomId, int source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(source)}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_USE_FALLBACK_API, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChatRoomTopic(roomId, source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GroupMedalConfig>> b3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 53, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestMedalConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomCreateParams>> b4(@Nullable String sceneId, @Nullable String playType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId, playType}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        if (playType == null) {
            playType = "";
        }
        rs0.e eVarCompose = iSoulHouse.getRoomCreateParams(sceneId, playType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> b5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 412, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).guineaPigChangeVoiceSwitch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Long>>> b6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRANS_OPEN_START_TIME, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).loadFateBell().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> b7(@NotNull String roomId, int type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(type)}, this, changeQuickRedirect, false, 165, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).openTurtleSoup(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserListResult>> b8(@Nullable String outerRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomId}, this, changeQuickRedirect, false, 151, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).queryRightPanelSeat("chat_live", outerRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> b9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 239, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendRoomIMByServer(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ba(@Nullable String roomId, @Nullable String userId, @Nullable Integer status) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, userId, status}, this, changeQuickRedirect, false, 241, new Class[]{String.class, String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Constant.IN_KEY_USER_ID, userId);
        linkedHashMap.put("roomId", roomId);
        linkedHashMap.put("status", status);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).toggleInvisibilityCloak(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> c(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_MILLISECOND, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).acceptInvite(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> c0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 349, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).bistroMusicUpSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> c1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 606, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).delRoomExpression(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvPlaySongModel>> c2(@Nullable String roomId, @Nullable String clientPublicKey) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, clientPublicKey}, this, changeQuickRedirect, false, 85, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getChorusSongInfo(roomId, clientPublicKey).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ReceiveMedalUserBean>> c3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 117, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMedalReceivedList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Integer>>> c4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 208, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomCurEnterAnimSwitchState(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> c5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 409, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).guineaPigEncourage(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<FeatureTagModel>>> c6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 548, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadGameClassifyPlayType().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> c7(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 228, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).optCPInvite(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<RoomExpressionInfo>>> c8(@Nullable String ownerId, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{ownerId, roomId}, this, changeQuickRedirect, false, 602, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryRoomExpressions(ownerId, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> c9(@Nullable String targetUserIdEncrypt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEncrypt}, this, changeQuickRedirect, false, 611, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).sendUnparalleledLevelCardGift(targetUserIdEncrypt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> ca(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 96, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).toggleKtvSongOriginalSwitch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> d(@Nullable String roomId, @Nullable String otherRoomId, @Nullable String ownerIdEcpt, @Nullable String source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, otherRoomId, ownerIdEcpt, source}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_MILLISECOND, new Class[]{String.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).acceptInvitePreCheck(roomId, otherRoomId, ownerIdEcpt, source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> d0(@Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, roundId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSION_TIME_MS, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).breakAuctionPkConnect(roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> d1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 87, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).deleteAddedKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> d2(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getClassifyContentList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketAddedSongListBean>> d3(@NotNull String outerRoomType, @Nullable String outerRoomId, @Nullable String pageIndex) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId, pageIndex}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(outerRoomType, "outerRoomType");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMusicMarketAddedSongList(outerRoomType, outerRoomId, pageIndex).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomTopicBean>> d4(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 61, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomHotTopic(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> d5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_FRC_LEVEL, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).handleApplySeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<H5PlayGameSettleBean>> d6(@Nullable String roomId, @Nullable String gameRoomId, @Nullable String gameId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, gameRoomId, gameId}, this, changeQuickRedirect, false, 342, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadGameSettleInfo(roomId, gameRoomId, gameId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> d7(@Nullable String roomId, int type, @Nullable String configExt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(type), configExt}, this, changeQuickRedirect, false, 126, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).optCompetitionGame(roomId, type, configExt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SpeedMatchModel>> d8(@Nullable String outerRoomType, @Nullable String outerRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId}, this, changeQuickRedirect, false, 136, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).queryRoundDataPacket(outerRoomType, outerRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> d9() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 519, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendVoiceCard(new LinkedHashMap()).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> da(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 95, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).toggleKtvSongState(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<ConfirmOpenMicroModel>>> e(@Nullable String roomId, @Nullable String inviteUserIdEcpt, @Nullable String zegoStreamId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, inviteUserIdEcpt, zegoStreamId}, this, changeQuickRedirect, false, 27, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).acceptUpSeatInvite(roomId, inviteUserIdEcpt, zegoStreamId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<HotLuckBagPackModel>> e0(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).buyDetailPage(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> e1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_SET_VOICE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).deleteKtvUploadAudioOssFile(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> e2(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 199, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getClassifyPlayList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketInfo>> e3(@NotNull String outerRoomType, @Nullable String outerRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(outerRoomType, "outerRoomType");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMusicMarketInfo(outerRoomType, outerRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<RoomModeInfo>>> e4(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 134, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomMode(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> e5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_AUDIO_FIRSTSEG_CONNECT_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).handleFollowSinging(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GiftReinderInfo>> e6(@Nullable String roomId, @Nullable String version) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, version}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadGiftReminder(roomId, version).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> e7(@Nullable String roomId, int type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(type)}, this, changeQuickRedirect, false, 124, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).optCompetitionGameStyle(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserListResult>> e8(@Nullable String outerRoomType, @Nullable String outerRoomId, int seatType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId, new Integer(seatType)}, this, changeQuickRedirect, false, 145, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).querySeatUserList(outerRoomType, outerRoomId, seatType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> e9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sendWonderfulStoreGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> ea(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 110, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMusicOpenOrClose(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> f(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 148, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).actionInput(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> f0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 329, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).buyDressUpProduct(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> f1(@Nullable String roomId, @Nullable String id2) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, id2}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_ADDR, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).deleteSong(roomId, id2).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ClimateConfigModel>> f2(@Nullable Long climateId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{climateId}, this, changeQuickRedirect, false, 581, new Class[]{Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getClimateConfig(climateId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<MusicMarketChooseSongTypeBean>>> f3(@NotNull String outerRoomType, @Nullable String outerRoomId, @Nullable String songId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId, songId}, this, changeQuickRedirect, false, 299, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(outerRoomType, "outerRoomType");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMusicMarketPickWayList(outerRoomType, outerRoomId, songId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomModel>> f4(@Nullable String userIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userIdEcpt}, this, changeQuickRedirect, false, 186, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomModelByMaster(userIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvBeatGameHandleBean>>> f5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_FIRST_VIDEO_SEND_OUTLET_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).handleKtvBeatGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<GuineaPigInfo>>> f6(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 400, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadGuineaGamePanelInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void f7(@NotNull Map<String, ? extends Object> map, @Nullable s<OperationResult> sVar) {
        if (PatchProxy.proxy(new Object[]{map, sVar}, this, changeQuickRedirect, false, 108, new Class[]{Map.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).optFavoriteMusic(map).compose(RxSchedulers.observableToMain()).subscribe(HttpSubscriber.create(sVar));
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<SongMachineTab>>> f8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 535, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).querySongMachineTab(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> f9(@NotNull String roomId, int type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(type)}, this, changeQuickRedirect, false, 48, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).setApplyForMicro(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> fa(@Nullable String roomId, @Nullable String state) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, state}, this, changeQuickRedirect, false, 242, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", roomId);
        linkedHashMap.put("state", state);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).toggleMergeEnterMessage(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<AuctionBoxModel>>> g(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 71, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).addGiftToBox(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<HotLuckBagPackModel>>> g0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 198, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).buyFlowCard(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Boolean>>> g1(long recordId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(recordId)}, this, changeQuickRedirect, false, 526, new Class[]{Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVirtualLiveRecordApi) ApiConstants.PLAY_API.i(IVirtualLiveRecordApi.class)).deleteRecord(recordId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IVirtua…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<HttpResult<ClimateRandomPromptModel>>> g2(long styleId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(styleId)}, this, changeQuickRedirect, false, 582, new Class[]{Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getClimateRandomPrompt(styleId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<MusicMarketSingerBean>>> g3(@NotNull String outerRoomType, @Nullable String outerRoomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(outerRoomType, "outerRoomType");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMusicMarketSingerListByOnSeat(outerRoomType, outerRoomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomModel>> g4(@Nullable String userIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userIdEcpt}, this, changeQuickRedirect, false, 187, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomModelByUserId(userIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> g5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 620, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).handleMapOnlineSettingSwitchState(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<HeartAdventureBean>> g6(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 448, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadHeartAdventurePanelData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<NewFoolishGiftInfo>> g7(int scene) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(scene)}, this, changeQuickRedirect, false, 65, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).packageShow(scene).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<VirtualButlerExpressionModel>>> g8() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 604, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).queryVirtualButlerExpressions().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> g9(@Nullable Long countDownTime, @Nullable Integer userType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{countDownTime, userType}, this, changeQuickRedirect, false, 38, new Class[]{Long.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).setFortuneBagConfig(countDownTime, userType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ga(@Nullable String roomId, int microSwitchState) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(microSwitchState)}, this, changeQuickRedirect, false, 22, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).toggleMic(roomId, microSwitchState).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> h(@Nullable String roomId, @Nullable String songId, @Nullable String appPickSource) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, songId, appPickSource}, this, changeQuickRedirect, false, 82, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).addKtvSong(roomId, songId, appPickSource).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<PurchaseAtmosphereInfo>>> h0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 172, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).buyRights(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> h1(@Nullable String scene, @Nullable Boolean liked, @Nullable String reasons, @Nullable String ext, @Nullable String ids) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{scene, liked, reasons, ext, ids}, this, changeQuickRedirect, false, 513, new Class[]{String.class, Boolean.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).dislikeFeedback(scene, liked, reasons, ext, ids).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CollectionPageDataBean>> h2(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 218, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getCollectionChatRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMarketSongListBean>> h3(@NotNull String outerRoomType, @Nullable String outerRoomId, @Nullable String singer, @Nullable String pageIndex, @Nullable String cursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{outerRoomType, outerRoomId, singer, pageIndex, cursor}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, new Class[]{String.class, String.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(outerRoomType, "outerRoomType");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMusicMarketSongListBySinger(outerRoomType, outerRoomId, singer, pageIndex, cursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<DislikeDataBean>> h4(@Nullable String sceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId}, this, changeQuickRedirect, false, 512, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomMoreDislikeTags(sceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> h5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).heartAdventureChooseStep(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RecommendRoomBean>> h6(@Nullable String pageCursor, @Nullable String placeTopRoomId, @Nullable Integer topRoomSource, @Nullable String classifyCode, boolean needUserRec) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, placeTopRoomId, topRoomSource, classifyCode, new Byte(needUserRec ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 245, new Class[]{String.class, String.class, Integer.class, String.class, Boolean.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadPreviewRoomList(pageCursor, placeTopRoomId, topRoomSource, classifyCode, needUserRec).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatLiveVideoRecordPageModel>> h7(@Nullable String roomId, int pageIndex, int pageSize) {
        Object[] objArr = {roomId, new Integer(pageIndex), new Integer(pageSize)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 6, new Class[]{String.class, cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).pageVideoRecord(roomId, pageIndex, pageSize, cn.soulapp.android.client.component.middle.platform.utils.user.a.w()).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> h8(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 515, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).randomLootKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SetManagerModel>> h9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 29, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).setManager(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ha(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).toggleMusicMarket(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> i0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 461, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).calBeatResult(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> i1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 25, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).downGameSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<List<CommercialBannerDataBean>>>> i2(@Nullable String ownerIdEcpt, @Nullable String roomIdEcpt, @Nullable String positionSortPairs) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{ownerIdEcpt, roomIdEcpt, positionSortPairs}, this, changeQuickRedirect, false, 599, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getCommercialBannerResources(ownerIdEcpt, roomIdEcpt, positionSortPairs).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<String>>> i3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 301, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getMusicMarketUserRoleList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomRandomTopicItemResultBean>> i4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 102, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRandomTopics(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> i5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).heartAdventureEndGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<QuickJoinRoomBean>> i6(@Nullable Integer sceneCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneCode}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_HLS_CHOOSE_STREAM_OBJECT, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadQuickJoinRoomData(sceneCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Boolean>>> i7(@NotNull String commodityId, int payType, int unlockPeriodType) {
        Object[] objArr = {commodityId, new Integer(payType), new Integer(unlockPeriodType)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 540, new Class[]{String.class, cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(commodityId, "commodityId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.COMMERCIAL_API.i(ISoulHouse.class)).payAllRight(commodityId, payType, unlockPeriodType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "COMMERCIAL_API.service(I…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> i8(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 514, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).randomPlayKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> i9(@NotNull String roomId, @NotNull String targetUserIdEcpt, @NotNull String type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt, type}, this, changeQuickRedirect, false, 42, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(targetUserIdEcpt, "targetUserIdEcpt");
        v.j(type, "type");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).silentByMaster(roomId, targetUserIdEcpt, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> ia(@Nullable String roomId, @Nullable Long climateId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, climateId}, this, changeQuickRedirect, false, 585, new Class[]{String.class, Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).trialAtmosphere(roomId, climateId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> j(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 605, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).addRoomExpression(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvScoreLevelBean>>> j0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).calFollowSingingKtvScoreLevel(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> j1(@Nullable Long roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CHANNELS, new Class[]{Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", roomId);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).endPlayParty(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<CpSeatBean>>> j2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 154, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getCpSeatDetail(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MyAtmosBagModel>> j3(@Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor}, this, changeQuickRedirect, false, 578, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyBagList(pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<RoomRecStatusData>>> j4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 13, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomRecStatus(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> j5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 450, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).heartAdventureStartGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<RecommendSettingModel>>> j6(int businessId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(businessId)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_HTTP_RES_FINISH_TIME, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadRecommendSettingFuncList(businessId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Boolean>>> j7(long id2, @NotNull String commodityId, int payType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(id2), commodityId, new Integer(payType)}, this, changeQuickRedirect, false, 539, new Class[]{Long.TYPE, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(commodityId, "commodityId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.COMMERCIAL_API.i(ISoulHouse.class)).payRecordRight(id2, commodityId, payType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "COMMERCIAL_API.service(I…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UpdateRoomTopicBean>> j8(@Nullable String roomId, @Nullable String topicId, int scene) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, topicId, new Integer(scene)}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).recTopicUpdateRoom(roomId, topicId, scene).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> j9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 234, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).sitByMaster(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void ja(@NotNull Map<String, ? extends Object> map, @Nullable s<Object> sVar) {
        if (PatchProxy.proxy(new Object[]{map, sVar}, this, changeQuickRedirect, false, 156, new Class[]{Map.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).upMusicAction(map).compose(RxSchedulers.observableToMain()).subscribe(HttpSubscriber.create(sVar));
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> k(@Nullable String roomId, int locationType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(locationType)}, this, changeQuickRedirect, false, 129, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).agreeInviteGame(roomId, locationType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvScoreLevelBean>>> k0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).calKtvScoreLevel(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> k1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 598, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).endRoomMatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> k2(@Nullable String pageCursor, int pageIndex, int pageSize) {
        Object[] objArr = {pageCursor, new Integer(pageIndex), new Integer(pageSize)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 223, new Class[]{String.class, cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.LIVE_API.i(IRoomApi.class)).getCreateChatRoomList(pageCursor, pageIndex, pageSize).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IRoomAp…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MyAtmosBagModel>> k3(@Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor}, this, changeQuickRedirect, false, 579, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyBagListV2(pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomTransferCheckData>> k4(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SOCKET_CREATE_SUCCESS_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomTransferData(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> k5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 449, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).heartAdventureUnlockGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<ArrayList<FriendCabinRelationStarScoreData>>>> k6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 588, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).loadRelationStarScore().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestOperationResult<Object>>> k7(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 90, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).payToppingKtvSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<RecallBean>>> k8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 323, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).recall(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RedEnvelopeModel>> k9(@Nullable String rerId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{rerId}, this, changeQuickRedirect, false, 173, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).snatch(rerId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ka(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 584, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).updateAtmosphereEffects(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AgreeJoinGroupResult>> l(@Nullable String roomId, @Nullable String creatorId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, creatorId}, this, changeQuickRedirect, false, 114, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).agreeJoinGroup(roomId, creatorId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<VirtualLiveCanRecordDTO>>> l0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 522, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVirtualLiveRecordApi) ApiConstants.PLAY_API.i(IVirtualLiveRecordApi.class)).canRecord().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IVirtua…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> l1(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 149, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).endRound(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CreatorxGiftPriceConfig>> l2(@Nullable String keyword) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{keyword}, this, changeQuickRedirect, false, 340, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PAY.i(ISoulHouse.class)).getCreatorxGiftPrice(keyword).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(ISoulHouse::…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MyDressUpProduceDataBean>> l3(@Nullable Long type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{type}, this, changeQuickRedirect, false, 330, new Class[]{Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyDressUpProductListByClassId(type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<OnlineUserModel>>> l4(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 16, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getRoomerList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<HashMap<String, String>>>> l5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 251, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).heartBeatGrabStartCandy(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomBean>> l6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 179, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadRoomHistoryConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> l7(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 325, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).payToppingSongMachineSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> l8(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 225, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).recallUserMedal(targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> l9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineChangeSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> la(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_SET_NETSPEED_LEVEL, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).updateBigVipSettingConfig(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> m(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).agreeToAdmin(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> m0(@NotNull String matchId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{matchId}, this, changeQuickRedirect, false, 595, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(matchId, "matchId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).cancelGameMatch(matchId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> m1(@NotNull String roomId, long gameId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Long(gameId)}, this, changeQuickRedirect, false, 167, new Class[]{String.class, Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).endTurtleSoupGame(roomId, gameId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CreatorxKeywordsConfig>> m2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 339, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PAY.i(ISoulHouse.class)).getCreatorxKeywords().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(ISoulHouse::…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MyGeneratedDataModel>> m3(@Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor}, this, changeQuickRedirect, false, 576, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyGeneratedList(pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void m4(@Nullable SimpleHttpCallback<SearchEmptyRecData> simpleHttpCallback) {
        if (PatchProxy.proxy(new Object[]{simpleHttpCallback}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIEW_HEIGHT, new Class[]{SimpleHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.SEARCH_API;
        hVar.n(((ISoulHouse) hVar.i(ISoulHouse.class)).getSearchHotChatRoom(), simpleHttpCallback, false);
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> m5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 250, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).heartBeatStartCandy(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BistroMusicSongListInfo>> m6(@Nullable String roomId, @Nullable String singer, int pageIndex, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, singer, new Integer(pageIndex), pageCursor}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400, new Class[]{String.class, String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadSingerSongRequestList(roomId, singer, pageIndex, pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> m7(@Nullable Integer type, @Nullable String attributes) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{type, attributes}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MIN_RECEIVED_BEFORE_ACK_DECIMATION, new Class[]{Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).personalConfigSet(type, attributes).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> m8(@Nullable String roomId, @Nullable Integer replyResult, @Nullable String inviteId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, replyResult, inviteId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).receiveAuctionPkInvite(roomId, replyResult, inviteId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> m9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineChangeSongFeedBack(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ma(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).updateBoardData(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<AuctionBoxModel>>> n(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 70, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).agreeToAuction(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> n0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 558, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).cancelMessageTopping(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> n1(@Nullable String roomId, @Nullable String recPageId, @Nullable String joinCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, recPageId, joinCode}, this, changeQuickRedirect, false, 9, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).exitChatRoom(roomId, recPageId, joinCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AdvertisingBoardModel>> n2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getDisplayInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MyGeneratedDataModel>> n3(@Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor}, this, changeQuickRedirect, false, 577, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyGeneratedListV2(pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void n4(@Nullable String str, @Nullable String str2, @Nullable SimpleHttpCallback<List<SearchSuggestBean>> simpleHttpCallback) {
        if (PatchProxy.proxy(new Object[]{str, str2, simpleHttpCallback}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIEW_WIDTH, new Class[]{String.class, String.class, SimpleHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.SEARCH_API;
        hVar.m(((ISoulHouse) hVar.i(ISoulHouse.class)).getSearchSuggest(str, str2), simpleHttpCallback);
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> n5(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SOCKET_ERR_CODE, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).heartRiskInvite(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SlideRoomBean>> n6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 243, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadSlideRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> n7(@Nullable String businessId, @Nullable String functionId, @Nullable String value) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{businessId, functionId, value}, this, changeQuickRedirect, false, 568, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).personalFunctionConfigUpdate(businessId, functionId, value).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> n8(@Nullable String roomId, @Nullable Integer replyResult, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, replyResult, roundId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).receiveAuctionPkStartPk(roomId, replyResult, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> n9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineChooseSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Boolean>>> na(@Nullable String configKey, @Nullable String configValue) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{configKey, configValue}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SHARP, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).updateCustomConfig(configKey, configValue).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<AiBackgroundRandomName>>> o(long climateId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(climateId)}, this, changeQuickRedirect, false, 573, new Class[]{Long.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).aiBackgroundRandomName(climateId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> o0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 407, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).cancelPrepare(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<FollowRemindListBean>>> o1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 12, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).exitNoticeFollow(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<DowngradeRemindModel>> o2(int field) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(field)}, this, changeQuickRedirect, false, 510, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getDowngradeRemind(field).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvAudioRecordDataBean>> o3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 310, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyKtvRecords(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SideslipRoomModel>> o4(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 200, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSideslipRoomList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> o5(@Nullable String roomId, int answerType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(answerType)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_ERR_NO_VIDEO, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).heartRiskInviteAnswer(roomId, Integer.valueOf(answerType)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ThrowingThunderInfo>> o6(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ACCURATE_LAYOUT, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).loadThrowingThunderPanelInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> o7(@Nullable Long roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 168, new Class[]{Long.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).pkSupport(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> o8(@Nullable String roomId, @Nullable Integer replyResult, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, replyResult, roundId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSIONS, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).receiveAuctionPkVoid(roomId, replyResult, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> o9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineCollectSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> oa(boolean state) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(state ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 622, new Class[]{Boolean.TYPE}, rs0.e.class);
        return patchProxyResultProxy.isSupported ? (rs0.e) patchProxyResultProxy.result : g5(r0.l(m.a("businessId", "8"), m.a("functionId", "1"), m.a(SocialConstants.PARAM_APP_DESC, "派对快捷破冰消息"), m.a("state", Boolean.valueOf(state))));
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<Object>>> p(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 575, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).aiBackgroundUpdate(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> p0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 405, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).cancelRandomMatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FetchLuckBagResultModel>> p1(@Nullable String roomId, @NotNull String luckyLevel, @NotNull String partCount) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, luckyLevel, partCount}, this, changeQuickRedirect, false, 66, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(luckyLevel, "luckyLevel");
        v.j(partCount, "partCount");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).fetchLuckyBag(roomId, luckyLevel, partCount).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvDressUpTheMallProduceDataBean>> p2(@Nullable String sceneId, @Nullable Long classId, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId, classId, pageCursor}, this, changeQuickRedirect, false, 328, new Class[]{String.class, Long.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getDressUpTheMallProductListByClassId(sceneId, Long.valueOf(classId != null ? classId.longValue() : 0L), pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MyDressUpProduceDataBean>> p3(@Nullable String sceneId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId}, this, changeQuickRedirect, false, 332, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyUseDressUp(sceneId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<OnlineUserModel>>> p4(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 43, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSilentList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> p5(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).heartRiskUserRemove(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SoupResult>> p6(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 160, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadTurtleSoupInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<KtvPlaySongResult>> p7(@Nullable String roomId, @Nullable String songId, @Nullable String clientPublicKey) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, songId, clientPublicKey}, this, changeQuickRedirect, false, 83, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).playKtvSong(roomId, songId, clientPublicKey).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<RoomRecActionResult>>> p8(@Nullable String roomId, int action) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(action)}, this, changeQuickRedirect, false, 14, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", roomId);
        linkedHashMap.put("action", Integer.valueOf(action));
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).recommendRoom(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<MusicMachineInfo>>> p9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachinePlay(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> pa(boolean granted) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(granted ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DOWNLOAD_BYTES, new Class[]{Boolean.TYPE}, rs0.e.class);
        return patchProxyResultProxy.isSupported ? (rs0.e) patchProxyResultProxy.result : g5(r0.l(m.a("businessId", 9), m.a("functionId", 4), m.a(SocialConstants.PARAM_APP_DESC, PartyInteractionSwitchConst.DESC_PERMISSION), m.a("state", Boolean.valueOf(granted))));
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> q(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 141, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).answerInviteCompere(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> q0(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 142, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).cancelRoomCompere(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> q1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 300, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).finishMusicMarketPlayingSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SideslipRoomModel>> q2(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_VIDEO_FIRSTSEG_CONNECT_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getExitSimilarRoom(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MicroSkinInfo>> q3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 530, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        cn.meta.android.utils.b.Companion aVar = cn.meta.android.utils.b.INSTANCE;
        linkedHashMap.put(bt.f217511w, aVar.c());
        linkedHashMap.put(com.alipay.sdk.m.t.e.f175926p, VoiceTransHelper.INSTANCE.a());
        linkedHashMap.put("systemVersion", Integer.valueOf(Build.VERSION.SDK_INT));
        linkedHashMap.put("ram", Long.valueOf(aVar.g()));
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getMyVoiceSkinList(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoomMusicBean>> q4(@Nullable Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 106, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songAdded(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> q5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 551, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).heartbeatReport(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<UserFmAsset>>> q6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 447, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadUserFMAssetList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void q7(@NotNull Map<String, ? extends Object> map, @Nullable s<OptFavoriteMusicBean> sVar) {
        if (PatchProxy.proxy(new Object[]{map, sVar}, this, changeQuickRedirect, false, 109, new Class[]{Map.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).playMusic(map).compose(RxSchedulers.observableToMain()).subscribe(HttpSubscriber.create(sVar));
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> q8(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 232, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).recordLike(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> q9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineStopApply(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> qa(boolean enabled) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(enabled ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_DTS_MAX_DIFF, new Class[]{Boolean.TYPE}, rs0.e.class);
        return patchProxyResultProxy.isSupported ? (rs0.e) patchProxyResultProxy.result : g5(r0.l(m.a("businessId", 9), m.a("functionId", 3), m.a(SocialConstants.PARAM_APP_DESC, PartyInteractionSwitchConst.DESC), m.a("state", Boolean.valueOf(enabled))));
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> r(@Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, roundId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSIONS, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).applyAuctionPkVoid(roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> r0(@Nullable Integer seatNo, @Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 476, new Class[]{Integer.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).ceremonyInvite(seatNo, roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FlowCardBean>> r1(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).flowCardNewUserPop(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<LuckBagPackModel>> r2(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getFlowLuckyBagList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<GameInfo>>> r3(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 169, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getOfficialGameList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SongListNetBean>> r4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSongMachineAddedList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CreateGroupModel>> r5(@Nullable String roomId, @Nullable String targetUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserId}, this, changeQuickRedirect, false, 112, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).invitationUserAgree(roomId, targetUserId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<WonderfulStoreGiftInfo>>> r6(@Nullable String roomId, @Nullable Integer identityType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, identityType}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AUDIO_DEVICE_TYPE, new Class[]{String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadWonderfulStoreCommodityList(roomId, identityType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PlayFunctionBean>> r7() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 352, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).playSetupList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> r8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).recycleAdmin(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> r9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineStopSong(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<CreateChatRoomPreCheckBean>>> ra(@Nullable String roomId, int privateStatus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(privateStatus)}, this, changeQuickRedirect, false, 177, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).updatePrivateStatusV2(roomId, privateStatus).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> s(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 473, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).applyCeremonyUpSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> s0(@Nullable Integer seatNo, @Nullable String roomId, @Nullable Integer replyResult) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, roomId, replyResult}, this, changeQuickRedirect, false, 477, new Class[]{Integer.class, String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).ceremonyInviteReply(seatNo, roomId, replyResult).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GuidePopBean>> s1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).followGuidePop().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<TabInfo>>> s2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 570, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getFollowTabList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomerCardModel>> s3(@Nullable String targetUserIdEcpt, @Nullable Integer fromType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt, fromType}, this, changeQuickRedirect, false, 32, new Class[]{String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getOtherUserInfo(targetUserIdEcpt, fromType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SongMachineFreeCountDataBean>> s4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 326, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSongMachineFreeCount(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> s5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_POST_PREPARE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).inviteBatchPassers(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<List<WonderfulStoreUserInfo>>>> s6(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUEUE_MAX_FULL, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).loadWonderfulStoreUserList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<KtvAudioUploadPreCheckModel>>> s7(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 426, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).preCheckKtvAudioUpload(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CommonDataBo<List<RedPackInfo>>>> s8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ABR_BANDWIDTH_PARAMETER, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.ACTIVITY_OPENAPI.i(ISoulHouse.class)).redPackList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> s9(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songMachineSwitch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> sa(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 258, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).updateProductDisplayStatus(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> t(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 360, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).applyConnect(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> t0(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 475, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).ceremonyNextStep(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> t1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 609, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).followUserNew(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> t2(@Nullable Integer tabId, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{tabId, pageCursor}, this, changeQuickRedirect, false, 571, new Class[]{Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getFollowTabRoomList(tabId, pageCursor, 20).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomerCardModel>> t3(@Nullable String targetUserIdEcpt, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt, roomId}, this, changeQuickRedirect, false, 33, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getOtherUserInfoOutside(targetUserIdEcpt, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SongListNetBean>> t4(@Nullable Integer type, @Nullable String pageCursor, @Nullable String roomId, @Nullable String tabCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{type, pageCursor, roomId, tabCode}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, new Class[]{Integer.class, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSongMachineList(type, pageCursor, roomId, tabCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SetManagerModel>> t5(@Nullable String roomId, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 28, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).inviteBeManager(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> t6(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 36, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).luckyBagWantSendGift(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> t7(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 406, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).prepareGame(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<AudioAuthInfo>>> t8(@Body @Nullable ReqTokenBean reqTokenBean) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{reqTokenBean}, this, changeQuickRedirect, false, 185, new Class[]{ReqTokenBean.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).refreshAudioAuth(reqTokenBean).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> t9(@NotNull String roomId, @NotNull String targetUserIdEcpt, int seatNo) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt, new Integer(seatNo)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(targetUserIdEcpt, "targetUserIdEcpt");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).songRequestInviteJoinSeat(roomId, targetUserIdEcpt, seatNo).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ta(@Nullable String roomId, int freeMinutes, int minuteExpendStar) {
        Object[] objArr = {roomId, new Integer(freeMinutes), new Integer(minuteExpendStar)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD, new Class[]{String.class, cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).updateRelieveConfig(roomId, freeMinutes, minuteExpendStar).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestPageResult<RoomUser>>> u(@Nullable String roomId, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, pageCursor}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).applyRecordList(roomId, pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> u0(@Nullable String partyId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{partyId}, this, changeQuickRedirect, false, 480, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).ceremonyOwnerAccept(partyId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> u1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SOCKET_ERR_TYPE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).functionSwitch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FortuneBagConfigInfo>> u2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 37, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getFortuneBagConfigInfo().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionPkInviteBean>> u3(@Nullable String tab, @Nullable String pageCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{tab, pageCursor}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getOwnerList(tab, pageCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicMachinePlayInfo>> u4(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSongMachinePlayInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> u5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).inviteForAdmin(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<SimpleUser>>> u6(@Nullable String roomId, @Nullable String pickId, int type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, pickId, new Integer(type)}, this, changeQuickRedirect, false, 248, new Class[]{String.class, String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).maskedDisclose(roomId, pickId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> u7(@Nullable String sceneId, @Nullable String toUserIdEcpt, @Nullable String msgBodyStr) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId, toUserIdEcpt, msgBodyStr}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).privateInteractCreate(sceneId, toUserIdEcpt, msgBodyStr).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> u8(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 135, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).refreshOfficialPanel(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> u9(@NotNull String roomId, int seatNo) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(seatNo)}, this, changeQuickRedirect, false, 630, new Class[]{String.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).songRequestJoinSeat(roomId, seatNo).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SpeedMatchUpdateResult>> ua(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 152, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).updateSeatInfo(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> v(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_DISABLE_MC_REUSE, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).applyToBigVipSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> v0(@Nullable String partyId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{partyId}, this, changeQuickRedirect, false, 481, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).ceremonyOwnerRefuse(partyId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GuineaPigTeamRankingBean>> v1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 401, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).gameEndTeamRankingList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FortuneBagInfo>> v2(@Nullable String bagId, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{bagId, roomId}, this, changeQuickRedirect, false, 35, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getFortuneBagPopInfo(bagId, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> v3() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 224, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.LIVE_API.i(IRoomApi.class)).getPartyFootPrintRoomList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IRoomAp…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void v4(@NotNull LifecycleOwner owner, @Nullable Map<String, ? extends Object> map, @Nullable s<ChatRoomHisMusicBean> sVar) {
        if (PatchProxy.proxy(new Object[]{owner, map, sVar}, this, changeQuickRedirect, false, 107, new Class[]{LifecycleOwner.class, Map.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(owner, "owner");
        ((ObservableSubscribeProxy) ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songRecent(map).compose(RxSchedulers.observableToMain()).as(com.uber.autodispose.b.a(com.uber.autodispose.android.lifecycle.b.e(owner)))).subscribe(HttpSubscriber.create(sVar));
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> v5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 140, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).inviteForRoomCompere(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> v6(@Nullable String roomId, @Nullable String songId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, songId}, this, changeQuickRedirect, false, 247, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).maskedPickSong(roomId, songId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> v7(@Nullable Long soupId, @NotNull String clueId, @NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soupId, clueId, roomId}, this, changeQuickRedirect, false, 163, new Class[]{Long.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(clueId, "clueId");
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).publishClue(soupId != null ? soupId.longValue() : 0L, clueId, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<PartyAudioAuthInfo>>> v8(@Body @Nullable PartyAudioReqTokenBean reqTokenBean) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{reqTokenBean}, this, changeQuickRedirect, false, 550, new Class[]{PartyAudioReqTokenBean.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).refreshPartyAudioAuth(reqTokenBean).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> v9(@NotNull String roomId, boolean agree) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Byte(agree ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, new Class[]{String.class, Boolean.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).songRequestReplyInvite(roomId, agree).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> va(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_ASYNC, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).updateUploadKtvAudio(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SpeedMatchUpdateResult>> w(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 139, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).applyToSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CeremonySubscribeInfo>> w0(@Nullable String type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{type}, this, changeQuickRedirect, false, 478, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).ceremonyPopWindow(type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<String>> w1(@Nullable String roomId, @Nullable String keyword) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, keyword}, this, changeQuickRedirect, false, 192, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PAY.i(ISoulHouse.class)).generateAiGift(roomId, keyword).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(ISoulHouse::…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ChatRoom>> w2(@Nullable String pageCursor, @Nullable String playTypeList) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageCursor, playTypeList}, this, changeQuickRedirect, false, 549, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getGameClassifyPlayList(pageCursor, playTypeList).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<GroupClassifyDetailBean>>> w3(@Nullable String roomId, @Nullable Integer size, @Nullable String ownerIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, size, ownerIdEcpt}, this, changeQuickRedirect, false, 46, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPartyGroupList(roomId, size, ownerIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void w4(@NotNull LifecycleOwner owner, @NotNull String source, @Nullable s<List<SongListName>> sVar) {
        if (PatchProxy.proxy(new Object[]{owner, source, sVar}, this, changeQuickRedirect, false, 155, new Class[]{LifecycleOwner.class, String.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(owner, "owner");
        v.j(source, "source");
        ((ObservableSubscribeProxy) ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).songListName(source).compose(RxSchedulers.observableToMain()).as(com.uber.autodispose.b.a(com.uber.autodispose.android.lifecycle.b.e(owner)))).subscribe(HttpSubscriber.create(sVar));
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> w5(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 113, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).inviteJoinGroup(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> w6(@Nullable String roomId, @NotNull String userIds) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, userIds}, this, changeQuickRedirect, false, 561, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(userIds, "userIds");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("userIds", userIds);
        linkedHashMap.put("roomId", roomId);
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).matchMaking(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PushJoinOrLandingResponse>> w7(@Nullable String relationType, @Nullable String relationTargetUserId, @Nullable String joinCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{relationType, relationTargetUserId, joinCode}, this, changeQuickRedirect, false, 304, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).pushJoinOrLanding(relationType, relationTargetUserId, joinCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> w8(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 4, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        Pair[] pairArr = new Pair[2];
        if (roomId == null) {
            roomId = "";
        }
        pairArr[0] = m.a("roomId", roomId);
        pairArr[1] = m.a("ownerId", cn.soulapp.android.client.component.middle.platform.utils.user.a.w());
        rs0.e eVarCompose = iSoulHouse.rejectVideoRecord(r0.n(pairArr)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> w9(@Nullable String roomId, @Nullable String type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, type}, this, changeQuickRedirect, false, 67, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).startAuction(roomId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<AiBackgroundGenerateInfo>>> wa(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 574, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).upgradeToDynamic(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> x(@Nullable Integer seatNo, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{seatNo, roomId}, this, changeQuickRedirect, false, 545, new Class[]{Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).applyUpSeat(seatNo, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> x0(@Nullable Integer popWindowType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{popWindowType}, this, changeQuickRedirect, false, 479, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).ceremonyReminder(popWindowType).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<ClimateGenerateModel>>> x1(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 583, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).generateClimate(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<OnlineUserModel>>> x2(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 17, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getGameUserList(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PartyInteractionPanel>> x3(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).getQuickInteractPanel(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<SooFunCodeInfo>>> x4(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 534, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getSooFunCode(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> x5(@Nullable String targetOwnerIdEcpt, @Nullable String source, @Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetOwnerIdEcpt, source, roomId}, this, changeQuickRedirect, false, 372, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).inviteRoomBattle(targetOwnerIdEcpt, source, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> x6(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 557, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).messageTopping(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PvpAssistancePanelConfigurationModel>> x7(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 320, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpAssistanceConfigurationModel(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> x8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 63, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).remoteManageMic(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> x9(@Nullable String roomId, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, roundId}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_QUERY, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).startAuctionPk(roomId, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> xa(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 460, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).uploadBeatScore(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> y(@Nullable String roomId, @Nullable String bizExt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, bizExt}, this, changeQuickRedirect, false, 19, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).applyUpSeatById(roomId, bizExt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "observable.compose(RxSch…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<CeremonyReservationList>> y0(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 472, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).ceremonyReservationList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<PartyInteractionIntroResult>>> y1(long roomId, @Nullable String interactId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(roomId), interactId}, this, changeQuickRedirect, false, 634, new Class[]{Long.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).generateQuickInteractIntro(r0.l(m.a("roomId", Long.valueOf(roomId)), m.a("interactId", interactId))).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GroupInterestTagInfo>> y2() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 59, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getGroupInterestTagList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestOperationResult<Integer>>> y3(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 89, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getPayToppingKtvSongAmount(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SoulGiftListModel>> y4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 222, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).calculateSoulList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SpeedMatchUpdateResult>> y5(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 137, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).inviteToSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> y6(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, TTVideoEngineInterface.PLAYER_OPTION_HLS_CHOOSE_STREAM_ASYNC, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).modifyRoomClassifyCode(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> y7(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 318, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpChoosePkCard(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> y8(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 592, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).replyRoomTransferInvite(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> y9(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 562, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).startChatGuess(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> ya(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 429, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).uploadKtvAudio(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> z(@Nullable String roomId, @Nullable String songId, @Nullable String bizSource, @Nullable String bizExt, @Nullable Integer targetMicroSwitch) {
        rs0.e<HttpResult<RequestResult<Object>>> eVarApplyUpSeat;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, songId, bizSource, bizExt, targetMicroSwitch}, this, changeQuickRedirect, false, 18, new Class[]{String.class, String.class, String.class, String.class, Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        ISoulHouse iSoulHouse = (ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class);
        if (bizSource == null || bizSource.length() == 0) {
            eVarApplyUpSeat = songId == null || songId.length() == 0 ? iSoulHouse.applyUpSeat(roomId, targetMicroSwitch) : iSoulHouse.applyUpSeatById(roomId, songId, targetMicroSwitch);
        } else {
            eVarApplyUpSeat = iSoulHouse.applyUpSeatById(roomId, bizSource, bizExt, targetMicroSwitch);
        }
        rs0.e eVarCompose = eVarApplyUpSeat.compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "observable.compose(RxSch…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> z0(@Nullable String roomId, int actionType, @Nullable String roundId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, new Integer(actionType), roundId}, this, changeQuickRedirect, false, 322, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).changeStage(roomId, actionType, roundId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<ActivityCenterEntrance>>> z1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 230, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getActivityCenterEntrance().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GroupMedalListModel>> z2(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 60, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getGroupMedalList(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AuctionPkPersonalInfo>> z3(@Nullable String types) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{types}, this, changeQuickRedirect, false, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.PLAY_API.i(ISoulHouse.class)).getPersonalConfig(types).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<SoupLabelResult>>> z4() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 158, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).getSoupLabelConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> z5(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 24, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).inviteUpGameSeat(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Set<String>>> z6() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 541, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).moreActivityRedPoint().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PvpInfo>> z7(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 313, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPlayApi) ApiConstants.PLAY_API.i(IRoomPlayApi.class)).pvpPkInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PLAY_API.service(IRoomPl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomConfigBean>> z8() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 338, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).requestApolloConfig().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestMsgResult<GameMatchResultModel>>> z9(@NotNull String playType, int source, @Nullable String bizParam) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType, new Integer(source), bizParam}, this, changeQuickRedirect, false, 594, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(playType, "playType");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).startGameMatch(playType, source, bizParam).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> za(@Nullable String roomId, @NotNull String audioUrl, @NotNull String videoUrl, long duration, long startTime, int sequence, @NotNull String videoId, @Nullable String ext) {
        Object[] objArr = {roomId, audioUrl, videoUrl, new Long(duration), new Long(startTime), new Integer(sequence), videoId, ext};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Long.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 5, new Class[]{String.class, String.class, String.class, cls, cls, Integer.TYPE, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(audioUrl, "audioUrl");
        v.j(videoUrl, "videoUrl");
        v.j(videoId, "videoId");
        Pair[] pairArr = new Pair[8];
        pairArr[0] = m.a("roomId", roomId == null ? "" : roomId);
        pairArr[1] = m.a("ownerId", cn.soulapp.android.client.component.middle.platform.utils.user.a.w());
        pairArr[2] = m.a("audioUrl", audioUrl);
        pairArr[3] = m.a("videoUrl", videoUrl);
        pairArr[4] = m.a("duration", Long.valueOf(duration));
        pairArr[5] = m.a("startTime", Long.valueOf(startTime));
        pairArr[6] = m.a(InAppSlotParams.SLOT_KEY.SEQ, Integer.valueOf(sequence));
        pairArr[7] = m.a("videoId", videoId);
        HashMap mapL = r0.l(pairArr);
        if (ext != null) {
            mapL.put("ext", ext);
        }
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).uploadVideoRecord(mapL).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }
}