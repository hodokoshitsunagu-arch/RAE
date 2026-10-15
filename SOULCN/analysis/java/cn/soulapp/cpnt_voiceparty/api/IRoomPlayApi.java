package cn.soulapp.cpnt_voiceparty.api;

import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.android.net.annotation.Host;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkInfo;
import cn.soulapp.cpnt_voiceparty.bean.BigVipInfo;
import cn.soulapp.cpnt_voiceparty.bean.BulletGameInfo;
import cn.soulapp.cpnt_voiceparty.bean.ChatGuessWinnerQuestionsData;
import cn.soulapp.cpnt_voiceparty.bean.FriendsCabinTemplateBean;
import cn.soulapp.cpnt_voiceparty.bean.MatchListJsonBean;
import cn.soulapp.cpnt_voiceparty.bean.PvpAssistancePanelConfigurationModel;
import cn.soulapp.cpnt_voiceparty.bean.PvpConfigurationModel;
import cn.soulapp.cpnt_voiceparty.bean.PvpInfo;
import cn.soulapp.cpnt_voiceparty.bean.RequestPageResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.StartGameBean;
import cn.soulapp.cpnt_voiceparty.bean.StudyRoomInfo;
import cn.soulapp.cpnt_voiceparty.bean.StudyRoomTopicPanelInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.friendscabin.bean.FriendsCabinInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktvmodel.KtvRandomPlayRemainBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketAddedSongListBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketBaseBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketChooseSongTypeBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketContractBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketContractGiftBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketSingerBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.music_market.bean.MusicMarketSongListBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionIntroResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionPanel;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.bean.PartyInteractionVoteResult;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.MusicMarketInfo;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import rs0.e;

/* JADX INFO: compiled from: IRoomPlayApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Host(domainKey = ApiConstants.DomainKey.PLAY_API)
@Metadata(bv = {}, d1 = {"\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J8\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002H'J3\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010\u0012\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010\u0013\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J.\u0010\u0016\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0002H'J@\u0010\u001a\u001a$\u0012 \u0012\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017j\n\u0012\u0004\u0012\u00020\u0018\u0018\u0001`\u0019\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0002H'JR\u0010\u001f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u0002H'J:\u0010!\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u0002H'JL\u0010$\u001a$\u0012 \u0012\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020#\u0018\u00010\u0017j\n\u0012\u0004\u0012\u00020#\u0018\u0001`\u0019\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\"\u001a\u0004\u0018\u00010\u0002H'J;\u0010&\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J.\u0010'\u001a(\u0012$\u0012\"\u0012\u001c\u0012\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0017j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u0001`\u0019\u0018\u00010\u00070\u0006H'J;\u0010(\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J7\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J0\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0%0\u00070\u00062\b\b\u0003\u0010*\u001a\u00020\u00022\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J:\u00101\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0%0\u00070\u00062\b\b\u0001\u0010/\u001a\u00020.2\b\b\u0001\u00100\u001a\u00020.2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J\u0014\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002020\u00070\u0006H'J7\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J \u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002050\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'JQ\u0010:\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u00107\u001a\u0004\u0018\u00010.2\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00109\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b:\u0010;J]\u0010>\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010<\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010=\u001a\u0004\u0018\u00010.2\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00109\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b>\u0010?JQ\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u00107\u001a\u0004\u0018\u00010.2\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00109\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b@\u0010;J;\u0010A\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010C\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010B0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J;\u0010D\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J<\u0010E\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u00107\u001a\u00020.2\n\b\u0001\u00109\u001a\u0004\u0018\u00010\u0002H'J1\u0010F\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J3\u0010H\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010G0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J\"\u0010J\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010I0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J7\u0010K\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J7\u0010L\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J7\u0010M\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J2\u0010P\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020O0N0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010*\u001a\u0004\u0018\u00010\u0002H'J9\u0010Q\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J\"\u0010S\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010R0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J2\u0010T\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u0002H'J9\u0010V\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010U\u001a\u0004\u0018\u00010.H'¢\u0006\u0004\bV\u0010WJ2\u0010X\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u0002H'J1\u0010Y\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J1\u0010Z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'JE\u0010\\\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b\\\u0010]JE\u0010_\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010^\u001a\u0004\u0018\u00010.H'¢\u0006\u0004\b_\u0010`J\"\u0010b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010a0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'JQ\u0010d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010c\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\bd\u0010eJQ\u0010f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010c\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010^\u001a\u0004\u0018\u00010.H'¢\u0006\u0004\bf\u0010gJ2\u0010h\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u0002H'J\"\u0010j\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010i0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J&\u0010k\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J2\u0010l\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u0002H'J9\u0010n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010m\u001a\u0004\u0018\u00010.H'¢\u0006\u0004\bn\u0010WJ\"\u0010p\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010o0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J*\u0010r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010q\u0018\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J\"\u0010t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010s0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'JG\u0010u\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.2\n\b\u0001\u00108\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\bu\u0010]JG\u0010M\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010^\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.H'¢\u0006\u0004\bM\u0010vJ;\u0010w\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010[\u001a\u0004\u0018\u00010.2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\bw\u0010xJ;\u0010Q\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010z\u001a\u0004\u0018\u00010yH'¢\u0006\u0004\bQ\u0010{J\"\u0010|\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J\"\u0010~\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010}0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J7\u0010\u0080\u0001\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u007f\u001a\u0004\u0018\u00010.H'¢\u0006\u0005\b\u0080\u0001\u0010WJ)\u0010\u0081\u0001\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J)\u0010\u0082\u0001\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J*\u0010\u0084\u0001\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0083\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J)\u0010\u0085\u0001\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J6\u0010\u0087\u0001\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0002H'J:\u0010\u0088\u0001\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J$\u0010\u008a\u0001\u001a\u0011\u0012\r\u0012\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0089\u00010\u00070\u00062\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u0002H'J;\u0010\u008c\u0001\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030\u008b\u0001\u0018\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J4\u0010\u008d\u0001\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'J;\u0010\u008f\u0001\u001a\u0017\u0012\u0013\u0012\u0011\u0012\r\u0012\u000b\u0012\u0005\u0012\u00030\u008e\u0001\u0018\u00010%0\u00070\u00062\u001b\b\u0001\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b\u000b0\nH'¨\u0006\u0090\u0001"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/api/IRoomPlayApi;", "", "", "outerRoomType", "outerRoomId", "targetUserId", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketContractBean;", "musicContract", "", "Lkotlin/jvm/JvmSuppressWildcards;", "map", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketContractGiftBean;", "musicContractGift", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketBaseBean;", "musicMarketInviteSign", "musicMarketInviteRenewal", "musicMarketAnswerInvite", "musicMarketCancel", "musicMarketProducerSelf", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/MusicMarketInfo;", "getMusicMarketInfo", "Ljava/util/ArrayList;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketSingerBean;", "Lkotlin/collections/ArrayList;", "getMusicMarketSingerListByOnSeat", "singer", "pageIndex", "cursor", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketSongListBean;", "getMusicMarketSongListBySinger", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketAddedSongListBean;", "getMusicMarketAddedSongList", "songId", "Lcn/soulapp/cpnt_voiceparty/soulhouse/music_market/bean/MusicMarketChooseSongTypeBean;", "getMusicMarketPickWayList", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "finishMusicMarketPlayingSong", "getMusicMarketUserRoleList", "musicMarketPickSong", "toggleMusicMarket", "pageCursor", "roomId", "Lcn/soulapp/cpnt_voiceparty/bean/MatchListJsonBean;", "getMatchList", "", "pageSize", "pageNo", "getHistoryList", "Lcn/soulapp/cpnt_voiceparty/bean/PvpConfigurationModel;", "getPvpConfig", "createPvp", "Lcn/soulapp/cpnt_voiceparty/bean/PvpInfo;", "pvpPkInfo", "actionType", "targetUserIdEcpt", "roundId", "pvpSeatUp", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "respondType", "respond", "pvpSeatUpRespond", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "pvpSeatDown", "pvpChoosePkCard", "Lcn/soulapp/cpnt_voiceparty/bean/PvpAssistancePanelConfigurationModel;", "pvpAssistanceConfigurationModel", "pvpSupport", "changeStage", "requestVolcGameCode", "Lcn/soulapp/cpnt_voiceparty/bean/StartGameBean;", "startGuineaPigGame", "Lcn/soulapp/cpnt_voiceparty/bean/AuctionPkInfo;", "auctionPkInfo", "inviteUpGameSeat", "downGameSeat", "inviteUpSeatReply", "Lcn/soulapp/cpnt_voiceparty/bean/RequestPageResult;", "Lcn/soulapp/android/client/component/middle/platform/bean/im/RoomUser;", "applyRecordList", "applyUpSeatReply", "Lcn/soulapp/cpnt_voiceparty/bean/BulletGameInfo;", "getBarrageGameInfo", "heartRiskInvite", "answerType", "heartRiskInviteAnswer", "(Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "heartRiskUserRemove", "musicSingScore", "useEndReport", "seatNo", "ceremonyInvite", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "replyResult", "ceremonyInviteReply", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/BigVipInfo;", "getBigVipInfo", "seatType", "bigVipInvite", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lrs0/e;", "bigVipInviteReply", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lrs0/e;", "bigVipDownSeat", "Lcn/soulapp/cpnt_voiceparty/bean/StudyRoomInfo;", "getStudyRoomInfo", "studyRoomDownSeat", "studyRoomDownSeatByMaster", "type", "studyRoomInviteReply", "Lcn/soulapp/cpnt_voiceparty/bean/StudyRoomTopicPanelInfo;", "getStudyRoomTopicPanelInfo", "Lcn/soulapp/cpnt_voiceparty/soulhouse/ktvmodel/KtvRandomPlayRemainBean;", "getKtvRandomPlayRemainMsg", "Lcn/soulapp/cpnt_voiceparty/soulhouse/friendscabin/bean/FriendsCabinInfo;", "getRelationHouseInfo", "inviteUpSeat", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lrs0/e;", "applyUpSeat", "(Ljava/lang/Integer;Ljava/lang/String;)Lrs0/e;", "", "applyId", "(Ljava/lang/String;Ljava/lang/Long;)Lrs0/e;", "getRelationHouseRule", "Lcn/soulapp/cpnt_voiceparty/bean/FriendsCabinTemplateBean;", "getTemplateList", "templateId", "switchTemplate", "startChatGuess", "joinChatGuess", "Lcn/soulapp/cpnt_voiceparty/bean/ChatGuessWinnerQuestionsData;", "getWinnerQuestions", "giveUpAskQuestion", "questionId", "winnerChooseQuestion", "matchMaking", "Lcn/soulapp/cpnt_voiceparty/soulhouse/partyinteraction/bean/PartyInteractionPanel;", "getQuickInteractPanel", "Lcn/soulapp/cpnt_voiceparty/soulhouse/partyinteraction/bean/PartyInteractionVoteResult;", "submitQuickInteractVote", "getQuickInteractRecommend", "Lcn/soulapp/cpnt_voiceparty/soulhouse/partyinteraction/bean/PartyInteractionIntroResult;", "generateQuickInteractIntro", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public interface IRoomPlayApi {
    public static ChangeQuickRedirect changeQuickRedirect;

    @GET("play/thunder/applyRecordList")
    @NotNull
    e<HttpResult<RequestPageResult<RoomUser>>> applyRecordList(@Nullable @Query("roomId") String roomId, @Nullable @Query("pageCursor") String pageCursor);

    @FormUrlEncoded
    @POST("/play/relationHouse/applyUpSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> applyUpSeat(@Field("seatNo") @Nullable Integer seatNo, @Field("roomId") @Nullable String roomId);

    @FormUrlEncoded
    @POST("/play/relationHouse/applyUpSeatReply")
    @NotNull
    e<HttpResult<RequestResult<Object>>> applyUpSeatReply(@Field("roomId") @Nullable String roomId, @Field("applyId") @Nullable Long applyId);

    @FormUrlEncoded
    @POST("play/thunder/applyUpSeatReply")
    @NotNull
    e<HttpResult<RequestResult<Object>>> applyUpSeatReply(@FieldMap @NotNull Map<String, Object> map);

    @GET("play/auctionPk/info")
    @NotNull
    e<HttpResult<AuctionPkInfo>> auctionPkInfo(@Nullable @Query("roomId") String roomId);

    @FormUrlEncoded
    @POST("play/vip/downSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> bigVipDownSeat(@Field("roomId") @Nullable String roomId, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt);

    @FormUrlEncoded
    @POST("play/vip/inviteUpSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> bigVipInvite(@Field("seatNo") @Nullable Integer seatNo, @Field("seatType") @Nullable Integer seatType, @Field("roomId") @Nullable String roomId, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt);

    @FormUrlEncoded
    @POST("play/vip/inviteUpSeatReply")
    @NotNull
    e<HttpResult<RequestResult<Object>>> bigVipInviteReply(@Field("seatNo") @Nullable Integer seatNo, @Field("seatType") @Nullable Integer seatType, @Field("roomId") @Nullable String roomId, @Field("replyResult") @Nullable Integer replyResult);

    @FormUrlEncoded
    @POST("play/ceremony/inviteUpSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> ceremonyInvite(@Field("seatNo") @Nullable Integer seatNo, @Field("roomId") @Nullable String roomId, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt);

    @FormUrlEncoded
    @POST("play/ceremony/inviteUpSeatReply")
    @NotNull
    e<HttpResult<RequestResult<Object>>> ceremonyInviteReply(@Field("seatNo") @Nullable Integer seatNo, @Field("roomId") @Nullable String roomId, @Field("replyResult") @Nullable Integer replyResult);

    @FormUrlEncoded
    @POST("play/pvp/stage/update")
    @NotNull
    e<HttpResult<RequestResult<Object>>> changeStage(@Field("roomId") @Nullable String roomId, @Field("actionType") int actionType, @Field("roundId") @Nullable String roundId);

    @FormUrlEncoded
    @POST("play/pvp/create")
    @NotNull
    e<HttpResult<RequestResult<String>>> createPvp(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("play/thunder/downSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> downGameSeat(@FieldMap @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/tab/finishSing")
    @NotNull
    e<HttpResult<RequestResult<Object>>> finishMusicMarketPlayingSong(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("live/quickInteract/intro/generate")
    @NotNull
    e<HttpResult<RequestResult<PartyInteractionIntroResult>>> generateQuickInteractIntro(@Body @NotNull Map<String, Object> map);

    @GET("barrage/getBarrageGameInfo")
    @NotNull
    e<HttpResult<BulletGameInfo>> getBarrageGameInfo(@Nullable @Query("roomId") String roomId);

    @GET("play/vip/info")
    @NotNull
    e<HttpResult<BigVipInfo>> getBigVipInfo(@Nullable @Query("roomId") String roomId);

    @GET("play/ktv/match/history/list")
    @NotNull
    e<HttpResult<RequestResult<MatchListJsonBean>>> getHistoryList(@Query("pageSize") int pageSize, @Query("pageNo") int pageNo, @Nullable @Query("roomId") String roomId);

    @GET("live/ktv/random/play/remain")
    @NotNull
    e<HttpResult<RequestResult<KtvRandomPlayRemainBean>>> getKtvRandomPlayRemainMsg(@Nullable @Query("roomId") String roomId);

    @GET("play/ktv/match/list")
    @NotNull
    e<HttpResult<RequestResult<MatchListJsonBean>>> getMatchList(@NotNull @Query("pageCursor") String pageCursor, @Nullable @Query("roomId") String roomId);

    @GET("music-fair/tab/hasPickList")
    @NotNull
    e<HttpResult<MusicMarketAddedSongListBean>> getMusicMarketAddedSongList(@NotNull @Query("outerRoomType") String outerRoomType, @Nullable @Query("outerRoomId") String outerRoomId, @Nullable @Query("pageIndex") String pageIndex);

    @GET("music-fair/room/singing/info")
    @NotNull
    e<HttpResult<MusicMarketInfo>> getMusicMarketInfo(@NotNull @Query("outerRoomType") String outerRoomType, @Nullable @Query("outerRoomId") String outerRoomId);

    @GET("music-fair/tab/confirmPickWay")
    @NotNull
    e<HttpResult<ArrayList<MusicMarketChooseSongTypeBean>>> getMusicMarketPickWayList(@NotNull @Query("outerRoomType") String outerRoomType, @Nullable @Query("outerRoomId") String outerRoomId, @Nullable @Query("songId") String songId);

    @GET("music-fair/tab/singers")
    @NotNull
    e<HttpResult<ArrayList<MusicMarketSingerBean>>> getMusicMarketSingerListByOnSeat(@NotNull @Query("outerRoomType") String outerRoomType, @Nullable @Query("outerRoomId") String outerRoomId);

    @GET("music-fair/tab/singerSongList")
    @NotNull
    e<HttpResult<MusicMarketSongListBean>> getMusicMarketSongListBySinger(@NotNull @Query("outerRoomType") String outerRoomType, @Nullable @Query("outerRoomId") String outerRoomId, @Nullable @Query("singer") String singer, @Nullable @Query("pageIndex") String pageIndex, @Nullable @Query("cursor") String cursor);

    @GET("music-fair/user/roles")
    @NotNull
    e<HttpResult<ArrayList<String>>> getMusicMarketUserRoleList();

    @GET("play/pk/config")
    @NotNull
    e<HttpResult<PvpConfigurationModel>> getPvpConfig();

    @GET("live/quickInteract/panel")
    @NotNull
    e<HttpResult<PartyInteractionPanel>> getQuickInteractPanel(@Nullable @Query("roomId") String roomId);

    @Headers({"Content-Type: application/json"})
    @POST("live/quickInteract/recommend")
    @NotNull
    e<HttpResult<Object>> getQuickInteractRecommend(@Body @NotNull Map<String, Object> map);

    @GET("/play/relationHouse/info")
    @NotNull
    e<HttpResult<FriendsCabinInfo>> getRelationHouseInfo(@Nullable @Query("roomId") String roomId);

    @GET("/play/relationHouse/rule")
    @NotNull
    e<HttpResult<Object>> getRelationHouseRule(@Nullable @Query("roomId") String roomId);

    @GET("study-room/panel")
    @NotNull
    e<HttpResult<StudyRoomInfo>> getStudyRoomInfo(@Nullable @Query("roomId") String roomId);

    @GET("study-room/topic/getPanel")
    @NotNull
    e<HttpResult<StudyRoomTopicPanelInfo>> getStudyRoomTopicPanelInfo(@Nullable @Query("roomId") String roomId);

    @GET("/play/relationHouse/getTemplateList")
    @NotNull
    e<HttpResult<FriendsCabinTemplateBean>> getTemplateList(@Nullable @Query("roomId") String roomId);

    @GET("/chatGuess/getWinnerQuestions")
    @NotNull
    e<HttpResult<RequestResult<ChatGuessWinnerQuestionsData>>> getWinnerQuestions(@Nullable @Query("roomId") String roomId);

    @FormUrlEncoded
    @POST("/chatGuess/giveUpAskQuestion")
    @NotNull
    e<HttpResult<RequestResult<Object>>> giveUpAskQuestion(@Field("roomId") @Nullable String roomId);

    @FormUrlEncoded
    @POST("heart-risk/invite/user")
    @NotNull
    e<HttpResult<RequestResult<Object>>> heartRiskInvite(@Field("roomId") @Nullable String roomId, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt);

    @FormUrlEncoded
    @POST("heart-risk/invite/answer")
    @NotNull
    e<HttpResult<RequestResult<Object>>> heartRiskInviteAnswer(@Field("roomId") @Nullable String roomId, @Field("answerType") @Nullable Integer answerType);

    @FormUrlEncoded
    @POST("heart-risk/user/remove")
    @NotNull
    e<HttpResult<RequestResult<Object>>> heartRiskUserRemove(@Field("roomId") @Nullable String roomId, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt);

    @FormUrlEncoded
    @POST("play/thunder/inviteUpSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> inviteUpGameSeat(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("/play/relationHouse/inviteUpSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> inviteUpSeat(@Field("seatNo") @Nullable Integer seatNo, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt, @Field("roomId") @Nullable String roomId);

    @FormUrlEncoded
    @POST("/play/relationHouse/inviteUpSeatReply")
    @NotNull
    e<HttpResult<RequestResult<Object>>> inviteUpSeatReply(@Field("roomId") @Nullable String roomId, @Field("replyResult") @Nullable Integer replyResult, @Field("seatNo") @Nullable Integer seatNo);

    @FormUrlEncoded
    @POST("play/thunder/inviteUpSeatReply")
    @NotNull
    e<HttpResult<RequestResult<Object>>> inviteUpSeatReply(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("/chatGuess/join")
    @NotNull
    e<HttpResult<RequestResult<Object>>> joinChatGuess(@Field("roomId") @Nullable String roomId);

    @Headers({"Content-Type: application/json"})
    @POST("/play/relationHouse/together")
    @NotNull
    e<HttpResult<RequestResult<Object>>> matchMaking(@Body @NotNull Map<String, Object> map);

    @GET("music-fair/contract/singer")
    @NotNull
    e<HttpResult<MusicMarketContractBean>> musicContract(@NotNull @Query("outerRoomType") String outerRoomType, @Nullable @Query("outerRoomId") String outerRoomId, @Nullable @Query("targetUserId") String targetUserId);

    @GET("music-fair/contract/queryGift")
    @NotNull
    e<HttpResult<MusicMarketContractGiftBean>> musicContractGift(@QueryMap @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/contract/answerInvite")
    @NotNull
    e<HttpResult<MusicMarketContractBean>> musicMarketAnswerInvite(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/contract/cancel")
    @NotNull
    e<HttpResult<MusicMarketBaseBean>> musicMarketCancel(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/contract/inviteRenewal")
    @NotNull
    e<HttpResult<MusicMarketBaseBean>> musicMarketInviteRenewal(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/contract/inviteSign")
    @NotNull
    e<HttpResult<MusicMarketBaseBean>> musicMarketInviteSign(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/tab/pickSong")
    @NotNull
    e<HttpResult<RequestResult<Object>>> musicMarketPickSong(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/contract/producerSelf")
    @NotNull
    e<HttpResult<MusicMarketContractBean>> musicMarketProducerSelf(@Body @NotNull Map<String, Object> map);

    @Headers({"Content-Type: application/json"})
    @POST("music/sing/score")
    @NotNull
    e<HttpResult<Object>> musicSingScore(@Body @NotNull Map<String, Object> map);

    @GET("play/support/panel")
    @NotNull
    e<HttpResult<PvpAssistancePanelConfigurationModel>> pvpAssistanceConfigurationModel(@QueryMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("play/pvp/card/choose")
    @NotNull
    e<HttpResult<RequestResult<Object>>> pvpChoosePkCard(@FieldMap @NotNull Map<String, Object> map);

    @GET("play/pvp/pk/info")
    @NotNull
    e<HttpResult<PvpInfo>> pvpPkInfo(@Nullable @Query("roomId") String roomId);

    @FormUrlEncoded
    @POST("play/pvp/seat/down")
    @NotNull
    e<HttpResult<RequestResult<Object>>> pvpSeatDown(@Field("actionType") @Nullable Integer actionType, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt, @Field("roomId") @Nullable String roomId, @Field("roundId") @Nullable String roundId);

    @FormUrlEncoded
    @POST("play/pvp/seat/up")
    @NotNull
    e<HttpResult<RequestResult<Object>>> pvpSeatUp(@Field("actionType") @Nullable Integer actionType, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt, @Field("roomId") @Nullable String roomId, @Field("roundId") @Nullable String roundId);

    @FormUrlEncoded
    @POST("play/seat/up/respond")
    @NotNull
    e<HttpResult<RequestResult<Object>>> pvpSeatUpRespond(@Field("respondType") @Nullable Integer respondType, @Field("respond") @Nullable Integer respond, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt, @Field("roomId") @Nullable String roomId, @Field("roundId") @Nullable String roundId);

    @FormUrlEncoded
    @POST("play/pvp/support")
    @NotNull
    e<HttpResult<RequestResult<Object>>> pvpSupport(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("volcGame/startResult")
    @NotNull
    e<HttpResult<Object>> requestVolcGameCode(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("/chatGuess/start")
    @NotNull
    e<HttpResult<RequestResult<Object>>> startChatGuess(@Field("roomId") @Nullable String roomId);

    @FormUrlEncoded
    @POST("volcGame/preAllocateResource")
    @NotNull
    e<HttpResult<StartGameBean>> startGuineaPigGame(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("study-room/leaveSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> studyRoomDownSeat(@Field("roomId") @Nullable String roomId);

    @FormUrlEncoded
    @POST("study-room/leaveSeatByMaster")
    @NotNull
    e<HttpResult<RequestResult<Object>>> studyRoomDownSeatByMaster(@Field("roomId") @Nullable String roomId, @Field("targetUserIdEcpt") @Nullable String targetUserIdEcpt);

    @FormUrlEncoded
    @POST("study-room/answerInviteJoinSeat")
    @NotNull
    e<HttpResult<RequestResult<Object>>> studyRoomInviteReply(@Field("roomId") @Nullable String roomId, @Field("type") @Nullable Integer type);

    @Headers({"Content-Type: application/json"})
    @POST("live/quickInteract/vote")
    @NotNull
    e<HttpResult<RequestResult<PartyInteractionVoteResult>>> submitQuickInteractVote(@Body @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("/play/relationHouse/switchTemplate")
    @NotNull
    e<HttpResult<Object>> switchTemplate(@Field("roomId") @Nullable String roomId, @Field("templateId") @Nullable Integer templateId);

    @Headers({"Content-Type: application/json"})
    @POST("music-fair/pattern/switch")
    @NotNull
    e<HttpResult<RequestResult<Object>>> toggleMusicMarket(@Body @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("king-match/fragment/useEndReport")
    @NotNull
    e<HttpResult<Object>> useEndReport(@FieldMap @NotNull Map<String, Object> map);

    @FormUrlEncoded
    @POST("/chatGuess/winnerChooseQuestion")
    @NotNull
    e<HttpResult<RequestResult<Object>>> winnerChooseQuestion(@Field("roomId") @Nullable String roomId, @Field("questionId") @Nullable String questionId);
}