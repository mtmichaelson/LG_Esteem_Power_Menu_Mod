.class public Lcom/android/internal/telephony/MMDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "MMDataConnectionTracker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMDataConnectionTracker$2;,
        Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;,
        Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x8

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final INTENT_RECONNECT_ALARM_IP_VERSION:Ljava/lang/String; = "ipv"

.field private static final INTENT_RECONNECT_ALARM_SERVICE_TYPE:Ljava/lang/String; = "ds"

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final NETWORK_LOCK_DBG:Z = false

.field private static REASON_ADMIN_BLOCK:I = 0x0

.field private static REASON_ALEADY_CONNECTED:I = 0x0

.field private static REASON_ALEADY_DISCONNECTED:I = 0x0

.field private static REASON_CONNECTION_FAIL:I = 0x0

.field static final REASON_DETACH_AND_ATTACH:I = 0x2

.field static final REASON_DETACH_WITH_T3402_TIMER:I = 0x0

.field private static REASON_DISCONNECT_ERROR:I = 0x0

.field static final REASON_EMERGENCY_DETACH:I = 0x5

.field private static REASON_NODISCONNECT:I = 0x0

.field static final REASON_PERMANENT_DETACH:I = 0x1

.field static final REASON_POWER_OFF_DETACH:I = 0x3

.field private static REASON_REQ_ERROR:I = 0x0

.field static final REASON_UNKOWN_DETACH:I = 0xa

.field private static final SUPPORT_IPV4:Z

.field private static final SUPPORT_IPV6:Z

.field private static final SUPPORT_MPDN:Z

.field private static final SUPPORT_MPDN_SERVICE_ARBITRATION:Z

.field private static mIsImsPdnBlockedInCdma:Z

.field private static mIsPermanentDetachFromIms:Z

.field private static mIsPermanentDetachFromImsInCdma:Z

.field private static mIsT3402TimerRunning:Z

.field private static mUpdateIMSPDNInCDMA:Z



# instance fields
.field private DataBlock_InvalidSimCard:Z

.field private T3402_TIME:J

.field isDctActive:Z

.field private isDetachingProcessing:Z

.field private isNeedRedetach:Z

.field private isRATSearching:Z

.field private isneedtonotify:Z

.field lteConnectWithoutIms:Z

.field mCdmaHomeOperatorNumeric:Ljava/lang/String;

.field private mCdmaIntent:Landroid/app/PendingIntent;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataCallSetupPending:Z

.field private mDataConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredPowerState:Z

.field private mDisconnectAllDataCalls:Z

.field mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

.field private mISVoiceCall:Z

.field private mImsiM:Ljava/lang/String;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIpRetrievalRetryCounter:I

.field mIsEhrpdCapable:Z

.field private mIsIpRetrievalTimerTaskRunning:Z

.field private mIsPsRestricted:Z

.field private mIsRuimActivated:Z

.field private mIsWifiConnected:Z

.field private mLTEBlocked:Z

.field private mNoAutoAttach:Z

.field mPendingPowerOffCompleteMsg:Landroid/os/Message;

.field private mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

.field private mPppResyncChangedIpAddr:Ljava/lang/String;

.field private mPppResyncIpChangedTimer:Ljava/util/Timer;

.field private mReconnectIntent:Landroid/app/PendingIntent;

.field private mT3402Intent:Landroid/app/PendingIntent;

.field mUpdateDataConnectionsContext:I

.field mlastDetachReason:I



# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    const-string/jumbo v0, "persist.telephony.support_ipv4"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    .line 246
    const-string/jumbo v0, "persist.telephony.support_ipv6"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    .line 257
    const-string/jumbo v0, "persist.telephony.mpdn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    .line 268
    const-string/jumbo v0, "persist.telephony.ds.arbit"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    .line 302
    sput-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsT3402TimerRunning:Z

    .line 303
    sput-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromIms:Z

    .line 304
    sput-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsImsPdnBlockedInCdma:Z

    .line 307
    sput-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromImsInCdma:Z

    .line 309
    sput-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateIMSPDNInCDMA:Z

    .line 321
    sput v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ALEADY_CONNECTED:I

    .line 322
    sput v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ADMIN_BLOCK:I

    .line 323
    sput v3, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_REQ_ERROR:I

    .line 324
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_CONNECTION_FAIL:I

    .line 327
    sput v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ALEADY_DISCONNECTED:I

    .line 328
    sput v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_NODISCONNECT:I

    .line 329
    sput v3, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_DISCONNECT_ERROR:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 15
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/16 v8, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 205
    iput-boolean v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    .line 211
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->DataBlock_InvalidSimCard:Z

    .line 215
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    .line 218
    iput-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 223
    iput-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mT3402Intent:Landroid/app/PendingIntent;

    .line 224
    iput-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaIntent:Landroid/app/PendingIntent;

    .line 229
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    .line 230
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    .line 231
    iput-boolean v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    .line 235
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 236
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mISVoiceCall:Z

    .line 271
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsEhrpdCapable:Z

    .line 273
    iput-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    .line 279
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsRuimActivated:Z

    .line 280
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isRATSearching:Z

    .line 288
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 289
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    .line 291
    iput-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 297
    iput v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    .line 313
    const-wide/32 v5, 0xafc80

    iput-wide v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->T3402_TIME:J

    .line 350
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDetachingProcessing:Z

    .line 351
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isNeedRedetach:Z

    .line 352
    iput v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    .line 356
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    .line 360
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lteConnectWithoutIms:Z

    .line 364
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isneedtonotify:Z

    .line 369
    iput-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mImsiM:Ljava/lang/String;

    .line 390
    iput v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    .line 391
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    .line 400
    new-instance v5, Lcom/android/internal/telephony/MMDataConnectionTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    new-instance v5, Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 609
    new-instance v5, Lcom/android/internal/telephony/DataNetStatistics;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/DataNetStatistics;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    .line 612
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x8

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 613
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x9

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 614
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 615
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x13

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 617
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0xb

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 618
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0xc

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 619
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0x12

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 621
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0xd

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 622
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0xe

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    const/16 v5, 0x32

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setNetDetachReq(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 633
    const/16 v5, 0x33

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPDNCloseReq(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 638
    const/16 v5, 0x49

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPlmnBlockReleaseReq(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 644
    const/16 v5, 0x34

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setTimerExpiredEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 649
    const/16 v5, 0x35

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setATCommandEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 654
    const/16 v5, 0x3a

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setAdmReqEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 660
    const/16 v5, 0x3b

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setAdmDisReqEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 661
    const/16 v5, 0x42

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRATSearching(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 666
    const/16 v5, 0x3e

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setApnTableQueryReq(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 667
    const/16 v5, 0x40

    invoke-interface {p3, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setApnTableSetReq(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 673
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x14

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 674
    new-instance v5, Landroid/os/Registrant;

    const/16 v6, 0x15

    invoke-direct {v5, p0, v6, v7}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1, p3, v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 678
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0x19

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 679
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0x1a

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 685
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const/16 v6, 0x1e

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 687
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/16 v6, 0xf

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->registerForDataProfileDbChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 689
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 690
    .local v2, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_106
    if-ge v3, v4, :cond_11f

    aget-object v1, v0, v3

    .line 691
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    add-int/lit8 v3, v3, 0x1

    goto :goto_106

    .line 694
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_11f
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v5, "android.intent.action.VOICE_CALL_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v5, "android.intent.action.VOICE_CALL_ENDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v5, "com.lge.lte.factoryConn"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v5, "com.lge.lte.factoryDisconn"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v5, "action.ims.t3402.timer.expired"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v5, "action.ims.cdma.timer.expired"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2, v7, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->createDataCallList()V

    .line 756
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "test_mode_setting"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_293

    move v5, v10

    :goto_170
    iput-boolean v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lteConnectWithoutIms:Z

    .line 762
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_296

    move v7, v10

    :goto_185
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 764
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data_ims"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_299

    move v7, v10

    :goto_19b
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 766
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data_admin"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_29c

    move v7, v10

    :goto_1b1
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 768
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data_vzwapp"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_29f

    move v7, v10

    :goto_1c7
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 773
    const-string/jumbo v5, "ro.config.ehrpd"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsEhrpdCapable:Z

    .line 775
    const-string/jumbo v5, "persist.cust.tel.sdc.feature"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 779
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "socket_data_call_enable"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2a2

    move v5, v10

    :goto_1ec
    iput-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 817
    :cond_1ee
    const-string/jumbo v5, "ro.cdma.home.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    .line 819
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_IPV4 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_IPV6 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_MPDN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_MPDN_SERVICE_ARBITRATION = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_OMH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfileTracker;->isOmhEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_OOS_IS_DISCONNECT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOosIsDisconnect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 828
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    .line 832
    return-void

    :cond_293
    move v5, v9

    .line 756
    goto/16 :goto_170

    :cond_296
    move v7, v9

    .line 762
    goto/16 :goto_185

    :cond_299
    move v7, v9

    .line 764
    goto/16 :goto_19b

    :cond_29c
    move v7, v9

    .line 766
    goto/16 :goto_1b1

    :cond_29f
    move v7, v9

    .line 768
    goto/16 :goto_1c7

    :cond_2a2
    move v5, v9

    .line 779
    goto/16 :goto_1ec
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/MMDataConnectionTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MMDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/internal/telephony/MMDataConnectionTracker;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->DataBlock_InvalidSimCard:Z

    return p1
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromIms:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    return p1
.end method

.method static synthetic access$702(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 157
    sput-boolean p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsImsPdnBlockedInCdma:Z

    return p0
.end method

.method private checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;Z)Z
    .registers 9
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"
    .parameter "dataCallsInOrderOfPriority"

    .prologue
    const/4 v3, 0x1

    .line 4066
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 4067
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_1b

    .line 4068
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v0

    .line 4069
    .local v0, setupDone:Z
    if-eqz v0, :cond_24

    move v1, v3

    .line 4079
    .end local v0       #setupDone:Z,
    :goto_1a
    return v1

    .line 4071
    :cond_1b
    if-ne p4, v3, :cond_24

    .line 4074
    const-string v1, "Skipping bringing up of low pri ds due to pending high pri ds"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    move v1, v3

    .line 4075
    goto :goto_1a

    .line 4079
    :cond_24
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private checkIMSIpv4Single()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1188
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileTracker;->getCurrentDataProfileList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1189
    .local v0, allDataProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 1190
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    if-eqz v1, :cond_b

    .line 1192
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-eq v3, v4, :cond_b

    .line 1193
    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v3

    if-ne v3, v5, :cond_b

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v3

    if-ne v3, v5, :cond_b

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1197
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyIMSIPv6NotSupport()V

    .line 1203
    .end local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_3e
    return-void
.end method

.method private checkadminprocess(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 5
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 2701
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v0, :cond_11

    .line 2703
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataDisConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 2704
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOTAAdminReq:Z

    if-nez v0, :cond_11

    .line 2706
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 2710
    :cond_11
    return-void
.end method

.method private createDataCallList()V
    .registers 4

    .prologue
    .line 4639
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    .line 4642
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    const/16 v2, 0x8

    if-ge v1, v2, :cond_18

    .line 4643
    invoke-static {p0}, Lcom/android/internal/telephony/MMDataConnection;->makeDataConnection(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/MMDataConnection;

    move-result-object v0

    .line 4644
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4642
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4646
    .end local v0       #dc:Lcom/android/internal/telephony/DataConnection;,
    :cond_18
    return-void
.end method

.method private destroyDataCallList()V
    .registers 3

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 4650
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4652
    :cond_b
    return-void
.end method

.method private disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z
    .registers 11
    .parameter "serviceType"
    .parameter "reason"

    .prologue
    .line 3553
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_6
    if-ge v4, v5, :cond_44

    aget-object v3, v0, v4

    .line 3554
    .local v3, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataServiceType;->isLowerPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_41

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_41

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 3558
    const/4 v2, 0x0

    .line 3560
    .local v2, disconnectDone:Z
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 3561
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_2f

    .line 3562
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .line 3563
    const/4 v2, 0x1

    .line 3565
    :cond_2f
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 3566
    if-eqz v1, :cond_3d

    .line 3567
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .line 3568
    const/4 v2, 0x1

    .line 3570
    :cond_3d
    if-eqz v2, :cond_41

    .line 3571
    const/4 v6, 0x1

    .line 3575
    .end local v1       #dc:Lcom/android/internal/telephony/DataConnection;,
    .end local v2       #disconnectDone:Z,
    .end local v3       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :goto_40
    return v6

    .line 3553
    .restart local v3       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3575
    .end local v3       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_44
    const/4 v6, 0x0

    goto :goto_40
.end method

.method private dnsGWSetting(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 16
    .parameter "dc"
    .parameter "ds"
    .parameter "ipv"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const-string v10, ""

    .line 2984
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v0

    .line 2985
    .local v0, dnsServers:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v1

    .line 2986
    .local v1, gatewayAddress:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2987
    .local v5, skipDNS:Z
    const/4 v6, 0x0

    .line 2989
    .local v6, skipGateWay:Z
    aget-object v7, v0, v11

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    aget-object v7, v0, v9

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 2991
    :cond_22
    const/4 v5, 0x1

    .line 2994
    :cond_23
    const-string v7, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    sget-object v7, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    if-ne p2, v7, :cond_33

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p3, v7, :cond_34

    .line 2997
    :cond_33
    const/4 v6, 0x1

    .line 3000
    :cond_34
    if-ne v5, v9, :cond_39

    if-ne v6, v9, :cond_39

    .line 3042
    :cond_38
    return-void

    .line 3003
    :cond_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 3004
    .local v2, interfaceName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "net."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3006
    .local v3, prefix:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3007
    .local v4, retry_Counter:I
    :goto_58
    const/16 v7, 0xa

    if-ge v4, v7, :cond_38

    if-eqz v5, :cond_60

    if-nez v6, :cond_38

    .line 3009
    :cond_60
    if-nez v5, :cond_b0

    .line 3011
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    .line 3012
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v9

    .line 3014
    aget-object v7, v0, v11

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    aget-object v7, v0, v9

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b0

    .line 3016
    :cond_a8
    aget-object v7, v0, v11

    aget-object v8, v0, v9

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/telephony/DataConnection;->setDnsServers(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    const/4 v5, 0x1

    .line 3022
    :cond_b0
    if-nez v6, :cond_d5

    .line 3024
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "gw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3026
    const-string v7, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d5

    .line 3028
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/DataConnection;->setGW(Ljava/lang/String;)V

    .line 3029
    const/4 v6, 0x1

    .line 3033
    :cond_d5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry DNS/GW address after a delay Retry Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SkipDns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SkipGW"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3036
    add-int/lit8 v4, v4, 0x1

    .line 3038
    const-wide/16 v7, 0x12c

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_58
.end method

.method private findFreeDataCall()Lcom/android/internal/telephony/MMDataConnection;
    .registers 6

    .prologue
    .line 4655
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 4656
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/MMDataConnection;

    move-object v2, v0

    .line 4657
    .local v2, dc:Lcom/android/internal/telephony/MMDataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/MMDataConnection;->isInactive()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v2

    .line 4661
    .end local v1       #conn:Lcom/android/internal/telephony/DataConnection;,
    .end local v2       #dc:Lcom/android/internal/telephony/MMDataConnection;,
    :goto_1d
    return-object v4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method private getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 5
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 3502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataCallStateByCid(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/DataCallState;
    .registers 6
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)",
            "Lcom/android/internal/telephony/DataCallState;"
        }
    .end annotation

    .prologue
    .line 2958
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0       
    .local v1, s:I
    :goto_5
    if-ge v0, v1, :cond_1c

    .line 2959
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_19

    .line 2960
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    move-object v2, p0

    .line 2962
    :goto_18
    return-object v2

    .line 2958
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2962
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .registers 5

    .prologue
    .line 4591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value of mIsEhrpdCapable is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsEhrpdCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4595
    const/4 v1, 0x0

    .line 4596
    .local v1, type:Lcom/android/internal/telephony/DataProfile$DataProfileType;
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .line 4597
    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v2, :cond_23

    if-nez v0, :cond_25

    .line 4598
    :cond_23
    const/4 v1, 0x0

    .line 4635
    :goto_24
    return-object v1

    .line 4603
    :cond_25
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v0, v2, :cond_2c

    .line 4622
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_24

    .line 4626
    :cond_2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4627
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_24

    .line 4629
    :cond_35
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->isOmhEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 4630
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_24

    .line 4632
    :cond_40
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_24
.end method

.method private getDesiredPowerState()Z
    .registers 2

    .prologue
    .line 4194
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    return v0
.end method

.method private getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .registers 2

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    return-object v0
.end method

.method private isHigherPriorityDataCallActive(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 7
    .parameter "serviceType"

    .prologue
    .line 3583
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_25

    aget-object v1, v0, v2

    .line 3584
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataServiceType;->isHigherPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3586
    const/4 v4, 0x1

    .line 3589
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :goto_21
    return v4

    .line 3583
    .restart local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3589
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_25
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private isIpAddrChanged(Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnection;)Z
    .registers 6
    .parameter "activeDC"
    .parameter "dc"

    .prologue
    .line 2966
    const/4 v0, 0x0

    .line 2970
    .local v0, ipaddrChanged:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2971
    iget-object v1, p1, Lcom/android/internal/telephony/DataCallState;->address:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2972
    const/4 v0, 0x1

    .line 2975
    :cond_18
    return v0
.end method

.method private isReadyForData()Z
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v6, "phone"

    const-string v10, "DATA"

    .line 4236
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDataConnectivityEnabled()Z

    move-result v3

    .line 4238
    .local v3, isReadyForData:Z
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    .line 4239
    .local v5, roaming:Z
    if-eqz v3, :cond_68

    if-eqz v5, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v6

    if-eqz v6, :cond_68

    :cond_1f
    move v3, v8

    .line 4241
    :goto_20
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 4242
    .local v0, dataRegState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v4

    .line 4244
    .local v4, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    :try_start_2e
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->Check_Notwork_Lock_Allowed()Z

    move-result v6

    if-ne v6, v8, :cond_6a

    .line 4246
    const-string v6, "DATA"

    const-string v7, "isReadyForData ==> Check_Notwork_Lock_Allowed is true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_46} :catch_72

    .line 4257
    :goto_46
    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->DataBlock_InvalidSimCard:Z

    if-ne v6, v8, :cond_7c

    .line 4259
    const-string v6, "DATA"

    const-string v6, "isReadyForData ==> DataBlock_InvalidSimCard is true"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    :goto_51
    :try_start_51
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->Check_Notwork_Lock_Allowed()Z

    move-result v6

    if-eqz v6, :cond_85

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->DataBlock_InvalidSimCard:Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_64} :catch_84

    if-eqz v6, :cond_85

    move v6, v9

    .line 4369
    :goto_67
    return v6

    .end local v0       #dataRegState:I,
    .end local v4       #r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;,
    :cond_68
    move v3, v9

    .line 4239
    goto :goto_20

    .line 4250
    .restart local v0       #dataRegState:I,
    .restart local v4       #r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;,
    :cond_6a
    :try_start_6a
    const-string v6, "DATA"

    const-string v7, "isReadyForData ==> Check_Notwork_Lock_Allowed is false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_72

    goto :goto_46

    .line 4253
    :catch_72
    move-exception v6

    move-object v1, v6

    .line 4254
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "DATA"

    const-string v6, "isReadyForData ==> Check_Notwork_Lock_Allowed exception occured"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 4263
    .end local v1       #ex:Ljava/lang/Exception;,
    :cond_7c
    const-string v6, "DATA"

    const-string v6, "isReadyForData ==> DataBlock_InvalidSimCard is false"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 4274
    :catch_84
    move-exception v6

    .line 4283
    :cond_85
    if-eqz v3, :cond_b4

    if-nez v0, :cond_8d

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v4, v6, :cond_93

    :cond_8d
    if-eqz v0, :cond_93

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-eqz v6, :cond_b4

    :cond_93
    move v3, v8

    .line 4294
    :goto_94
    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isRATSearching:Z

    if-eqz v6, :cond_b6

    .line 4296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RAT Searching or detaching process going. Radiotech= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    move v6, v9

    .line 4297
    goto :goto_67

    :cond_b4
    move v3, v9

    .line 4283
    goto :goto_94

    .line 4311
    :cond_b6
    const/4 v2, 0x1

    .line 4315
    .local v2, isNvMode:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "use.dataservice.nv is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":: Must use NV mode(true) !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 4317
    if-eqz v2, :cond_d8

    .line 4318
    iput-boolean v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsRuimActivated:Z

    .line 4326
    :cond_d8
    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsRuimActivated:Z

    if-nez v6, :cond_125

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v6, v7, :cond_fc

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v6, v7, :cond_fc

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v6, v7, :cond_fc

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v6, v7, :cond_125

    .line 4330
    :cond_fc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UICC is not Activated mIsRuimActivated. state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsRuimActivated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Radiotech= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    move v6, v9

    .line 4331
    goto/16 :goto_67

    .line 4339
    :cond_125
    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v4, v6, :cond_131

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    if-ne v6, v8, :cond_134

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v4, v6, :cond_134

    :cond_131
    move v6, v9

    .line 4341
    goto/16 :goto_67

    .line 4347
    :cond_134
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v6

    if-nez v6, :cond_148

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v4, v6, :cond_148

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isUnknown()Z

    move-result v6

    if-eqz v6, :cond_14f

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-eqz v6, :cond_14f

    .line 4352
    :cond_148
    if-eqz v3, :cond_175

    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v6, :cond_175

    move v3, v8

    .line 4358
    :cond_14f
    :goto_14f
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v6

    if-eqz v6, :cond_172

    .line 4359
    if-eqz v3, :cond_177

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v6, v6, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v6, v8, :cond_16d

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v6, :cond_177

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v6

    if-eqz v6, :cond_177

    :cond_16d
    iget-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mISVoiceCall:Z

    if-nez v6, :cond_177

    move v3, v8

    :cond_172
    :goto_172
    move v6, v3

    .line 4369
    goto/16 :goto_67

    :cond_175
    move v3, v9

    .line 4352
    goto :goto_14f

    :cond_177
    move v3, v9

    .line 4359
    goto :goto_172
.end method

.method private logDataConnectionFailure(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Lcom/android/internal/telephony/DataConnectionFailCause;)V
    .registers 9
    .parameter "ds"
    .parameter "dp"
    .parameter "ipv"
    .parameter "cause"

    .prologue
    .line 3519
    invoke-virtual {p4}, Lcom/android/internal/telephony/DataConnectionFailCause;->isEventLoggable()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3520
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 3521
    .local v1, loc:Landroid/telephony/CellLocation;
    const/4 v0, -0x1

    .line 3522
    .local v0, id:I
    if-eqz v1, :cond_1b

    .line 3523
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_2e

    .line 3524
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1       #loc:Landroid/telephony/CellLocation;,
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 3529
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v2, v3, :cond_2d

    .line 3548
    .end local v0       #id:I,
    :cond_2d
    return-void

    .line 3526
    .restart local v0       #id:I,
    .restart local v1       #loc:Landroid/telephony/CellLocation;,
    :cond_2e
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1       #loc:Landroid/telephony/CellLocation;,
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_1b
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 2004
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    .line 2005
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 2006
    .local v1, otaProvision:[I
    if-eqz v1, :cond_18

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 2007
    const/4 v2, 0x0

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_20

    .line 2028
    .end local v1       #otaProvision:[I,
    :cond_18
    :goto_18
    :pswitch_18
    return-void

    .line 2021
    .restart local v1       #otaProvision:[I,
    :pswitch_19
    const-string v2, "cdmaOtaPovisioning"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_18

    .line 2007
    nop

    :pswitch_data_20
    .packed-switch 0x8
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private onDataProfileListChanged(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 2177
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2187
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 2188
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 2189
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 2190
    return-void
.end method

.method private onDetachComplete()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AFW receving detach complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1959
    iput-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDetachingProcessing:Z

    .line 1964
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->updatePdnInterfaceInfo()V

    .line 1968
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isNeedRedetach:Z

    if-eqz v0, :cond_4b

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry need!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1971
    iput-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isNeedRedetach:Z

    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestLteDetach(Landroid/os/Message;I)V

    .line 1974
    :cond_4b
    return-void
.end method

.method private onPlmnBlockRelease()V
    .registers 3

    .prologue
    .line 1981
    const-string v0, "AFW received Plmn Block Release message"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1983
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1984
    const-string v0, "Release LTE Block and Update Dataconnection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 1986
    const-string/jumbo v0, "plmnBlockRelease"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 1991
    :goto_18
    return-void

    .line 1989
    :cond_19
    const-string v0, "There is no LTE Block"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private onRATSetted(Landroid/os/AsyncResult;)V
    .registers 13
    .parameter "ar"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1388
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v3, v0

    .line 1389
    .local v3, RATInfo:[I
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    .line 1391
    .local v6, oldRadioTech:I
    if-nez v3, :cond_1c

    .line 1393
    const-string v7, "Release RAT Searching Fail!!!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1472
    :goto_1b
    return-void

    .line 1396
    :cond_1c
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    aget v8, v3, v9

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v1

    .line 1397
    .local v1, NetState:I
    aget v2, v3, v10

    .line 1398
    .local v2, NewRadioTech:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RAT Searching Complete State= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OLD RadioTech= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " NewRadioTech"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1402
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isRATSearching:Z

    .line 1403
    if-eqz v1, :cond_59

    .line 1405
    const-string v7, "Out of Srv in the RAT Setted!!!!!!!!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1408
    :cond_59
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 1410
    if-eq v6, v2, :cond_81

    .line 1411
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1415
    iget-boolean v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isneedtonotify:Z

    if-ne v7, v10, :cond_81

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v7

    if-ne v7, v10, :cond_81

    .line 1417
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isneedtonotify:Z

    .line 1418
    const-string/jumbo v7, "radioTechnologyChanged"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 1427
    :cond_81
    const/16 v7, 0xe

    if-eq v2, v7, :cond_a4

    .line 1430
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 1434
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->clearAdminReqValue()V

    .line 1438
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v8, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v7

    if-ne v7, v10, :cond_a4

    iget-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOTAAdminReq:Z

    if-nez v7, :cond_a4

    .line 1440
    const-string v7, "Admin is used only for BIP, and we leave LTE, so turn off the admin!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1441
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v8, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 1448
    :cond_a4
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_aa
    :goto_aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnection;

    .line 1449
    .local v4, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->isCurrentStateConnecting()Z

    move-result v7

    if-nez v7, :cond_c2

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 1450
    :cond_c2
    iput-boolean v10, v4, Lcom/android/internal/telephony/DataConnection;->isIgnoreRATSearchingFail:Z

    goto :goto_aa

    .line 1456
    .end local v4       #dc:Lcom/android/internal/telephony/DataConnection;,
    :cond_c5
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->IsMPDPPossilbe(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->IsMPDPPossilbe(I)Z

    move-result v8

    if-eq v7, v8, :cond_e4

    .line 1458
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 1459
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 1470
    :goto_dd
    const-string v7, "RAT Searching Completed"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1465
    :cond_e4
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllRetryCounter()V

    goto :goto_dd
.end method

.method private resetFailedDataConnection(Lcom/android/internal/telephony/DataConnection;)V
    .registers 4
    .parameter "dc"

    .prologue
    .line 2688
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->GetServiceTypeFromDP(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .line 2690
    .local v0, type:Lcom/android/internal/telephony/DataServiceType;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetProfilesAsWorking(Lcom/android/internal/telephony/DataServiceType;)V

    .line 2691
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V

    .line 2692
    return-void
.end method

.method private tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    .registers 7
    .parameter "dc"
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 4457
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    .line 4459
    const-string/jumbo v1, "tryDisconnectDataCall is failed cause HO State"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    move v1, v3

    .line 4474
    :goto_16
    return v1

    .line 4464
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryDisconnectDataCall : dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 4466
    const/4 v0, 0x0

    .line 4468
    .local v0, dcReason:I
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 4469
    const/4 v0, 0x1

    .line 4473
    :goto_43
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v3, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    .line 4474
    const/4 v1, 0x1

    goto :goto_16

    .line 4471
    :cond_4d
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private trySetUpDataCallStart(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z
    .registers 8
    .parameter "ds"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    .line 3644
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataProfileTracker;->isIpvTypeDual(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    .line 3645
    .local v0, dualTypeIPv:Z
    if-nez v0, :cond_79

    .line 3651
    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v2, :cond_31

    .line 3653
    sget-boolean v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_31

    .line 3656
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v1

    .line 3657
    .local v1, setupDone:Z
    if-eqz v1, :cond_31

    move v2, v4

    .line 3723
    .end local v1       #setupDone:Z,
    :goto_30
    return v2

    .line 3662
    :cond_31
    sget-boolean v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_55

    .line 3665
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v1

    .line 3666
    .restart local v1       #setupDone:Z,
    if-eqz v1, :cond_55

    move v2, v4

    .line 3667
    goto :goto_30

    .line 3671
    .end local v1       #setupDone:Z,
    :cond_55
    sget-boolean v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_11f

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_11f

    .line 3674
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v1

    .line 3675
    .restart local v1       #setupDone:Z,
    if-eqz v1, :cond_11f

    move v2, v4

    .line 3676
    goto :goto_30

    .line 3681
    .end local v1       #setupDone:Z,
    :cond_79
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isCurrentStateDisconnecting(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isCurrentStateDisconnecting(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 3684
    :cond_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "we will try setupdatacall later, cause : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not disconnected compleately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    move v2, v4

    .line 3685
    goto :goto_30

    .line 3690
    :cond_ac
    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v2, :cond_d5

    .line 3693
    sget-boolean v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_d5

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_d5

    .line 3696
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v1

    .line 3697
    .restart local v1       #setupDone:Z,
    if-eqz v1, :cond_d5

    move v2, v4

    .line 3698
    goto/16 :goto_30

    .line 3702
    .end local v1       #setupDone:Z,
    :cond_d5
    sget-boolean v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    if-eqz v2, :cond_fa

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_fa

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_fa

    .line 3705
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v1

    .line 3706
    .restart local v1       #setupDone:Z,
    if-eqz v1, :cond_fa

    move v2, v4

    .line 3707
    goto/16 :goto_30

    .line 3711
    .end local v1       #setupDone:Z,
    :cond_fa
    sget-boolean v2, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-nez v2, :cond_11f

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_11f

    .line 3714
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v1

    .line 3715
    .restart local v1       #setupDone:Z,
    if-eqz v1, :cond_11f

    move v2, v4

    .line 3716
    goto/16 :goto_30

    .line 3723
    .end local v1       #setupDone:Z,
    :cond_11f
    const/4 v2, 0x0

    goto/16 :goto_30
.end method

.method private trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z
    .registers 13
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 4496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trySetupDataCall : ds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ipv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 4497
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v2

    .line 4498
    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    if-nez v2, :cond_67

    .line 4499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no working data profile available to establish service type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 4500
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 4501
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    move v1, v4

    .line 4582
    :goto_66
    return v1

    .line 4505
    :cond_67
    iget-boolean v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->DataBlock_InvalidSimCard:Z

    if-ne v1, v8, :cond_6b

    .line 4516
    :cond_6b
    :try_start_6b
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->Check_Notwork_Lock_Allowed()Z

    move-result v1

    if-eqz v1, :cond_83

    iget-boolean v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->DataBlock_InvalidSimCard:Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_82

    if-eqz v1, :cond_83

    move v1, v4

    .line 4519
    goto :goto_66

    .line 4522
    :catch_82
    move-exception v1

    .line 4534
    :cond_83
    sget-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 4537
    :cond_91
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 4538
    const-string v1, "Lower/Equal priority call disconnected."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v1, v8

    .line 4539
    goto :goto_66

    .line 4541
    :cond_9e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isHigherPriorityDataCallActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 4542
    const-string v1, "Higher priority call active. Ignoring setup data call request."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v1, v4

    .line 4543
    goto :goto_66

    .line 4547
    :cond_ab
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->findFreeDataCall()Lcom/android/internal/telephony/MMDataConnection;

    move-result-object v0

    .line 4548
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v0, :cond_c0

    .line 4551
    sget-boolean v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v1, :cond_be

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    move v7, v8

    .local v7, ret:Z
    :goto_bc
    move v1, v8

    .line 4557
    goto :goto_66

    .end local v7       #ret:Z,
    :cond_be
    move v7, v4

    .line 4551
    goto :goto_bc

    .line 4560
    :cond_c0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 4561
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 4563
    iput-boolean v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    .line 4566
    new-instance v6, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    .line 4567
    .local v6, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iput-object v0, v6, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    .line 4568
    iput-object v2, v6, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    .line 4569
    iput-object p1, v6, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    .line 4570
    iput-object p2, v6, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 4571
    iput-object p3, v6, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    .line 4577
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne v3, p1, :cond_e4

    move v4, v8

    :cond_e4
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnection;->connect(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;ILandroid/os/Message;)V

    move v1, v8

    .line 4582
    goto/16 :goto_66
.end method

.method private updateOperatorNumericInDpt(Ljava/lang/String;)Z
    .registers 4
    .parameter "reason"

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_15

    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    :goto_13
    const/4 v0, 0x0

    return v0

    .line 2246
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_29

    .line 2247
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2249
    :cond_29
    const-string/jumbo v0, "records are loaded, but both mSimrecords & mRuimRecords are null."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public ConfirmIMSPDNCLOSE()V
    .registers 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->ConfirmPDNClose(Landroid/os/Message;)V

    .line 1596
    return-void
.end method

.method public ConfirmLTENetDetach()V
    .registers 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->ConfirmLTENetDetach(Landroid/os/Message;)V

    .line 1588
    return-void
.end method

.method protected GetServiceTypeFromDP(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataServiceType;
    .registers 5
    .parameter "dc"

    .prologue
    const/4 v2, 0x1

    .line 1668
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    if-nez v0, :cond_f

    .line 1670
    :cond_7
    const-string v0, "GetServiceTypeFromDP, mDataProfile=null, so return last pdn type "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1671
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    .line 1689
    :goto_e
    return-object v0

    .line 1675
    :cond_f
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 1677
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_e

    .line 1679
    :cond_1c
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-ne v0, v2, :cond_29

    .line 1681
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_e

    .line 1683
    :cond_29
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-ne v0, v2, :cond_36

    .line 1685
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_e

    .line 1689
    :cond_36
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_e
.end method

.method protected checkNAIConnection()V
    .registers 6

    .prologue
    .line 3597
    const/4 v2, 0x0

    .line 3599
    .local v2, isNAIConnect:Z
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 3601
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3603
    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_7

    .line 3605
    const/4 v2, 0x1

    .line 3611
    .end local v0       #dc:Lcom/android/internal/telephony/DataConnection;,
    :cond_24
    if-nez v2, :cond_2c

    .line 3612
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataNetStatistics;->updatePdnInfoForSingiepdn(Z)V

    .line 3614
    :cond_2c
    return-void
.end method

.method clearAdminReqValue()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2489
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUICCAdminReq:Z

    .line 2492
    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    .line 2493
    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINDisReq:Z

    .line 2494
    return-void
.end method

.method protected connectWithOtherPDN(ILcom/android/internal/telephony/DataServiceType;)Z
    .registers 8
    .parameter "radiTech"
    .parameter "ds"

    .prologue
    const/4 v4, 0x1

    .line 4098
    const/16 v1, 0xe

    if-ne p1, v1, :cond_9

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne p2, v1, :cond_b

    :cond_9
    move v1, v4

    .line 4109
    :goto_a
    return v1

    .line 4101
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v1

    if-eq v1, v4, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v1

    if-ne v1, v4, :cond_2d

    :cond_23
    move v0, v4

    .line 4104
    .local v0, isIMSAttach:Z
    :goto_24
    if-nez v0, :cond_2b

    .line 4106
    const-string v1, "!!!!!!!!!!!!!!!!Radio Tech is LTE, and IMS is not connected, not try to attach LTE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    :cond_2b
    move v1, v0

    .line 4109
    goto :goto_a

    .line 4101
    .end local v0       #isIMSAttach:Z,
    :cond_2d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_24
.end method

.method public disconnectAllConnections(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 3631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 3632
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 3633
    return-void
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unNetDetachReq(Landroid/os/Handler;)V

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetPDNClose(Landroid/os/Handler;)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataProfileTracker;->unregisterForDataProfileDbChanged(Landroid/os/Handler;)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->dispose()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 872
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->destroyDataCallList()V

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 876
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 877
    return-void
.end method

.method dumpDataCalls()V
    .registers 6

    .prologue
    .line 4418
    const-string v3, "---dc list---"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 4419
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 4420
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v3

    if-nez v3, :cond_b

    .line 4421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4422
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ipv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpVersion()Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ipaddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", dns="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 4431
    .end local v0       #dc:Lcom/android/internal/telephony/DataConnection;,
    .end local v2       #sb:Ljava/lang/StringBuilder;,
    :cond_c9
    return-void
.end method

.method public dumpDataReadinessinfo()Ljava/lang/String;
    .registers 6

    .prologue
    const-string v4, "/"

    .line 4394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4395
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[DataRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4396
    const-string v1, ", data network state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4397
    const-string v1, ", mMasterDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4398
    const-string v1, ", is Roaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4399
    const-string v1, ", dataOnRoamingEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4400
    const-string v1, ", isPsRestricted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4401
    const-string v1, ", desiredPowerState  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4402
    const-string v1, ", mSIMRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_9f

    .line 4404
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4406
    :cond_9f
    const-string v1, ", cdmaSubSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4407
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cb

    .line 4408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4409
    :cond_cb
    const-string v1, ", mRuimRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4410
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_100

    .line 4411
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    :cond_100
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method dumpDataServiceTypes()V
    .registers 11

    .prologue
    const-string v9, ")"

    const-string v8, "("

    .line 4434
    const-string v5, "---ds list---"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 4435
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v3, :cond_d7

    aget-object v1, v0, v2

    .line 4436
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4437
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ds= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4439
    const-string v5, ", active = v4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4441
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 4442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    :cond_8b
    const-string v5, " v6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4446
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 4447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    :cond_cc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 4435
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 4451
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .end local v4       #sb:Ljava/lang/StringBuilder;,
    :cond_d7
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4719
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4720
    .local v0, dcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .registers 4

    .prologue
    .line 4697
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 4698
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1d

    .line 4699
    sget-object v1, Lcom/android/internal/telephony/MMDataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 4714
    :cond_1d
    :goto_1d
    return-object v0

    .line 4701
    :pswitch_1e
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 4702
    goto :goto_1d

    .line 4704
    :pswitch_21
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 4705
    goto :goto_1d

    .line 4707
    :pswitch_24
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 4708
    goto :goto_1d

    .line 4710
    :pswitch_27
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_1d

    .line 4699
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public getDataOnRoamingEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4680
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_13

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    .line 4683
    :goto_10
    return v1

    :cond_11
    move v1, v3

    .line 4680
    goto :goto_10

    .line 4682
    :catch_13
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 4683
    goto :goto_10
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getEhrpdInfoForIms()[B
    .registers 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getEhrpdInfoForIms()[B

    move-result-object v0

    return-object v0
.end method

.method public getLTEInfoForIMS()Lcom/android/internal/telephony/lte/LteInfoForIMS;
    .registers 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getLTEInfoForIMS()Lcom/android/internal/telephony/lte/LteInfoForIMS;

    move-result-object v0

    return-object v0
.end method

.method public getUICCState()Z
    .registers 2

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUICCAdminReq:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 881
    iget-boolean v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    if-nez v7, :cond_d

    .line 882
    const-string v7, "Ignoring handler messages, DCT marked as disposed."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1180
    :cond_c
    :goto_c
    return-void

    .line 886
    :cond_d
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_1e6

    .line 1177
    :pswitch_12
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_c

    .line 888
    :pswitch_16
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onUpdateDataConnections(Ljava/lang/String;I)V

    goto :goto_c

    .line 892
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_c

    .line 896
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataConnectionAttached()V

    goto :goto_c

    .line 900
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataConnectionDetached()V

    goto :goto_c

    .line 908
    :pswitch_2c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRadioTechnologyChanged(Landroid/os/AsyncResult;)V

    goto :goto_c

    .line 918
    :pswitch_34
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataCallListChanged(Landroid/os/AsyncResult;)V

    goto :goto_c

    .line 925
    :pswitch_3c
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkIMSIpv4Single()V

    .line 928
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataProfileListChanged(Landroid/os/AsyncResult;)V

    goto :goto_c

    .line 932
    :pswitch_47
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_c

    .line 936
    :pswitch_4f
    const-string v7, "cdmaSubscriptionSourceChanged"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_c

    .line 940
    :pswitch_55
    const-string v7, "PS restrict enabled."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 948
    iput-boolean v13, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_c

    .line 952
    :pswitch_60
    const-string v7, "PS restrict disable."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 957
    iput-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    .line 958
    const-string/jumbo v7, "psRestrictDisabled"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_c

    .line 966
    :pswitch_6e
    const-string v7, "Network detach req, IMS will confirm"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDetachReqFromNet()V

    goto :goto_c

    .line 983
    :pswitch_77
    const-string v7, "Network PDN Close, we will check ims"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 984
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onPDNCloseReq(Landroid/os/AsyncResult;)V

    goto :goto_c

    .line 991
    :pswitch_84
    const-string v7, "PDN Timer Expired"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 992
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onTimerExpired(Landroid/os/AsyncResult;)V

    goto/16 :goto_c

    .line 1000
    :pswitch_92
    const-string v7, "AT_Command Receving"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onATCommand_Attach()V

    goto/16 :goto_c

    .line 1009
    :pswitch_9c
    const-string v7, "EVENT_FATORY_CONNECT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1011
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->releaseLTEBlock(Landroid/os/Message;)V

    goto/16 :goto_c

    .line 1014
    :pswitch_a9
    const-string v7, "EVENT_FATORY_DISCONNECT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendDetachReqtoRIL(I)V

    goto/16 :goto_c

    .line 1049
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onADMinReq()V

    goto/16 :goto_c

    .line 1056
    :pswitch_b8
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onADMinDisReq()V

    goto/16 :goto_c

    .line 1062
    :pswitch_bd
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onTetheredModeStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_c

    .line 1069
    :pswitch_c6
    const-string v7, "EVENT_UMS_CONNECT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onUMSConnect()V

    goto/16 :goto_c

    .line 1074
    :pswitch_d0
    const-string v7, "EVENT_UMS_DISCONNECT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onUMSDisConnect()V

    goto/16 :goto_c

    .line 1082
    :pswitch_da
    const-string v7, "EVENT_APN_TABLE_QUERY_REQ"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->reqAllDataApnTableQueryResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 1084
    .local v0, QueryApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfileVo;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x3f

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->reqApnTableQueryRsp(Ljava/util/ArrayList;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 1088
    .end local v0       #QueryApnList:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfileVo;>;"
    :pswitch_f0
    const-string v7, "EVENT_APN_TABLE_QUERY_RSP sucess"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1092
    :pswitch_f7
    const-string v7, "EVENTL_APN_TABLE_SET_REQ"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1095
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/DataProfileVo;

    .line 1096
    .local v5, setApnVo:Lcom/android/internal/telephony/DataProfileVo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileVo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1097
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/DataProfileTracker;->setApnTable(Lcom/android/internal/telephony/DataProfileVo;)I

    move-result v6

    .line 1099
    .local v6, updateSuccess:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x41

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->reqSetApnTable(Lcom/android/internal/telephony/DataProfileVo;ILandroid/os/Message;)V

    goto/16 :goto_c

    .line 1104
    .end local v1       #ar:Landroid/os/AsyncResult;,
    .end local v5       #setApnVo:Lcom/android/internal/telephony/DataProfileVo;,
    .end local v6       #updateSuccess:I,
    :pswitch_11e
    const-string v7, "EVENT_SET_APN_TABLE ApnTable set Success"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1110
    :pswitch_125
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRATSetted(Landroid/os/AsyncResult;)V

    goto/16 :goto_c

    .line 1115
    :pswitch_12e
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDetachComplete()V

    goto/16 :goto_c

    .line 1124
    :pswitch_133
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_139
    :goto_139
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1125
    .local v2, dc:Lcom/android/internal/telephony/DataConnection;
    iget v7, v2, Lcom/android/internal/telephony/DataConnection;->cid:I

    if-ne v7, v12, :cond_139

    .line 1127
    iget v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_160

    .line 1128
    const-string v7, "ip address retrieval failed from eHRPD ip resync. Data connection will be closed."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1129
    const-string v7, "dataConnectionPropertyChanged"

    invoke-direct {p0, v2, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .line 1130
    iput v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    .line 1133
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->renewTimer(I)V

    .line 1134
    iput-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    goto :goto_139

    .line 1137
    :cond_160
    iget-object v7, v2, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    if-eq v7, v8, :cond_170

    const-string v7, ""

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19a

    .line 1138
    :cond_170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PPP_RESYNC_IP_RETRIEVAL Retry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->renewTimer(I)V

    .line 1140
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    new-instance v8, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    const-wide/16 v9, 0x190

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1141
    iput-boolean v13, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    goto :goto_139

    .line 1144
    :cond_19a
    iget-object v7, v2, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    if-eq v7, v8, :cond_1d8

    .line 1145
    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncChangedIpAddr:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 1146
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.IMS_IPADDRESS_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v4, intentToIms:Landroid/content/Intent;
    const-string v7, "ipaddress"

    iget-object v8, v2, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check if new ipAddress is successfully set... new ip = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1149
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1150
    iput v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    .line 1151
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->renewTimer(I)V

    .line 1152
    iput-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    goto/16 :goto_139

    .line 1154
    .end local v4       #intentToIms:Landroid/content/Intent;,
    :cond_1d8
    iput v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIpRetrievalRetryCounter:I

    .line 1155
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->renewTimer(I)V

    .line 1156
    iput-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    goto/16 :goto_139

    .line 1172
    .end local v2       #dc:Lcom/android/internal/telephony/DataConnection;,
    .end local v3       #i$:Ljava/util/Iterator;,
    :pswitch_1e1
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onPlmnBlockRelease()V

    goto/16 :goto_c

    .line 886
    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_34
        :pswitch_24
        :pswitch_28
        :pswitch_12
        :pswitch_12
        :pswitch_3c
        :pswitch_12
        :pswitch_12
        :pswitch_2c
        :pswitch_bd
        :pswitch_47
        :pswitch_4f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_55
        :pswitch_60
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_20
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_6e
        :pswitch_77
        :pswitch_84
        :pswitch_92
        :pswitch_9c
        :pswitch_a9
        :pswitch_12
        :pswitch_12
        :pswitch_b3
        :pswitch_b8
        :pswitch_c6
        :pswitch_d0
        :pswitch_da
        :pswitch_f0
        :pswitch_f7
        :pswitch_11e
        :pswitch_125
        :pswitch_12e
        :pswitch_133
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1e1
    .end packed-switch
.end method

.method protected isConcurrentVoiceAndData()Z
    .registers 2

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 4385
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v0

    return v0
.end method

.method protected isServiceTypeEnabledFollowingPdnScheme(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 10
    .parameter "ds"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "internet"

    const-string v6, "          "

    .line 4119
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v2, v3, :cond_26

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v2, v3, :cond_26

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v2, v3, :cond_26

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v2, v3, :cond_8b

    .line 4127
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internet"

    if-ne v2, v7, :cond_89

    .line 4128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data service tyep is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Single PDN... This setting would work for actual data connection..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 4131
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4132
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 4134
    .local v1, service:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_5c

    move v2, v5

    .line 4186
    .end local v0       #b:Landroid/os/IBinder;,
    .end local v1       #service:Landroid/net/IConnectivityManager;,
    :goto_5b
    return v2

    .line 4137
    .restart local v0       #b:Landroid/os/IBinder;,
    .restart local v1       #service:Landroid/net/IConnectivityManager;,
    :cond_5c
    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    if-eqz v2, :cond_7d

    .line 4150
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-eq v2, v4, :cond_74

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-ne v2, v4, :cond_7b

    .line 4153
    :cond_74
    const-string v2, "Wi-Fi is on and pdn connection is requested..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    move v2, v4

    .line 4154
    goto :goto_5b

    :cond_7b
    move v2, v5

    .line 4157
    goto :goto_5b

    .line 4159
    :cond_7d
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-ne v2, v4, :cond_87

    move v2, v4

    goto :goto_5b

    :cond_87
    move v2, v5

    goto :goto_5b

    .end local v0       #b:Landroid/os/IBinder;,
    .end local v1       #service:Landroid/net/IConnectivityManager;,
    :cond_89
    move v2, v5

    .line 4164
    goto :goto_5b

    .line 4171
    :cond_8b
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internet"

    if-ne v2, v7, :cond_ba

    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    if-eqz v2, :cond_ba

    .line 4174
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-ne v2, v4, :cond_b1

    .line 4176
    const-string v2, "          "

    const-string v2, "=========>   mDpt.isServiceTypeEnabled(DataServiceType.SERVICE_TYPE_MPCSAPP) is TRUE..."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    const-string v2, "          "

    const-string v2, "=========>   Current RAT = LTE : Wi-Fi is on ==> internet pdn connection is requested..."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 4178
    goto :goto_5b

    .line 4181
    :cond_b1
    const-string v2, "         "

    const-string v3, "=========>   isServiceTypeEnabledFollowingPdnScheme:: return false !!!!  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 4182
    goto :goto_5b

    .line 4186
    :cond_ba
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-ne v2, v4, :cond_c4

    move v2, v4

    goto :goto_5b

    :cond_c4
    move v2, v5

    goto :goto_5b
.end method

.method logd(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 4740
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 4732
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 4748
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 4744
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 4736
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    return-void
.end method

.method notifyAdminDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 7
    .parameter "ds"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x1

    .line 2416
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    if-eq p1, v0, :cond_12

    .line 2438
    :cond_11
    :goto_11
    return-void

    .line 2421
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_26

    .line 2423
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2425
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminConResult(Z)V

    goto :goto_11

    .line 2429
    :cond_26
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_2e

    .line 2431
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminConResult(Z)V

    goto :goto_11

    .line 2435
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unkonw IPv - notifyAdminDataConnection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_11
.end method

.method notifyAdminDataConnectionFail(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 7
    .parameter "ds"
    .parameter "ipv"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2443
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    if-eq p1, v0, :cond_13

    .line 2483
    :cond_12
    :goto_12
    return-void

    .line 2450
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2452
    const-string v0, "ADmin PDN is disabled so send fail rsp to UICC"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminConResult(Z)V

    goto :goto_12

    .line 2458
    :cond_24
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_38

    .line 2460
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2462
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminConResult(Z)V

    goto :goto_12

    .line 2466
    :cond_38
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_4e

    .line 2468
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-ne v0, v2, :cond_4a

    .line 2470
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminConResult(Z)V

    goto :goto_12

    .line 2474
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminConResult(Z)V

    goto :goto_12

    .line 2479
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unkonw IPv - notifyAdminDataConnectionFail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_12
.end method

.method notifyAdminDataDisConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 6
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 2528
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    if-eq p1, v0, :cond_5

    .line 2561
    :cond_4
    :goto_4
    return-void

    .line 2534
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_23

    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2541
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2543
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminDisResult()V

    goto :goto_4

    .line 2549
    :cond_23
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_2b

    .line 2551
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendAdminDisResult()V

    goto :goto_4

    .line 2555
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unkonw IPv disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onADMinDisReq()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1301
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUICCAdminReq:Z

    .line 1309
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    if-nez v0, :cond_11

    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ALEADY_DISCONNECTED:I

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminDisResponse(Landroid/os/Message;I)V

    .line 1370
    :goto_10
    return-void

    .line 1324
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->checkConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->checkConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ALEADY_DISCONNECTED:I

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminDisResponse(Landroid/os/Message;I)V

    goto :goto_10

    .line 1333
    :cond_38
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOTAAdminReq:Z

    if-ne v0, v5, :cond_49

    .line 1335
    const-string v0, "OTADM use admin, so No disconnect"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_NODISCONNECT:I

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminDisResponse(Landroid/os/Message;I)V

    goto :goto_10

    .line 1340
    :cond_49
    sput-boolean v5, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINDisReq:Z

    .line 1341
    const-string v0, "admin"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected onADMinReq()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1251
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    if-ne v0, v3, :cond_12

    .line 1253
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ADMIN_BLOCK:I

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminConResponse(Landroid/os/Message;I)V

    .line 1295
    :goto_11
    return-void

    .line 1258
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_30

    .line 1261
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_REQ_ERROR:I

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminConResponse(Landroid/os/Message;I)V

    goto :goto_11

    .line 1267
    :cond_30
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUICCAdminReq:Z

    .line 1268
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-ne v0, v3, :cond_53

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_ALEADY_CONNECTED:I

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminConResponse(Landroid/os/Message;I)V

    goto :goto_11

    .line 1278
    :cond_50
    sput-boolean v3, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    goto :goto_11

    .line 1286
    :cond_53
    sput-boolean v3, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    .line 1287
    const-string v0, "admin"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    goto :goto_11
.end method

.method protected onATCommand_Attach()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1483
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1485
    const-string v6, "Embedded mode on, so AT Command is fail "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1486
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->RequestATCommand(Landroid/os/Message;I)V

    .line 1545
    :goto_17
    return-void

    .line 1493
    :cond_18
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    .line 1495
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    if-nez v1, :cond_43

    .line 1497
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    .line 1498
    if-nez v1, :cond_43

    .line 1500
    const-string v6, "AT Cmd : no working data profile - Internet ( APN is disabled )"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1501
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->RequestATCommand(Landroid/os/Message;I)V

    goto :goto_17

    .line 1507
    :cond_43
    const/4 v5, 0x0

    .line 1509
    .local v5, waitforembeded:Z
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4a
    if-ge v3, v4, :cond_85

    aget-object v2, v0, v3

    .line 1511
    .local v2, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-ne v6, v12, :cond_c2

    .line 1513
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v6

    if-nez v6, :cond_92

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v6

    if-eqz v6, :cond_92

    .line 1516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT Cmd : waiting embeded data connect, IPv4 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1517
    const/4 v5, 0x1

    .line 1534
    .end local v2       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_85
    :goto_85
    if-nez v5, :cond_c5

    .line 1536
    const-string v6, "AT Cmd : AFW Confirm AT Command"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1537
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->RequestATCommand(Landroid/os/Message;I)V

    goto :goto_17

    .line 1521
    .restart local v2       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_92
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v6

    if-nez v6, :cond_c2

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v6

    if-eqz v6, :cond_c2

    .line 1524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT Cmd : waiting embeded data connect, IPv6 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1525
    const/4 v5, 0x1

    .line 1526
    goto :goto_85

    .line 1509
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 1541
    .end local v2       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_c5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->RequestATCommand(Landroid/os/Message;I)V

    goto/16 :goto_17
.end method

.method protected onConnectDone(Landroid/os/AsyncResult;)V
    .registers 22
    .parameter "ar"

    .prologue
    .line 3049
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    .line 3051
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    .line 3057
    .local v12, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-nez v5, :cond_1d3

    .line 3059
    const-string v5, "--------------------------"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3060
    const-string v5, "Data call setup : SUCCESS"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  service type  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  data profile  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  data call id  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  ip version    : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3065
    const-string v5, "--------------------------"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3074
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v5, v6, :cond_16c

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataNetStatistics;->updatePdnInfoForSingiepdn(Z)V

    .line 3107
    :goto_cd
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dnsGWSetting(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3111
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 3116
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3121
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne v5, v6, :cond_102

    .line 3124
    const-string v5, "gsm.defaultpdpcontext.active"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    :cond_102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGDS] get Interfacename  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "internet"

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3137
    const-string v5, ""

    const-string v6, "internet"

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    .line 3139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGDS] Cannot SET Tethering Interface to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "internet"

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3154
    :goto_160
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    .line 3159
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 3499
    .end local p1       
    :goto_16b
    return-void

    .line 3088
    .restart local p1       
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataNetStatistics;->updatePdnInterfaceInfo()V

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataNetStatistics;->updatePdnInfoForSingiepdn(Z)V

    goto/16 :goto_cd

    .line 3143
    :cond_18d
    const-string/jumbo v5, "net.tethering.interfacev4"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "internet"

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGDS] SET Tethering Interface to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "net.tethering.interfacev4"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto :goto_160

    .line 3165
    :cond_1d3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1       
    check-cast p1, Lcom/android/internal/telephony/DataConnectionFailCause;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    move-object v13, v0

    .line 3167
    .local v13, cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    const-string v5, "--------------------------"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3168
    const-string v5, "Data call setup : FAILED"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  service type  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  data profile  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  ip version    : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  fail cause    : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3173
    const-string v5, "--------------------------"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3175
    const/4 v15, 0x1

    .line 3184
    .local v15, needDataConnectionUpdate:Z
    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v13, v5, :cond_2fe

    .line 3190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling data profile. dp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3191
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3196
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataProfile;->setIpvSupportFail(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3201
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataConnectionFail(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3206
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne v5, v6, :cond_2c4

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v5, v6, :cond_2c4

    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyIMSIPv6NotSupport()V

    .line 3212
    :cond_2c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3215
    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v5, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-wide v8, v5, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    iget-object v10, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setLastFailCauseTime(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnectionFailCause;JLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3494
    :cond_2e3
    :goto_2e3
    if-eqz v15, :cond_2ed

    .line 3495
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 3498
    :cond_2ed
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logDataConnectionFailure(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    goto/16 :goto_16b

    .line 3220
    :cond_2fe
    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_FORBIDDEN_PLMN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq v13, v5, :cond_30a

    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq v13, v5, :cond_30a

    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->USIM_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v13, v5, :cond_34a

    .line 3225
    :cond_30a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling all data profile cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3226
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 3227
    const/4 v15, 0x0

    .line 3231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3232
    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v5, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-wide v8, v5, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    iget-object v10, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setLastFailCauseTime(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnectionFailCause;JLcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_2e3

    .line 3238
    :cond_34a
    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->VOICE_CALL:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v13, v5, :cond_375

    .line 3240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling all data profile cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mISVoiceCall:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_372

    .line 3243
    const/4 v15, 0x0

    goto/16 :goto_2e3

    .line 3246
    :cond_372
    const/4 v15, 0x1

    goto/16 :goto_2e3

    .line 3248
    :cond_375
    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->RAT_SEARCHING:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v13, v5, :cond_3ad

    .line 3252
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-boolean v5, v5, Lcom/android/internal/telephony/DataConnection;->isIgnoreRATSearchingFail:Z

    if-eqz v5, :cond_38b

    .line 3254
    const-string/jumbo v5, "we ignore RATSearchingFail cause we catch aleady RAT Seaching compelte"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3255
    const/4 v15, 0x1

    goto/16 :goto_2e3

    .line 3259
    :cond_38b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling all data profile cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3260
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->isRATSearching:Z

    .line 3261
    const/4 v15, 0x0

    goto/16 :goto_2e3

    .line 3267
    :cond_3ad
    invoke-virtual {v13}, Lcom/android/internal/telephony/DataConnectionFailCause;->isDataProfileFailure()Z

    move-result v5

    if-eqz v5, :cond_43b

    .line 3280
    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v13, v5, :cond_3dc

    .line 3281
    const-string v5, "[#27] cause == DataConnectionFailCause.MISSING_UNKOWN_APN"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20801fc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3290
    :cond_3dc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling data profile. dp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3291
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3296
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataConnectionFail(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3306
    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v5, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-wide v8, v5, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    iget-object v10, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setLastFailCauseTime(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnectionFailCause;JLcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_2e3

    .line 3309
    :cond_43b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v5

    if-nez v5, :cond_48a

    invoke-virtual {v13}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPdpAvailabilityFailure()Z

    move-result v5

    if-eqz v5, :cond_48a

    .line 3318
    sget-boolean v5, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v5, :cond_469

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_469

    .line 3319
    const-string v5, "Disconnected low priority data call [pdp availability failure.]"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3320
    const/4 v15, 0x0

    .line 3325
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3328
    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v5, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-wide v8, v5, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    iget-object v10, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setLastFailCauseTime(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnectionFailCause;JLcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_2e3

    .line 3354
    :cond_48a
    invoke-virtual {v13}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPermanentFail()Z

    move-result v5

    if-eqz v5, :cond_4ef

    .line 3360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permanent failure. Disabling data profile. dp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3362
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3367
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataConnectionFail(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3376
    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v5, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-wide v8, v5, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    iget-object v10, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setLastFailCauseTime(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnectionFailCause;JLcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_2e3

    .line 3380
    :cond_4ef
    const-string v5, "Data call setup failure cause unknown / temporary failure."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v18

    .line 3394
    .local v18, retryManager:Lcom/android/internal/telephony/RetryManager;
    const/16 v19, 0x0

    .line 3395
    .local v19, scheduleAlarm:Z
    const-wide/16 v16, 0x0

    .line 3397
    .local v16, nextReconnectDelay:J
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v5

    if-eqz v5, :cond_5d5

    .line 3399
    const/16 v19, 0x1

    .line 3400
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 3401
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 3407
    const-wide/16 v5, 0x0

    cmp-long v5, v16, v5

    if-eqz v5, :cond_52f

    .line 3408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3467
    :cond_52f
    :goto_52f
    if-eqz v19, :cond_2e3

    .line 3468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling next attempt on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v16, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s. Retry count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 3473
    .local v11, am:Landroid/app/AlarmManager;
    new-instance v14, Landroid/content/Intent;

    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3474
    .local v14, intent:Landroid/content/Intent;
    const-string/jumbo v5, "reason"

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3475
    const-string v5, "ds"

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataServiceType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3476
    const-string v5, "ipv"

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v14, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 3480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3483
    const-wide/16 v5, 0x0

    cmp-long v5, v16, v5

    if-eqz v5, :cond_5d2

    .line 3485
    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object v8, v0

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3488
    :cond_5d2
    const/4 v15, 0x1

    goto/16 :goto_2e3

    .line 3413
    .end local v11       #am:Landroid/app/AlarmManager;,
    .end local v14       #intent:Landroid/content/Intent;,
    :cond_5d5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No retries left, disabling data profile. dp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipv = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3415
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v7

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v5

    if-eqz v5, :cond_62b

    .line 3419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_52f

    .line 3424
    :cond_62b
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-eq v5, v6, :cond_68d

    .line 3432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v5

    if-nez v5, :cond_664

    .line 3433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No data profiles left to try, disabling service  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 3436
    :cond_664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3437
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 3442
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataConnectionFail(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_52f

    .line 3452
    :cond_68d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry forever using last disabled data profile. dp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipv = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3454
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v6, 0x1

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v8, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3456
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v6, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v7, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 3457
    iget-object v5, v12, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnectionFail(Ljava/lang/String;)V

    .line 3459
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 3460
    const/16 v19, 0x1

    .line 3461
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 3462
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    goto/16 :goto_52f
.end method

.method protected onDataCallListChanged(Landroid/os/AsyncResult;)V
    .registers 21
    .parameter "ar"

    .prologue
    .line 2726
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 2728
    .local v7, dcStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v15, v0

    if-eqz v15, :cond_13

    .line 2921
    :goto_12
    return-void

    .line 2735
    :cond_13
    const-string/jumbo v15, "onDataCallListChanged:"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 2736
    const-string v15, "---dc state list---"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_45

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataCallState;

    .line 2738
    .local v4, d:Lcom/android/internal/telephony/DataCallState;
    if-eqz v4, :cond_28

    iget v15, v4, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v15, :cond_28

    .line 2739
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto :goto_28

    .line 2741
    .end local v4       #d:Lcom/android/internal/telephony/DataCallState;,
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataCalls()V

    .line 2743
    const/4 v14, 0x0

    .line 2744
    .local v14, needDataConnectionUpdate:Z
    const/4 v5, 0x0

    .line 2745
    .local v5, dataConnectionUpdateReason:Ljava/lang/String;
    const/4 v13, 0x1

    .line 2748
    .local v13, isDataDormant:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_54
    :goto_54
    :pswitch_54
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_347

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DataConnection;

    .line 2750
    .local v6, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v15

    if-eqz v15, :cond_54

    .line 2754
    iget v15, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataCallStateByCid(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v3

    .line 2755
    .local v3, activeDC:Lcom/android/internal/telephony/DataCallState;
    if-nez v3, :cond_b3

    .line 2756
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DC has disappeared from list : dc = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 2760
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->resetFailedDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2764
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 2771
    iget-object v15, v6, Lcom/android/internal/telephony/DataConnection;->mIpv:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eqz v15, :cond_ac

    .line 2772
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->GetServiceTypeFromDP(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v15

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->mIpv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkadminprocess(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 2776
    :cond_ac
    const/4 v14, 0x1

    .line 2777
    if-nez v5, :cond_54

    .line 2778
    const-string/jumbo v5, "networkOrModemDisconnect"

    goto :goto_54

    .line 2780
    :cond_b3
    iget v15, v3, Lcom/android/internal/telephony/DataCallState;->active:I

    if-nez v15, :cond_118

    .line 2781
    iget v15, v3, Lcom/android/internal/telephony/DataCallState;->inactiveReason:I

    invoke-static {v15}, Lcom/android/internal/telephony/DataConnectionFailCause;->getDataConnectionDisconnectCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v10

    .line 2784
    .local v10, failCause:Lcom/android/internal/telephony/DataConnectionFailCause;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DC is inactive : dc = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 2785
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "   inactive cause = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 2790
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->resetFailedDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2794
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 2799
    iget-object v15, v6, Lcom/android/internal/telephony/DataConnection;->mIpv:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eqz v15, :cond_110

    .line 2800
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->GetServiceTypeFromDP(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v15

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->mIpv:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkadminprocess(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 2804
    :cond_110
    const/4 v14, 0x1

    .line 2805
    if-nez v5, :cond_54

    .line 2806
    const-string/jumbo v5, "networkOrModemDisconnect"

    goto/16 :goto_54

    .line 2828
    .end local v10       #failCause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :cond_118
    iget v15, v3, Lcom/android/internal/telephony/DataCallState;->cid:I

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_17e

    iget v15, v3, Lcom/android/internal/telephony/DataCallState;->inactiveReason:I

    const/16 v16, 0x50

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_17e

    .line 2829
    const-string v15, "[IMS_PPP_RESYNC] ims ipv6 ip address has been changed..."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2830
    const-string v15, "[IMS_PPP_RESYNC] IMS PDN IP Change NO Delay Version..."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2833
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    move v15, v0

    if-eqz v15, :cond_163

    .line 2834
    const/4 v15, 0x2

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->renewTimer(I)V

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    move-object v15, v0

    new-instance v16, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    const-wide/16 v17, 0x0

    invoke-virtual/range {v15 .. v18}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2836
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    goto/16 :goto_54

    .line 2838
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    move-object v15, v0

    new-instance v16, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    const-wide/16 v17, 0x0

    invoke-virtual/range {v15 .. v18}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2839
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsIpRetrievalTimerTaskRunning:Z

    goto/16 :goto_54

    .line 2848
    :cond_17e
    iget v15, v3, Lcom/android/internal/telephony/DataCallState;->cid:I

    const/16 v16, 0x5

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_310

    .line 2849
    iget-object v15, v3, Lcom/android/internal/telephony/DataCallState;->address:Ljava/lang/String;

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_54

    .line 2850
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Internet IPv4 old ip: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2851
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Internet IPv4 old GW: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2852
    iget-object v15, v3, Lcom/android/internal/telephony/DataCallState;->address:Ljava/lang/String;

    iput-object v15, v6, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 2854
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getInterface()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/NetworkUtils;->getDefaultRoute(Ljava/lang/String;)I

    move-result v8

    .line 2855
    .local v8, defaultGwInt:I
    if-eqz v8, :cond_27e

    const v15, 0xffffff

    and-int/2addr v15, v8

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->v4StringToInt(Ljava/lang/String;)I

    move-result v16

    const v17, 0xffffff

    and-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_27e

    .line 2857
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v8

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    shr-int/lit8 v16, v8, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    shr-int/lit8 v16, v8, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    shr-int/lit8 v16, v8, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2859
    .local v9, defaultGwStr:Ljava/lang/String;
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/DataConnection;->setGW(Ljava/lang/String;)V

    .line 2881
    .end local v9       #defaultGwStr:Ljava/lang/String;,
    :goto_240
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Internet IPv4 new ip: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2882
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Internet IPv4 new GW: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_54

    .line 2864
    :cond_27e
    iget-object v15, v6, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    const-string v16, "\\."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2866
    .local v11, gateway_string:[Ljava/lang/String;
    const/4 v15, 0x3

    aget-object v15, v11, v15

    if-eqz v15, :cond_306

    .line 2867
    const/4 v15, 0x3

    aget-object v15, v11, v15

    const-string v16, "254"

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2ce

    .line 2869
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/internal/telephony/DataConnection;->setGW(Ljava/lang/String;)V

    goto/16 :goto_240

    .line 2873
    :cond_2ce
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".254"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/internal/telephony/DataConnection;->setGW(Ljava/lang/String;)V

    goto/16 :goto_240

    .line 2877
    :cond_306
    const-string v15, "Failed to update new gateway for Internet IPv4"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_240

    .line 2889
    .end local v8       #defaultGwInt:I,
    .end local v11       #gateway_string:[Ljava/lang/String;,
    :cond_310
    iget v15, v3, Lcom/android/internal/telephony/DataCallState;->active:I

    packed-switch v15, :pswitch_data_372

    .line 2903
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dc.cid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v6

    iget v0, v0, Lcom/android/internal/telephony/DataConnection;->cid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", unexpected DataCallState.active="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v3

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_54

    .line 2895
    :pswitch_344
    const/4 v13, 0x0

    .line 2896
    goto/16 :goto_54

    .line 2909
    .end local v3       #activeDC:Lcom/android/internal/telephony/DataCallState;,
    .end local v6       #dc:Lcom/android/internal/telephony/DataConnection;,
    :cond_347
    if-eqz v14, :cond_34f

    .line 2910
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2913
    :cond_34f
    if-eqz v13, :cond_363

    .line 2914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    move-object v15, v0

    sget-object v16, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 2920
    :goto_35e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataActivity()V

    goto/16 :goto_12

    .line 2917
    :cond_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    move-object v15, v0

    sget-object v16, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    .line 2918
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    goto :goto_35e

    .line 2889
    nop

    :pswitch_data_372
    .packed-switch 0x1
        :pswitch_54
        :pswitch_344
    .end packed-switch
.end method

.method protected onDataConnectionAttached()V
    .registers 3

    .prologue
    const-string v1, "dataNetworkAttached"

    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 2271
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isneedtonotify:Z

    .line 2277
    :cond_e
    const-string v0, "dataNetworkAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 2279
    const-string v0, "dataNetworkAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2280
    return-void
.end method

.method protected onDataConnectionDetached()V
    .registers 2

    .prologue
    .line 2290
    const-string v0, "dataNetworkDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 2291
    return-void
.end method

.method protected onDetachReqFromNet()V
    .registers 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->ConfirmLTENetDetach()V

    .line 1573
    return-void
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 3619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnectDone: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3620
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 3624
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->updatePdnInterfaceInfo()V

    .line 3625
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkNAIConnection()V

    .line 3628
    return-void
.end method

.method protected onMasterDataDisabled()V
    .registers 2

    .prologue
    .line 2629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 2634
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isNeedEngLTEDetach:Z

    if-eqz v0, :cond_e

    .line 2636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isNeedEngLTEDetach:Z

    .line 2637
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendDetachReqtoRIL(I)V

    .line 2642
    :cond_e
    const-string v0, "masterDataDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2643
    return-void
.end method

.method protected onMasterDataEnabled()V
    .registers 2

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 2649
    const-string v0, "masterDataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2650
    return-void
.end method

.method protected onPDNCloseReq(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 1602
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 1606
    .local v1, cid:[I
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_25

    .line 1607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong cause for PDN Close - exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1655
    :goto_24
    return-void

    .line 1654
    :cond_25
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->ConfirmPDNClose(Landroid/os/Message;)V

    goto :goto_24
.end method

.method protected onRadioOff()V
    .registers 2

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 2579
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 2580
    return-void
.end method

.method protected onRadioOn()V
    .registers 2

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 2571
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 2572
    const-string/jumbo v0, "radioOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2573
    return-void
.end method

.method protected onRadioTechnologyChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "radioTechnologyChanged"

    .line 2300
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 2308
    .local v1, ChangeInfo:[I
    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isneedtonotify:Z

    if-ne v2, v5, :cond_1f

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v2

    if-ne v2, v5, :cond_1f

    .line 2310
    iput-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isneedtonotify:Z

    .line 2311
    const-string/jumbo v2, "radioTechnologyChanged"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 2321
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4a

    .line 2323
    iput-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 2326
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->clearAdminReqValue()V

    .line 2330
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-ne v2, v5, :cond_4a

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOTAAdminReq:Z

    if-nez v2, :cond_4a

    .line 2332
    const-string v2, "Admin is used only for BIP, and we leave LTE, so turn off the admin!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 2333
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 2349
    :cond_4a
    aget v2, v1, v4

    if-ne v2, v5, :cond_5f

    .line 2351
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 2352
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 2362
    :goto_58
    const-string/jumbo v2, "radioTechnologyChanged"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2364
    return-void

    .line 2358
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllRetryCounter()V

    goto :goto_58
.end method

.method protected onRecordsLoaded()V
    .registers 3

    .prologue
    const-string v1, "iccRecordsLaded"

    .line 2195
    const-string v0, "iccRecordsLaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateOperatorNumericInDpt(Ljava/lang/String;)Z

    .line 2217
    const-string v0, "iccRecordsLaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2229
    return-void
.end method

.method protected onRoamingOff()V
    .registers 2

    .prologue
    .line 2591
    const-string/jumbo v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2592
    return-void
.end method

.method protected onRoamingOn()V
    .registers 3

    .prologue
    const-string/jumbo v1, "roamingOn"

    .line 2596
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2597
    const-string/jumbo v0, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 2599
    :cond_f
    const-string/jumbo v0, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2600
    return-void
.end method

.method protected onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 2661
    const-string v0, "apnTypeDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2662
    return-void
.end method

.method protected onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 2673
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    if-eq p1, v0, :cond_e

    .line 2675
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->resetProfilesAsWorking(Lcom/android/internal/telephony/DataServiceType;)V

    .line 2676
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V

    .line 2681
    :cond_e
    const-string v0, "apnTypeEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2682
    return-void
.end method

.method onTetheredModeStateChanged(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "ar"

    .prologue
    .line 2924
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 2926
    .local v2, ret:[I
    if-eqz v2, :cond_e

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    .line 2927
    :cond_e
    const-string v3, "Error: Invalid Tethered mode received"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2954
    :goto_13
    return-void

    .line 2931
    :cond_14
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 2932
    .local v1, mode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTetheredModeStateChanged: mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2934
    packed-switch v1, :pswitch_data_60

    .line 2952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Invalid Tethered mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_13

    .line 2939
    :pswitch_48
    const-string v3, "Unsol Indication: RIL_TETHERED_MODE_ON"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_13

    .line 2942
    :pswitch_4e
    const-string v3, "Unsol Indication: RIL_TETHERED_MODE_OFF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2948
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 2949
    const-string/jumbo v3, "tetheredModeStateChanged"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_13

    .line 2934
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_48
    .end packed-switch
.end method

.method protected onTimerExpired(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string v11, "apnTypeDisabled"

    const-string v10, "InactivateTimerExpired"

    .line 1699
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v2, v0

    .line 1704
    .local v2, cid:[I
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_13

    .line 1771
    :cond_12
    :goto_12
    return-void

    .line 1709
    :cond_13
    const/4 v6, 0x1

    aget v6, v2, v6

    if-ne v6, v9, :cond_24

    .line 1711
    const-string v6, "Wrong cause Timer Expired "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1712
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->ConfirmPDNClose(Landroid/os/Message;)V

    goto :goto_12

    .line 1717
    :cond_24
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1719
    .local v3, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1723
    iget v6, v3, Lcom/android/internal/telephony/DataConnection;->cid:I

    aget v7, v2, v8

    if-ne v6, v7, :cond_2a

    .line 1726
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->GetServiceTypeFromDP(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 1730
    .local v1, MatchedType:Lcom/android/internal/telephony/DataServiceType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close Specific PDN cause timer expire - cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1734
    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/DataServiceType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    sget-object v6, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/DataServiceType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 1735
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "We will disconnect and reconnect it : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1739
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    .line 1740
    .local v5, tdc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v5, :cond_9d

    .line 1741
    const-string v6, "InactivateTimerExpired"

    invoke-direct {p0, v5, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .line 1743
    :cond_9d
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    .line 1744
    if-eqz v5, :cond_12

    .line 1745
    const-string v6, "InactivateTimerExpired"

    invoke-direct {p0, v5, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    goto/16 :goto_12

    .line 1750
    .end local v5       #tdc:Lcom/android/internal/telephony/DataConnection;,
    :cond_ae
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1, v8}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 1752
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-nez v6, :cond_e3

    .line 1756
    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v7, "apnTypeDisabled"

    invoke-virtual {p0, v1, v6, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1757
    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v7, "apnTypeDisabled"

    invoke-virtual {p0, v1, v6, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close Specific PDN cause timer expire but it is aleady disconnected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/DataConnection;->DcServiceType:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1762
    :cond_e3
    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specific PDN is active so we will disconnect it "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_12
.end method

.method protected onUMSConnect()V
    .registers 4

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reqUMSConnect(Landroid/os/Message;I)V

    .line 1229
    return-void
.end method

.method onUMSDisConnect()V
    .registers 4

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reqUMSConnect(Landroid/os/Message;I)V

    .line 1234
    return-void
.end method

.method protected declared-synchronized onUpdateDataConnections(Ljava/lang/String;I)V
    .registers 24
    .parameter "reason"
    .parameter "context"

    .prologue
    .line 3736
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v4

    .local v4, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v14, v4

    .local v14, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_7
    if-ge v9, v14, :cond_47

    aget-object v7, v4, v9

    .line 3737
    .local v7, ds:Lcom/android/internal/telephony/DataServiceType;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v18

    if-eqz v18, :cond_44

    const-string v18, "enabled"

    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3736
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 3738
    :cond_44
    const-string v18, "disabled"

    goto :goto_3a

    .line 3742
    .end local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_74

    .line 3744
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onUpdateDataConnections [ignored] : reason="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_1f3

    .line 4060
    .end local v9       #i$:I,
    :cond_72
    :goto_72
    monitor-exit p0

    return-void

    .line 3748
    .restart local v9       #i$:I,
    :cond_74
    :try_start_74
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onUpdateDataConnections: reason="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 3749
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataCalls()V

    .line 3750
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataServiceTypes()V

    .line 3753
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    .line 3764
    const/16 v17, 0x0

    .line 3766
    .local v17, wasDcDisconnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v16

    .line 3769
    .local v16, radiTech:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9       #i$:I,
    :cond_b6
    :goto_b6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1fc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DataConnection;

    .line 3770
    .local v6, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v18

    if-eqz v18, :cond_14d

    .line 3775
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v4

    array-length v14, v4

    const/4 v10, 0x0

    .local v10, i$:I
    :goto_ce
    if-ge v10, v14, :cond_b6

    aget-object v7, v4, v10

    .line 3776
    .restart local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_10e

    .line 3780
    sget-object v18, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataDisConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3782
    sget-object v18, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 3786
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_14a

    .line 3790
    sget-object v18, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAdminDataDisConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3792
    sget-object v18, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 3775
    :cond_14a
    add-int/lit8 v10, v10, 0x1

    goto :goto_ce

    .line 3797
    .end local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .end local v10       #i$:I,
    :cond_14d
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v18

    if-eqz v18, :cond_b6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    move/from16 v18, v0

    if-nez v18, :cond_b6

    .line 3803
    const/4 v15, 0x1

    .line 3804
    .local v15, needsTearDown:Z
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v4

    array-length v14, v4

    const/4 v10, 0x0

    .restart local v10       #i$:I,
    :goto_162
    if-ge v10, v14, :cond_1aa

    aget-object v7, v4, v10

    .line 3808
    .restart local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isServiceTypeEnabledFollowingPdnScheme(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v18

    if-eqz v18, :cond_1f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getIpVersion()Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_1f8

    .line 3815
    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsImsPdnBlockedInCdma:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_19b

    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromImsInCdma:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c7

    :cond_19b
    sget-object v18, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    move-object v0, v7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1c7

    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c7

    .line 3840
    .end local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_1aa
    :goto_1aa
    if-nez v15, :cond_1ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b6

    .line 3841
    :cond_1ba
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    move-result v18

    or-int v17, v17, v18

    goto/16 :goto_b6

    .line 3823
    .restart local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_1c7
    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateIMSPDNInCDMA:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f6

    sget-object v18, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    move-object v0, v7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f6

    .line 3825
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateIMSPDNInCDMA:Z

    .line 3827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/DataProfileTracker;->resetProfilesAsWorking(Lcom/android/internal/telephony/DataServiceType;)V

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V
    :try_end_1f2
    .catchall {:try_start_74 .. :try_end_1f2} :catchall_1f3

    goto :goto_1aa

    .line 3736
    .end local v4       #arr$:[Lcom/android/internal/telephony/DataServiceType;,
    .end local v6       #dc:Lcom/android/internal/telephony/DataConnection;,
    .end local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .end local v10       #i$:I,
    .end local v14       #len$:I,
    .end local v15       #needsTearDown:Z,
    .end local v16       #radiTech:I,
    .end local v17       #wasDcDisconnected:Z,
    :catchall_1f3
    move-exception v18

    monitor-exit p0

    throw v18

    .line 3833
    .restart local v4       #arr$:[Lcom/android/internal/telephony/DataServiceType;,
    .restart local v6       #dc:Lcom/android/internal/telephony/DataConnection;,
    .restart local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .restart local v10       #i$:I,
    .restart local v14       #len$:I,
    .restart local v15       #needsTearDown:Z,
    .restart local v16       #radiTech:I,
    .restart local v17       #wasDcDisconnected:Z,
    :cond_1f6
    const/4 v15, 0x0

    .line 3834
    goto :goto_1aa

    .line 3804
    :cond_1f8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_162

    .line 3848
    .end local v6       #dc:Lcom/android/internal/telephony/DataConnection;,
    .end local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .end local v10       #i$:I,
    .end local v15       #needsTearDown:Z,
    :cond_1fc
    :try_start_1fc
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGDS] get Interfacename "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "internet"

    sget-object v20, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3849
    const-string v18, "internet"

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_25d

    .line 3851
    const-string/jumbo v18, "net.tethering.interfacev4"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGDS] SET 2 Tethering Interface to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "net.tethering.interfacev4"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3859
    :cond_25d
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_72

    .line 3869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    move/from16 v18, v0

    if-eqz v18, :cond_28e

    .line 3875
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 3877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    move-object/from16 v18, v0

    if-eqz v18, :cond_28e

    .line 3878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 3879
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    .line 3886
    :cond_28e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v18

    if-eqz v18, :cond_352

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v18

    if-eqz v18, :cond_352

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-eqz v18, :cond_352

    const/16 v18, 0x1

    move/from16 v12, v18

    .line 3893
    .local v12, isReadyForData:Z
    :goto_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2c5

    .line 3894
    const/4 v12, 0x0

    .line 3898
    :cond_2c5
    if-nez v12, :cond_358

    .line 3899
    const-string v18, "***** NOT Ready for data :"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3900
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   getDesiredPowerState() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3903
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   mCm.getRadioState() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mLTEBlock = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", IsVoiceCall= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mISVoiceCall:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3906
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataReadinessinfo()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_72

    .line 3886
    .end local v12       #isReadyForData:Z,
    :cond_352
    const/16 v18, 0x0

    move/from16 v12, v18

    goto/16 :goto_2ae

    .line 3910
    .restart local v12       #isReadyForData:Z,
    :cond_358
    const-string v18, "Ready for data : "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3911
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   getDesiredPowerState() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3912
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   mCm.getRadioState() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3913
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataReadinessinfo()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3920
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3da

    .line 3921
    const-string v18, "Data Call setup pending. Not trying to bring up any new data connections."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_72

    .line 3933
    :cond_3da
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v4

    array-length v14, v4

    const/4 v9, 0x0

    .restart local v9       #i$:I,
    move v10, v9

    .end local v9       #i$:I,
    .restart local v10       #i$:I,
    :goto_3e1
    if-ge v10, v14, :cond_72

    aget-object v7, v4, v10

    .line 3937
    .restart local v7       #ds:Lcom/android/internal/telephony/DataServiceType;,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10       #i$:I,
    .local v9, i$:Ljava/util/Iterator;
    :cond_3ef
    :goto_3ef
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4a4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DataConnection;

    .line 3938
    .restart local v6       #dc:Lcom/android/internal/telephony/DataConnection;,
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v18

    if-eqz v18, :cond_3ef

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v18

    if-nez v18, :cond_421

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v18

    if-eqz v18, :cond_3ef

    sget-object v18, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    move-object v0, v7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3ef

    .line 3944
    :cond_421
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getIpVersion()Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v11

    .line 3945
    .local v11, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v18

    if-nez v18, :cond_3ef

    .line 3949
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v8

    .line 3950
    .local v8, dt:Lcom/android/internal/telephony/DataProfile$DataProfileType;
    sget-object v18, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-object v0, v8

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_495

    .line 3952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 3964
    :goto_466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v18

    if-eqz v18, :cond_3ef

    .line 3968
    sget-object v18, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-object v0, v8

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_48a

    sget-object v18, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    move-object v0, v7

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_48a

    sget-object v18, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    move-object v0, v7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3ef

    .line 3971
    :cond_48a
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    goto/16 :goto_3ef

    .line 3957
    :cond_495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v6

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_466

    .line 3988
    .end local v6       #dc:Lcom/android/internal/telephony/DataConnection;,
    .end local v8       #dt:Lcom/android/internal/telephony/DataProfile$DataProfileType;,
    .end local v11       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    :cond_4a4
    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v18, :cond_4be

    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v18, :cond_4b0

    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-nez v18, :cond_4be

    :cond_4b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v18

    if-eqz v18, :cond_515

    :cond_4be
    const/16 v18, 0x1

    move/from16 v5, v18

    .line 3997
    .local v5, dataCallsInOrderOfPriority:Z
    :goto_4c2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lteConnectWithoutIms:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_51a

    .line 3998
    const-string v18, "LTE_CONNECT_W/O_IMS Setting is < true > , it means it\'s Test mode. We can Attach other PDN without IMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4011
    :cond_4d9
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isServiceTypeEnabledFollowingPdnScheme(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v18

    if-eqz v18, :cond_510

    .line 4021
    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromImsInCdma:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4f6

    sget-boolean v18, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsImsPdnBlockedInCdma:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_505

    :cond_4f6
    sget-object v18, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    move-object v0, v7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_505

    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_510

    .line 4026
    :cond_505
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetUpDataCallStart(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v13

    .line 4027
    .local v13, isResultReturn:Z
    if-nez v13, :cond_72

    .line 3933
    .end local v13       #isResultReturn:Z,
    :cond_510
    add-int/lit8 v9, v10, 0x1

    .local v9, i$:I
    move v10, v9

    .end local v9       #i$:I,
    .restart local v10       #i$:I,
    goto/16 :goto_3e1

    .line 3988
    .end local v5       #dataCallsInOrderOfPriority:Z,
    .end local v10       #i$:I,
    .local v9, i$:Ljava/util/Iterator;
    :cond_515
    const/16 v18, 0x0

    move/from16 v5, v18

    goto :goto_4c2

    .line 4003
    .restart local v5       #dataCallsInOrderOfPriority:Z,
    :cond_51a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->connectWithOtherPDN(ILcom/android/internal/telephony/DataServiceType;)Z
    :try_end_522
    .catchall {:try_start_1fc .. :try_end_522} :catchall_1f3

    move-result v18

    if-nez v18, :cond_4d9

    goto/16 :goto_72
.end method

.method protected onVoiceCallEnded()V
    .registers 3

    .prologue
    const-string v1, "2GVoiceCallEnded"

    .line 2611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mISVoiceCall:Z

    .line 2613
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2614
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 2615
    return-void
.end method

.method protected onVoiceCallStarted()V
    .registers 3

    .prologue
    const-string v1, "2GVoiceCallStarted"

    .line 2621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mISVoiceCall:Z

    .line 2623
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 2624
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 2625
    return-void
.end method

.method public registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4725
    return-void
.end method

.method public renewTimer(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1796
    if-nez p1, :cond_3

    .line 1817
    :cond_2
    :goto_2
    return-void

    .line 1804
    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1812
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    .line 1815
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPppResyncIpChangedTimer:Ljava/util/Timer;

    goto :goto_2
.end method

.method protected reqAllDataApnTableQueryResult()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfileVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1213
    const-string v1, "RA"

    const-string/jumbo v2, "reqAllDataApnTableQueryResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v0, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfileVo;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->getAllDataApnProfiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 1219
    return-object v0
.end method

.method public requestDetachFromNetwork(I)Z
    .registers 15
    .parameter "reason"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "alarm"

    .line 1822
    const/4 v3, 0x0

    .line 1825
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1827
    .local v0, Curr_RadioTech:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==========Get Detach Msg from IMS Reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RadioTech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Timer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->T3402_TIME:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1830
    const/16 v4, 0xe

    if-ne v0, v4, :cond_7d

    .line 1831
    packed-switch p1, :pswitch_data_da

    .line 1859
    :goto_44
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendDetachReqtoRIL(I)V

    .line 1904
    :goto_47
    return v3

    .line 1834
    :pswitch_48
    iput-boolean v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 1841
    const-string v4, "T3402 timer triggered"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1842
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1843
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "action.ims.t3402.timer.expired"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mT3402Intent:Landroid/app/PendingIntent;

    .line 1845
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mT3402Intent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->T3402_TIME:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mT3402Intent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v11, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_44

    .line 1851
    .end local v1       #am:Landroid/app/AlarmManager;,
    .end local v2       #intent:Landroid/content/Intent;,
    :pswitch_7a
    sput-boolean v9, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromIms:Z

    goto :goto_44

    .line 1860
    :cond_7d
    const/16 v4, 0xd

    if-ne v0, v4, :cond_d3

    .line 1861
    packed-switch p1, :pswitch_data_e4

    goto :goto_47

    .line 1863
    :pswitch_85
    sput-boolean v9, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsImsPdnBlockedInCdma:Z

    .line 1871
    const-string v4, "CDMA timer triggered"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1872
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1873
    .restart local v1       #am:Landroid/app/AlarmManager;,
    new-instance v2, Landroid/content/Intent;

    const-string v4, "action.ims.cdma.timer.expired"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1874
    .restart local v2       #intent:Landroid/content/Intent;,
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaIntent:Landroid/app/PendingIntent;

    .line 1875
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->T3402_TIME:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v11, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1880
    const-string v4, "imsPdnBlockedInCdma"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_47

    .line 1885
    .end local v1       #am:Landroid/app/AlarmManager;,
    .end local v2       #intent:Landroid/content/Intent;,
    :pswitch_bc
    sput-boolean v9, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromImsInCdma:Z

    .line 1886
    const-string v4, "PermanentDetachInCdma"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 1887
    sput-boolean v9, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPermanentDetachFromIms:Z

    .line 1889
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendDetachReqtoRIL(I)V

    goto/16 :goto_47

    .line 1893
    :pswitch_ca
    sput-boolean v9, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateIMSPDNInCDMA:Z

    .line 1894
    const-string v4, "imsPdnUpdatedInCdma"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1901
    :cond_d3
    const-string v4, "IMS is insane!!!! This must be a mistake..."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1831
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_48
        :pswitch_7a
        :pswitch_44
    .end packed-switch

    .line 1861
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_85
        :pswitch_bc
        :pswitch_ca
    .end packed-switch
.end method

.method sendAdminConResult(Z)V
    .registers 6
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2391
    if-ne p1, v1, :cond_1b

    .line 2393
    sget-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    if-ne v0, v1, :cond_13

    .line 2395
    sput-boolean v3, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->ADMIN_REQ_NOTI:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminConNotification(Landroid/os/Message;I)V

    .line 2411
    :cond_12
    :goto_12
    return-void

    .line 2400
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->ADMIN_NOTIFICATION:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminConNotification(Landroid/os/Message;I)V

    goto :goto_12

    .line 2405
    :cond_1b
    sget-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    if-ne v0, v1, :cond_12

    .line 2407
    sput-boolean v3, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINReq:Z

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->REASON_CONNECTION_FAIL:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->reqAdminConResponse(Landroid/os/Message;I)V

    goto :goto_12
.end method

.method sendAdminDisResult()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2503
    sget-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINDisReq:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 2505
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mADMINDisReq:Z

    .line 2506
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->ADMIN_REQ_NOTI:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requesAdminDisNotification(Landroid/os/Message;I)V

    .line 2513
    :goto_10
    return-void

    .line 2510
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->ADMIN_NOTIFICATION:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requesAdminDisNotification(Landroid/os/Message;I)V

    goto :goto_10
.end method

.method public sendDetachReqtoRIL(I)V
    .registers 7
    .parameter "reason"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v4, " lastDetach:"

    .line 1913
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDetachingProcessing:Z

    if-nez v0, :cond_41

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AFW Send Detach cmd, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestLteDetach(Landroid/os/Message;I)V

    .line 1917
    iput-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDetachingProcessing:Z

    .line 1918
    iput p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    .line 1921
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v0, v1, :cond_3e

    .line 1925
    if-eq p1, v3, :cond_3e

    .line 1927
    const-string v0, "AFW now set LTE Blcok"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1928
    iput-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mLTEBlocked:Z

    .line 1952
    :cond_3e
    :goto_3e
    iput p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    .line 1954
    return-void

    .line 1937
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    if-ge v0, v3, :cond_68

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permantly blocking so Ignore detach cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastDetach:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_3e

    .line 1942
    :cond_68
    if-ge p1, v3, :cond_83

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AFW will Send Detach cmd after detaching complete, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1946
    iput-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isNeedRedetach:Z

    goto :goto_3e

    .line 1950
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AFW will ignore detach cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastDetach:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mlastDetachReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public declared-synchronized setDataConnectionAsDesired(ZLandroid/os/Message;)V
    .registers 5
    .parameter "desiredPowerState"
    .parameter "onCompleteMsg"

    .prologue
    .line 4201
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    .line 4202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    .line 4207
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2b

    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    if-nez v0, :cond_2b

    .line 4210
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendDetachReqtoRIL(I)V

    .line 4212
    if-eqz p2, :cond_29

    .line 4213
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_38

    .line 4231
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    .line 4218
    :cond_2b
    :try_start_2b
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    if-nez v0, :cond_3b

    .line 4219
    iput-object p2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    .line 4220
    const-string/jumbo v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_38

    goto :goto_29

    .line 4201
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4224
    :cond_3b
    if-eqz p2, :cond_29

    .line 4225
    :try_start_3d
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_38

    goto :goto_29
.end method

.method public setIMSCommandTimer(I)V
    .registers 4
    .parameter "IMSTimer"

    .prologue
    .line 1787
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->T3402_TIME:J

    .line 1788
    return-void
.end method

.method public setLastFailCauseTime(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnectionFailCause;JLcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 9
    .parameter "ds"
    .parameter "lastFailCause"
    .parameter "lastFailTime"
    .parameter "ipv"

    .prologue
    .line 3509
    invoke-virtual {p0, p1, p5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getNumfromds(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)I

    move-result v0

    .line 3510
    .local v0, numoftype:I
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailCause:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnectionFailCause;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 3511
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailTime:[J

    aput-wide p3, v1, v0

    .line 3513
    return-void
.end method

.method public setLteConnectEnabledForTest(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 4088
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->lteConnectWithoutIms:Z

    .line 4089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LTE_CONNECT_W/O_IMS Setting is < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > We will updataDataConnections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4090
    const-string v0, "lteConnectWithoutImsSettingChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 4091
    return-void
.end method

.method public setOTADMAdminUsing(Z)V
    .registers 2
    .parameter "OTASet"

    .prologue
    .line 1377
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOTAAdminReq:Z

    .line 1378
    return-void
.end method

.method protected startNetStatPoll()V
    .registers 3

    .prologue
    .line 4665
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->isEnablePoll()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4666
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->resetPollStats()V

    .line 4667
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setEnablePoll(Z)V

    .line 4668
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->run()V

    .line 4670
    :cond_18
    return-void
.end method

.method protected stopNetStatPoll()V
    .registers 3

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setEnablePoll(Z)V

    .line 4674
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4675
    return-void
.end method

.method public unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 4728
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 4729
    return-void
.end method

.method protected updateDataConnections(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    .line 1995
    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    .line 1996
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2000
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2001
    return-void
.end method
