.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$2;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static ADMIN_NOTIFICATION:I = 0x0

.field protected static ADMIN_REQ_NOTI:I = 0x0

.field protected static final DBG:Z = true

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENTL_APN_TABLE_SET_REQ:I = 0x40

.field protected static final EVENT_ADMIN_DIS_REQ:I = 0x3b

.field protected static final EVENT_ADMIN_REQ:I = 0x3a

.field protected static final EVENT_APN_TABLE_QUERY_REQ:I = 0x3e

.field protected static final EVENT_APN_TABLE_QUERY_RSP:I = 0x3f

.field protected static final EVENT_AT_COMMAND:I = 0x35

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x14

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x15

.field protected static final EVENT_CDMA_TIMER_EXPIRED:I = 0x39

.field protected static final EVENT_CONNECT_DONE:I = 0x5

.field protected static final EVENT_DATA_CALL_LIST_CHANGED:I = 0xa

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0xb

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0xc

.field protected static final EVENT_DATA_PROFILE_DB_CHANGED:I = 0xf

.field protected static final EVENT_DISCONNECT_DONE:I = 0x4

.field protected static final EVENT_FATORY_CONNECT:I = 0x36

.field protected static final EVENT_FATORY_DISCONNECT:I = 0x37

.field protected static final EVENT_INACTIVATE_TIMER_EXPIRED:I = 0x34

.field protected static final EVENT_LTE_DETACH_DONE:I = 0x43

.field protected static final EVENT_LTE_NETDETACH_REQ:I = 0x32

.field protected static final EVENT_LTE_PDN_CLOSE:I = 0x33

.field protected static final EVENT_MASTER_DATA_DISABLED:I = 0x11

.field protected static final EVENT_MASTER_DATA_ENABLED:I = 0x10

.field protected static final EVENT_PLMN_BLOCK_RELEASE_REQ:I = 0x49

.field protected static final EVENT_PPP_RESYNC_IP_RETRIEVAL:I = 0x44

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x1a

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x19

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_ON:I = 0x8

.field protected static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x12

.field protected static final EVENT_RATSETTED:I = 0x42

.field protected static final EVENT_RECORDS_LOADED:I = 0x1e

.field protected static final EVENT_ROAMING_OFF:I = 0xe

.field protected static final EVENT_ROAMING_ON:I = 0xd

.field protected static final EVENT_SERVICE_TYPE_DISABLED:I = 0x2

.field protected static final EVENT_SERVICE_TYPE_ENABLED:I = 0x3

.field protected static final EVENT_SET_APN_TABLE:I = 0x41

.field protected static final EVENT_T3402_TIMER_EXPIRED:I = 0x38

.field protected static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x13

.field protected static final EVENT_UMS_CONNECTED:I = 0x3c

.field protected static final EVENT_UMS_DISCONNECTED:I = 0x3d

.field protected static final EVENT_UPDATE_DATA_CONNECTIONS:I = 0x1

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x7

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x6

.field protected static REASON_ADMIN_BLOCK:I = 0x0

.field protected static REASON_ALEADY_CONNECTED:I = 0x0

.field protected static final REASON_CDMA_OTA_PROVISION:Ljava/lang/String; = "cdmaOtaPovisioning"

.field protected static final REASON_CDMA_SUBSCRIPTION_SOURCE_CHANGED:Ljava/lang/String; = "cdmaSubscriptionSourceChanged"

.field protected static final REASON_CDMA_TIMER_EXPIRED:Ljava/lang/String; = "cdmaTimerExpired"

.field protected static REASON_CONNECTION_FAIL:I = 0x0

.field protected static final REASON_DATA_CONN_PROP_CHANGED:Ljava/lang/String; = "dataConnectionPropertyChanged"

.field protected static final REASON_DATA_NETWORK_ATTACH:Ljava/lang/String; = "dataNetworkAttached"

.field protected static final REASON_DATA_NETWORK_DETACH:Ljava/lang/String; = "dataNetworkDetached"

.field protected static final REASON_DATA_PROFILE_LIST_CHANGED:Ljava/lang/String; = "dataProfileDbChanged"

.field protected static final REASON_DEFAULT_DATA_DISABLED:Ljava/lang/String; = "defaultDataDisabled"

.field protected static final REASON_DEFAULT_DATA_ENABLED:Ljava/lang/String; = "defaultDataEnabled"

.field protected static final REASON_ICC_RECORDS_LOADED:Ljava/lang/String; = "iccRecordsLaded"

.field protected static final REASON_IMS_PDN_BLOCKED_IN_CDMA:Ljava/lang/String; = "imsPdnBlockedInCdma"

.field protected static final REASON_IMS_PDN_UPDATED_IN_CDMA:Ljava/lang/String; = "imsPdnUpdatedInCdma"

.field protected static final REASON_IMS_REOPEN_BY_HANDOVER:Ljava/lang/String; = "imsReopenByLTEHandover"

.field protected static final REASON_INACTIVATE_TIMER_EXPIRED:Ljava/lang/String; = "InactivateTimerExpired"

.field protected static final REASON_LTE_CONNECT_WITHOUT_IMS_PDN:Ljava/lang/String; = "lteConnectWithoutImsSettingChanged"

.field protected static final REASON_MASTER_DATA_DISABLED:Ljava/lang/String; = "masterDataDisabled"

.field protected static final REASON_MASTER_DATA_ENABLED:Ljava/lang/String; = "masterDataEnabled"

.field protected static final REASON_NETWORK_DISCONNECT:Ljava/lang/String; = "networkOrModemDisconnect"

.field protected static final REASON_PERMANENT_DETACH_IN_CDMA:Ljava/lang/String; = "PermanentDetachInCdma"

.field protected static final REASON_PLMN_BLOCK_RELEASE:Ljava/lang/String; = "plmnBlockRelease"

.field protected static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field protected static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field protected static final REASON_RADIO_OFF:Ljava/lang/String; = "radioOff"

.field protected static final REASON_RADIO_ON:Ljava/lang/String; = "radioOn"

.field protected static final REASON_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "radioTechnologyChanged"

.field protected static REASON_REQ_ERROR:I = 0x0

.field protected static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field protected static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field protected static final REASON_SERVICE_TYPE_DISABLED:Ljava/lang/String; = "apnTypeDisabled"

.field protected static final REASON_SERVICE_TYPE_ENABLED:Ljava/lang/String; = "apnTypeEnabled"

.field protected static final REASON_TETHERED_MODE_STATE_CHANGED:Ljava/lang/String; = "tetheredModeStateChanged"

.field protected static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field protected static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field protected static mADMINDisReq:Z

.field protected static mADMINReq:Z



# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field isNeedEngLTEDetach:Z

.field mCm:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mDnsCheckDisabled:Z

.field mDpt:Lcom/android/internal/telephony/DataProfileTracker;

.field public mLastFailCause:[I

.field public mLastFailTime:[J

.field mMasterDataEnabled:Z

.field mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mOTAAdminReq:Z

.field protected mOosIsDisconnect:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mUICCAdminReq:Z



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionTracker;->mADMINReq:Z

    .line 233
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionTracker;->mADMINDisReq:Z

    .line 235
    sput v1, Lcom/android/internal/telephony/DataConnectionTracker;->REASON_ALEADY_CONNECTED:I

    .line 236
    sput v2, Lcom/android/internal/telephony/DataConnectionTracker;->REASON_ADMIN_BLOCK:I

    .line 237
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/DataConnectionTracker;->REASON_REQ_ERROR:I

    .line 238
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/DataConnectionTracker;->REASON_CONNECTION_FAIL:I

    .line 240
    sput v1, Lcom/android/internal/telephony/DataConnectionTracker;->ADMIN_REQ_NOTI:I

    .line 243
    sput v2, Lcom/android/internal/telephony/DataConnectionTracker;->ADMIN_NOTIFICATION:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 10
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    const-string v2, "DATA"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    .line 111
    const-string/jumbo v2, "persist.telephony.oosisdc"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOosIsDisconnect:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isNeedEngLTEDetach:Z

    .line 312
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUICCAdminReq:Z

    .line 313
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOTAAdminReq:Z

    .line 364
    new-instance v2, Lcom/android/internal/telephony/DataConnectionTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    .line 332
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 333
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    .line 336
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 337
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 339
    new-instance v2, Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {v2, p1, p3}, Lcom/android/internal/telephony/DataProfileTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    .line 343
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailCause:[I

    .line 344
    new-array v2, v5, [J

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailTime:[J

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->clearFailCauseTime()V

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    return-void
.end method

.method private getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 8
    .parameter "ds"
    .parameter "ipv"

    .prologue
    const-string v4, "DATA"

    .line 638
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 640
    .local v1, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .line 655
    .local v0, dsState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_62

    .line 682
    :goto_15
    return-object v1

    .line 658
    :pswitch_16
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 659
    goto :goto_15

    .line 663
    :pswitch_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->isConcurrentVoiceAndData()Z

    move-result v2

    if-nez v2, :cond_44

    .line 665
    const-string v2, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectioned moved to SUSPENDED, ds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_15

    .line 668
    :cond_44
    const-string v2, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectioned moved to CONNECTED, ds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 671
    goto :goto_15

    .line 677
    :pswitch_5f
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_15

    .line 655
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public abstract ConfirmIMSPDNCLOSE()V
.end method

.method public abstract ConfirmLTENetDetach()V
.end method

.method public clearFailCauseTime()V
    .registers 5

    .prologue
    .line 692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_13

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailCause:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 695
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 697
    :cond_13
    return-void
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    const-string v1, "apnTypeDisabled"

    .line 476
    monitor-enter p0

    :try_start_4
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_35

    move-result-object v0

    .line 477
    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-nez v0, :cond_d

    move v1, v3

    .line 499
    :goto_b
    monitor-exit p0

    return v1

    .line 483
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 491
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 492
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    move v1, v3

    .line 494
    goto :goto_b

    .line 497
    :cond_2b
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_35

    .line 499
    const/4 v1, 0x1

    goto :goto_b

    .line 476
    .end local v0       #serviceType:Lcom/android/internal/telephony/DataServiceType;,
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableDataConnectivity()Z
    .registers 2

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 548
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public disableDataInEmergency()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 556
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isNeedEngLTEDetach:Z

    .line 557
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 558
    return v1
.end method

.method public disableDnsCheck(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 984
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    .line 985
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 986
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 987
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 988
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 989
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->dispose()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    .line 397
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const-string v2, "apnTypeEnabled"

    .line 511
    monitor-enter p0

    :try_start_5
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3d

    move-result-object v0

    .line 512
    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-nez v0, :cond_d

    .line 538
    :goto_b
    monitor-exit p0

    return v1

    .line 518
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-ne v1, v3, :cond_33

    .line 524
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 525
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 533
    const/4 v1, 0x0

    goto :goto_b

    .line 536
    :cond_33
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3d

    move v1, v3

    .line 538
    goto :goto_b

    .line 511
    .end local v0       #serviceType:Lcom/android/internal/telephony/DataServiceType;,
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableDataConnectivity()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 569
    const-string/jumbo v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, inEcm:Ljava/lang/String;
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[nsalty]enableDataConnectivity:iEcm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 580
    const/4 v1, 0x0

    .line 586
    :goto_2c
    return v1

    .line 584
    :cond_2d
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 585
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    move v1, v4

    .line 586
    goto :goto_2c
.end method

.method public getActiveApn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 789
    const-string v0, "default"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 9
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    .line 793
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v2

    .line 794
    .local v2, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v2, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move-object v3, v5

    .line 806
    :goto_a
    return-object v3

    .line 797
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 798
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v0, :cond_15

    move-object v3, v5

    .line 799
    goto :goto_a

    .line 801
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    .line 802
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_2c

    .line 803
    check-cast v1, Lcom/android/internal/telephony/ApnSetting;

    .end local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    iget-object v3, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .restart local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_2c
    move-object v3, v5

    .line 806
    goto :goto_a
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 810
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 812
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 813
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 815
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 816
    .local v5, ret:[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAllDataServiceEnabled()Z
    .registers 2

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    return v0
.end method

.method public abstract getCurrentDataConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 973
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .registers 8

    .prologue
    .line 598
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 613
    .local v4, ret:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_22

    aget-object v1, v0, v2

    .line 614
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_20

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_23

    .line 616
    :cond_20
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 625
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_22
    return-object v4

    .line 618
    .restart local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_23
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_37

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_39

    .line 620
    :cond_37
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    .line 613
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 5
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 630
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .line 631
    .local v0, ds:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v0, :cond_8

    if-nez p2, :cond_b

    .line 632
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 634
    :goto_a
    return-object v1

    :cond_b
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    goto :goto_a
.end method

.method public getDataMCCMNC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->getMCCMNC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 835
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

    .line 838
    :goto_10
    return v1

    :cond_11
    move v1, v3

    .line 835
    goto :goto_10

    .line 837
    :catch_13
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 838
    goto :goto_10
.end method

.method public abstract getDataServiceState()Landroid/telephony/ServiceState;
.end method

.method public getDetailConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[I
    .registers 13
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 742
    const/4 v5, 0x5

    new-array v0, v5, [I

    .line 745
    .local v0, Connectinfo:[I
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v2

    .line 746
    .local v2, ds:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v2, :cond_b

    if-nez p2, :cond_10

    .line 748
    :cond_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 777
    :cond_f
    :goto_f
    return-object v0

    .line 751
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v5, v2, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    .line 753
    .local v3, dsState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v6

    aput v6, v0, v5

    .line 754
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v5, v2, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 756
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v5, :cond_3d

    if-eqz v1, :cond_3d

    .line 758
    const/4 v5, 0x1

    iget-wide v6, v1, Lcom/android/internal/telephony/DataConnection;->EndTime:J

    iget-wide v8, v1, Lcom/android/internal/telephony/DataConnection;->StartingTime:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v0, v5

    .line 759
    const/4 v5, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/internal/telephony/DataConnection;->createTime:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v0, v5

    .line 762
    :cond_3d
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v5, :cond_74

    .line 763
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v2, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v6

    aput v6, v0, v5

    .line 767
    :goto_4e
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v5, :cond_56

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v5, :cond_f

    .line 769
    :cond_56
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getNumfromds(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)I

    move-result v4

    .line 770
    .local v4, numofds:I
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailCause:[I

    aget v6, v6, v4

    aput v6, v0, v5

    .line 771
    const/4 v5, 0x3

    aget v5, v0, v5

    if-eqz v5, :cond_79

    .line 772
    const/4 v5, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mLastFailTime:[J

    aget-wide v8, v8, v4

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v0, v5

    goto :goto_f

    .line 765
    .end local v4       #numofds:I,
    :cond_74
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v0, v5

    goto :goto_4e

    .line 774
    .restart local v4       #numofds:I,
    :cond_79
    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v0, v5

    goto :goto_f
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 843
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .registers 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 847
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 848
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move-object v2, v3

    .line 856
    .end local p0       
    :goto_a
    return-object v2

    .line 851
    .restart local p0       
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 852
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_1f

    .line 853
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_a

    .restart local p0       
    :cond_1f
    move-object v2, v3

    .line 856
    goto :goto_a
.end method

.method public abstract getEhrpdInfoForIms()[B
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 860
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 864
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 865
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move-object v2, v3

    .line 873
    :goto_a
    return-object v2

    .line 868
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 869
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_18

    .line 870
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_18
    move-object v2, v3

    .line 873
    goto :goto_a
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 877
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 881
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 882
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move-object v2, v3

    .line 890
    :goto_a
    return-object v2

    .line 885
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 886
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_18

    .line 887
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_18
    move-object v2, v3

    .line 890
    goto :goto_a
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 894
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 898
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 899
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move-object v2, v3

    .line 907
    :goto_a
    return-object v2

    .line 902
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 903
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_18

    .line 904
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_18
    move-object v2, v3

    .line 907
    goto :goto_a
.end method

.method public abstract getLTEInfoForIMS()Lcom/android/internal/telephony/lte/LteInfoForIMS;
.end method

.method public getNumfromds(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)I
    .registers 5
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 701
    const/4 v0, 0x7

    .line 702
    .local v0, numoftype:I
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_d

    .line 704
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_b

    .line 705
    const/4 v0, 0x0

    .line 731
    :goto_a
    return v0

    .line 707
    :cond_b
    const/4 v0, 0x1

    goto :goto_a

    .line 709
    :cond_d
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_19

    .line 711
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_17

    .line 712
    const/4 v0, 0x2

    goto :goto_a

    .line 714
    :cond_17
    const/4 v0, 0x3

    goto :goto_a

    .line 716
    :cond_19
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_25

    .line 718
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_23

    .line 719
    const/4 v0, 0x4

    goto :goto_a

    .line 721
    :cond_23
    const/4 v0, 0x5

    goto :goto_a

    .line 725
    :cond_25
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_2b

    .line 726
    const/4 v0, 0x6

    goto :goto_a

    .line 728
    :cond_2b
    const/4 v0, 0x7

    goto :goto_a
.end method

.method public getPcscfIpv6Address()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 915
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_11

    .line 916
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getPcscfIpv6Address()[Ljava/lang/String;

    move-result-object v1

    .line 919
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public abstract getUICCState()Z
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 401
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    .line 451
    :pswitch_5
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] Unhandle event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_1f
    return-void

    .line 403
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOn()V

    goto :goto_1f

    .line 407
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOff()V

    goto :goto_1f

    .line 411
    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V

    goto :goto_1f

    .line 415
    :pswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V

    goto :goto_1f

    .line 419
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onConnectDone(Landroid/os/AsyncResult;)V

    goto :goto_1f

    .line 423
    :pswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_1f

    .line 427
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onMasterDataDisabled()V

    goto :goto_1f

    .line 431
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onMasterDataEnabled()V

    goto :goto_1f

    .line 435
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_1f

    .line 439
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_1f

    .line 443
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_1f

    .line 447
    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_1f

    .line 401
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_28
        :pswitch_30
        :pswitch_40
        :pswitch_38
        :pswitch_58
        :pswitch_5c
        :pswitch_20
        :pswitch_24
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_54
        :pswitch_50
        :pswitch_5
        :pswitch_4c
        :pswitch_48
    .end packed-switch
.end method

.method protected abstract isConcurrentVoiceAndData()Z
.end method

.method public isDataConnectivityEnabled()Z
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    return v0
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public isDnsCheckDisabled()Z
    .registers 2

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    return v0
.end method

.method public isServiceTypeEnabled(I)Z
    .registers 7
    .parameter "dataServiceTypeID"

    .prologue
    .line 943
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 944
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataServiceType;->getid()I

    move-result v4

    if-ne v4, p1, :cond_17

    .line 945
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    .line 948
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :goto_16
    return v4

    .line 943
    .restart local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 948
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_1a
    const/4 v4, 0x0

    goto :goto_16
.end method

.method protected notifyAllDataServiceTypes(Ljava/lang/String;)V
    .registers 7
    .parameter "reason"

    .prologue
    .line 933
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    .line 934
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 935
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 937
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_17
    return-void
.end method

.method public notifyDataActivity()V
    .registers 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    .line 930
    return-void
.end method

.method notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V
    .registers 7
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method notifyDataConnectionFail(Ljava/lang/String;)V
    .registers 9
    .parameter "reason"

    .prologue
    .line 960
    const/4 v3, 0x0

    .line 961
    .local v3, isAnyServiceActive:Z
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v4, :cond_17

    aget-object v1, v0, v2

    .line 962
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 963
    const/4 v3, 0x1

    .line 961
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 966
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_17
    if-nez v3, :cond_20

    .line 967
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 969
    :cond_20
    return-void
.end method

.method protected abstract onConnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onMasterDataDisabled()V
.end method

.method protected abstract onMasterDataEnabled()V
.end method

.method protected abstract onRadioOff()V
.end method

.method protected abstract onRadioOn()V
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected abstract onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V
.end method

.method protected abstract onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public abstract requestDetachFromNetwork(I)Z
.end method

.method public setAllDataServiceEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const-string v1, "DATA"

    .line 1003
    if-nez p1, :cond_1a

    .line 1004
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->disableDataConnectivity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1005
    const-string v0, "DATA"

    const-string v0, "SUCCESS setAllDataServiceEnabled - disableDataConnectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_11
    return-void

    .line 1007
    :cond_12
    const-string v0, "DATA"

    const-string v0, "FAILURE setAllDataServiceEnabled - disableDataConnectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1010
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->enableDataConnectivity()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1011
    const-string v0, "DATA"

    const-string v0, "SUCCESS setAllDataServiceEnabled - enableDataConnectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1013
    :cond_28
    const-string v0, "DATA"

    const-string v0, "FAILURE setAllDataServiceEnabled - enableDataConnectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method protected abstract setDataConnectionAsDesired(ZLandroid/os/Message;)V
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_27

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    if-eqz p1, :cond_28

    const/4 v2, 0x1

    :goto_11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 826
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 827
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 830
    :cond_27
    return-void

    .line 824
    :cond_28
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public abstract setIMSCommandTimer(I)V
.end method

.method public abstract setLteConnectEnabledForTest(Z)V
.end method

.method public abstract setOTADMAdminUsing(Z)V
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 393
    return-void
.end method
