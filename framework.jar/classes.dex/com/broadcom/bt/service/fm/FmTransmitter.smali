.class public final Lcom/broadcom/bt/service/fm/FmTransmitter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmTransmitter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitter$1;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_BEST_CHANNEL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

.field public static final ACTION_ON_CHANNEL_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

.field public static final ACTION_ON_DISABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_DISABLE"

.field public static final ACTION_ON_ENABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_ENABLE"

.field public static final ACTION_ON_SET_TX_FREQ:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

.field public static final ACTION_ON_SET_TX_PWR:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AUDIO_MODE_MONO:I = 0x0

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_PATH_ADC:I = 0x1

.field public static final AUDIO_PATH_HCI:I = 0x2

.field public static final AUDIO_PATH_I2S:I = 0x0

.field public static final AUDIO_VOLUME_HI:I = 0x0

.field public static final AUDIO_VOLUME_LOW:I = 0x2

.field public static final AUDIO_VOLUME_MED:I = 0x1

.field public static final AUDIO_VOLUME_WEAK:I = 0x3

.field public static final BANDWIDTH_100K:I = 0x1

.field public static final BANDWIDTH_200K:I = 0x2

.field public static final BANDWIDTH_50K:I = 0x0

.field public static final CHIRP_MODE_AUTO:I = 0x2

.field public static final CHIRP_MODE_MANUAL:I = 0x1

.field public static final CHIRP_MODE_OFF:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_CHANNEL_STATUS:Ljava/lang/String; = "CHANNEL_STATUS"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_NUM_CHNL:Ljava/lang/String; = "NUM_CHNL"

.field public static final EXTRA_PWR:Ljava/lang/String; = "PWR"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_STATUS_TYPE:Ljava/lang/String; = "STATUS_TYPE"

.field public static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_TRANSMITTER"

.field public static final MUTE_ALL:I = 0x0

.field public static final MUTE_L:I = 0x2

.field public static final MUTE_R:I = 0x3

.field public static final MUTE_UNMUTE:I = 0x1

.field public static final NOTIFY_AUD_LVL_BIT:I = 0x2

.field public static final NOTIFY_NONE:I = 0x0

.field public static final NOTIFY_RSSI_BIT:I = 0x1

.field public static final PREEMPHASIS_50US:I = 0x1

.field public static final PREEMPHASIS_75US:I = 0x2

.field public static final PREEMPHASIS_OFF:I = 0x0

.field public static final REGION_EUROPE:I = 0x2

.field public static final REGION_JAPAN:I = 0x1

.field public static final REGION_US:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_transmitter_service"

.field public static final STATUS_BUSY:I = 0x1

.field public static final STATUS_ERR_FLAG_TOUT:I = 0x4

.field public static final STATUS_ERR_FREQ:I = 0x3

.field public static final STATUS_ERR_GENERIC:I = 0x5

.field public static final STATUS_ERR_VCMD:I = 0x2

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x6

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x7

.field public static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmTransmitter"

.field private static final V:Z = true



# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 434
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 69
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 530
    if-nez p0, :cond_7

    .line 531
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0       
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    .restart local p0       
    :cond_7
    const-string v0, "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v0, "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v0, "com.broadcom.bt.app.fm.action.ON_DISABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v0, "com.broadcom.bt.app.fm.action.ON_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 7
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const-string v4, "FmTransmitter"

    .line 417
    const-string v2, "FmTransmitter"

    const-string v2, "getProxy"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v2, "bluetooth_fm_transmitter_service"

    invoke-static {p0, v2}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 420
    const-string v2, "FmTransmitter"

    const-string v2, "Unable to get FMTransmitter proxy: service is not enabled."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v2, 0x0

    .line 430
    :goto_19
    return v2

    .line 423
    :cond_1a
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;-><init>()V

    .line 424
    .local v0, p:Lcom/broadcom/bt/service/fm/FmTransmitter;
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.FmTxService"

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 428
    .local v1, result:Z
    const-string v2, "FmTransmitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxy result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 430
    goto :goto_19
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .registers 5

    .prologue
    .line 1093
    monitor-enter p0

    const/4 v1, 0x5

    .line 1096
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1d

    move-result v2

    if-nez v2, :cond_b

    .line 1097
    const/4 v2, 0x6

    .line 1105
    :goto_9
    monitor-exit p0

    return v2

    .line 1100
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->abortScanForBestChannel()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 1105
    goto :goto_9

    .line 1101
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1102
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string v3, "abortScanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_11

    .line 1093
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disableFmTransmitter()I
    .registers 5

    .prologue
    .line 658
    monitor-enter p0

    const/4 v1, 0x5

    .line 661
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->disableFmTransmitter()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 665
    :goto_8
    monitor-exit p0

    return v1

    .line 662
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string v3, "disableFmTransmitter() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 658
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableFmTransmitter()I
    .registers 6

    .prologue
    const-string v2, "FmTransmitter"

    .line 628
    monitor-enter p0

    :try_start_3
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FmTransmitter.enableFmTransmitter() mService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_49

    .line 630
    const/4 v1, 0x0

    .line 633
    .local v1, returnCode:I
    :try_start_1e
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->enableFmTransmitter()I

    move-result v1

    .line 635
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "returnCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3d} :catch_3f

    .line 641
    :goto_3d
    monitor-exit p0

    return v1

    .line 637
    :catch_3f
    move-exception v2

    move-object v0, v2

    .line 638
    .local v0, e:Landroid/os/RemoteException;
    :try_start_41
    const-string v2, "FmTransmitter"

    const-string v3, "enableFmTransmitter() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_3d

    .line 628
    .end local v0       #e:Landroid/os/RemoteException;,
    .end local v1       #returnCode:I,
    :catchall_49
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1198
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1199
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    if-eqz v1, :cond_8

    .line 567
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 576
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2c

    if-eqz v1, :cond_1a

    .line 578
    :try_start_10
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_22

    .line 582
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 585
    :cond_1a
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    .line 587
    monitor-exit p0

    return-void

    .line 579
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 580
    .local v0, t:Ljava/lang/Throwable;
    :try_start_24
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_17

    .line 566
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .registers 7

    .prologue
    const-string v5, "FmTransmitter"

    .line 598
    const-string v2, "FmTransmitter"

    const-string v2, "FmTransmitter.getRadioIsOn()"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v1, 0x0

    .line 602
    .local v1, returnStatus:Z
    :try_start_a
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->getRadioIsOn()Z

    move-result v1

    .line 604
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "returnStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_2a

    .line 609
    :goto_29
    return v1

    .line 606
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v2, "getRadioIsOn() failed"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    const-string v2, "FmTransmitter"

    .line 443
    const-string v1, "FmTransmitter"

    const-string v1, "**** init service ****"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :try_start_9
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_11

    .line 447
    const/4 v1, 0x1

    .line 450
    :goto_10
    return v1

    .line 448
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 449
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmTransmitter"

    const-string v1, "Unable to initialize BluetoothFMTX proxy with service"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public declared-synchronized muteAudio(I)I
    .registers 6
    .parameter "mute"

    .prologue
    .line 987
    monitor-enter p0

    const/4 v1, 0x5

    .line 990
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 991
    const/4 v2, 0x6

    .line 999
    :goto_9
    monitor-exit p0

    return v2

    .line 994
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->muteAudio(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 999
    goto :goto_9

    .line 995
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 987
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    const-string v0, "FmTransmitter"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 468
    monitor-exit p0

    return-void

    .line 465
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 9
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    const-string v1, "FmTransmitter"

    .line 483
    monitor-enter p0

    :try_start_3
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 485
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "registerEventHandler MAIN INTENTS:false CALLBACKS:true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-nez v1, :cond_46

    .line 508
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitter;Lcom/broadcom/bt/service/fm/FmTransmitter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 511
    const-string v1, "FmTransmitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mService.registerCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_52

    .line 515
    :try_start_3f
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_46} :catch_48

    .line 521
    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    .line 516
    :catch_48
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4a
    const-string v1, "FmTransmitter"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_52

    goto :goto_46

    .line 483
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 7
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 476
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 478
    monitor-exit p0

    return-void

    .line 476
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .registers 7
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 1062
    monitor-enter p0

    const/4 v1, 0x5

    .line 1065
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 1066
    const/4 v2, 0x6

    .line 1074
    :goto_9
    monitor-exit p0

    return v2

    .line 1069
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->scanForBestChannel(IZ)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 1074
    goto :goto_9

    .line 1070
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1071
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "scanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 1062
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 6
    .parameter "audioMode"

    .prologue
    .line 787
    monitor-enter p0

    const/4 v1, 0x5

    .line 790
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 791
    const/4 v2, 0x6

    .line 799
    :goto_9
    monitor-exit p0

    return v2

    .line 794
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioMode(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 799
    goto :goto_9

    .line 795
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 787
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 6
    .parameter "audioPath"

    .prologue
    .line 953
    monitor-enter p0

    const/4 v1, 0x5

    .line 956
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 957
    const/4 v2, 0x6

    .line 966
    :goto_9
    monitor-exit p0

    return v2

    .line 961
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioPath(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 966
    goto :goto_9

    .line 962
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 963
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 953
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setBandwidth(I)I
    .registers 6
    .parameter "bandwidth"

    .prologue
    .line 887
    monitor-enter p0

    const/4 v1, 0x5

    .line 890
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 891
    const/4 v2, 0x6

    .line 899
    :goto_9
    monitor-exit p0

    return v2

    .line 894
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setBandwidth(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 899
    goto :goto_9

    .line 895
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 896
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setBandwidth() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 887
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .registers 6
    .parameter "notifBitmask"

    .prologue
    .line 1024
    monitor-enter p0

    const/4 v1, 0x5

    .line 1027
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 1028
    const/4 v2, 0x6

    .line 1036
    :goto_9
    monitor-exit p0

    return v2

    .line 1031
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setInterferenceNotif(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 1036
    goto :goto_9

    .line 1032
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1033
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setInterferenceNotif() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 1024
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPreemphasis(I)I
    .registers 6
    .parameter "preemph"

    .prologue
    .line 920
    monitor-enter p0

    const/4 v1, 0x5

    .line 923
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 924
    const/4 v2, 0x6

    .line 932
    :goto_9
    monitor-exit p0

    return v2

    .line 927
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPreemphasis(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 932
    goto :goto_9

    .line 928
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 929
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPreemphasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 920
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPwrLevel(I)I
    .registers 6
    .parameter "dbGain"

    .prologue
    .line 754
    monitor-enter p0

    const/4 v1, 0x5

    .line 757
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 758
    const/4 v2, 0x6

    .line 766
    :goto_9
    monitor-exit p0

    return v2

    .line 761
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPwrLevel(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 766
    goto :goto_9

    .line 762
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPwrLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 754
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegion(I)I
    .registers 6
    .parameter "region"

    .prologue
    .line 854
    monitor-enter p0

    const/4 v1, 0x5

    .line 857
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 858
    const/4 v2, 0x6

    .line 866
    :goto_9
    monitor-exit p0

    return v2

    .line 861
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setRegion(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 866
    goto :goto_9

    .line 862
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 863
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 854
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxFrequency(I)I
    .registers 6
    .parameter "frequency"

    .prologue
    .line 721
    monitor-enter p0

    const/4 v1, 0x5

    .line 724
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 725
    const/4 v2, 0x6

    .line 733
    :goto_9
    monitor-exit p0

    return v2

    .line 728
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxFrequency(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 733
    goto :goto_9

    .line 729
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 730
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxFrequency() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 721
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxPower(Z)I
    .registers 6
    .parameter "powerOn"

    .prologue
    .line 685
    monitor-enter p0

    const/4 v1, 0x5

    .line 688
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 689
    const/4 v2, 0x6

    .line 697
    :goto_9
    monitor-exit p0

    return v2

    .line 692
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxPower(Z)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 697
    goto :goto_9

    .line 693
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 694
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxPower() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 685
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setVolume(I)I
    .registers 6
    .parameter "volume"

    .prologue
    .line 821
    monitor-enter p0

    const/4 v1, 0x5

    .line 824
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 825
    const/4 v2, 0x6

    .line 833
    :goto_9
    monitor-exit p0

    return v2

    .line 828
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setVolume(I)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 833
    goto :goto_9

    .line 829
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 830
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 821
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .registers 22
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 1151
    monitor-enter p0

    const/4 v11, 0x5

    .line 1154
    .local v11, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_2d

    move-result v0

    if-nez v0, :cond_b

    .line 1155
    const/4 v0, 0x6

    .line 1164
    :goto_9
    monitor-exit p0

    return v0

    .line 1158
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->startAudioChirp(ZIIIIIIII)I
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_22

    move-result v11

    :goto_20
    move v0, v11

    .line 1164
    goto :goto_9

    .line 1160
    :catch_22
    move-exception v0

    move-object v10, v0

    .line 1161
    .local v10, e:Landroid/os/RemoteException;
    :try_start_24
    const-string v0, "FmTransmitter"

    const-string/jumbo v1, "startAudioChirp() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2d

    goto :goto_20

    .line 1151
    .end local v10       #e:Landroid/os/RemoteException;,
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .registers 5

    .prologue
    .line 1182
    monitor-enter p0

    const/4 v1, 0x5

    .line 1185
    .local v1, returnCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_b

    .line 1186
    const/4 v2, 0x6

    .line 1194
    :goto_9
    monitor-exit p0

    return v2

    .line 1189
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->stopAudioChirp()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    :goto_11
    move v2, v1

    .line 1194
    goto :goto_9

    .line 1190
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1191
    .local v0, e:Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "stopAudioChirp() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 1182
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 4

    .prologue
    const-string v1, "FmTransmitter"

    .line 546
    monitor-enter p0

    :try_start_3
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 558
    :try_start_e
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_17

    .line 563
    :goto_15
    monitor-exit p0

    return-void

    .line 559
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 560
    .local v0, t:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 546
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method
