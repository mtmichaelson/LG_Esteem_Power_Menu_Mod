.class public final Lcom/broadcom/bt/service/fm/FmReceiver;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmReceiver.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiver$1;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AUDIO_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

.field public static final ACTION_ON_AUDIO_PATH:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

.field public static final ACTION_ON_AUDIO_QUAL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

.field public static final ACTION_ON_EST_NFL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_EST_NFL"

.field public static final ACTION_ON_RDS_DATA:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

.field public static final ACTION_ON_RDS_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

.field public static final ACTION_ON_SEEK_CMPL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field public static final ACTION_ON_VOL:Ljava/lang/String; = "ON_VOL"

.field public static final ACTION_ON_WRLD_RGN:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final EXTRA_ALT_FREQ_MODE:Ljava/lang/String; = "ALT_FREQ_MODE"

.field public static final EXTRA_AUDIO_MODE:Ljava/lang/String; = "AUDIO_MODE"

.field public static final EXTRA_AUDIO_PATH:Ljava/lang/String; = "AUDIO_PATH"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_MUTED:Ljava/lang/String; = "MUTED"

.field public static final EXTRA_NFL:Ljava/lang/String; = "NFL"

.field public static final EXTRA_RADIO_ON:Ljava/lang/String; = "RADIO_ON"

.field public static final EXTRA_RDS_DATA_TYPE:Ljava/lang/String; = "RDS_DATA_TYPE"

.field public static final EXTRA_RDS_IDX:Ljava/lang/String; = "RDS_IDX"

.field public static final EXTRA_RDS_MODE:Ljava/lang/String; = "RDS_MODE"

.field public static final EXTRA_RDS_PRGM_SVC:Ljava/lang/String; = "RDS_PRGM_SVC"

.field public static final EXTRA_RDS_PRGM_TYPE:Ljava/lang/String; = "RDS_PRGM_TYPE"

.field public static final EXTRA_RDS_PRGM_TYPE_NAME:Ljava/lang/String; = "RDS_PRGM_TYPE_NAME"

.field public static final EXTRA_RDS_TXT:Ljava/lang/String; = "RDS_TXT"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "RDS_SUCCESS"

.field public static final EXTRA_VOL:Ljava/lang/String; = "VOL"

.field public static final EXTRA_WRLD_RGN:Ljava/lang/String; = "WRLD_RGN"

.field public static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field public static final FM_VOLUME_MAX:I = 0x100

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FAST:I = 0x81

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_receiver_service"

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmReceiver"



# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 577
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 71
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 663
    if-nez p0, :cond_7

    .line 664
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0       
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 666
    .restart local p0       
    :cond_7
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v0, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v0, "ON_VOL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v0, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 565
    const-string v1, "bluetooth_fm_receiver_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 566
    const-string v1, "FmReceiver"

    const-string v2, "Unable to get FMReceiver proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v1, 0x0

    .line 571
    :goto_10
    return v1

    .line 570
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>()V

    .line 571
    .local v0, p:Lcom/broadcom/bt/service/fm/FmReceiver;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FmService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .registers 6
    .parameter "nflLevel"

    .prologue
    .line 1185
    monitor-enter p0

    const/4 v1, 0x2

    .line 1188
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1193
    :goto_8
    monitor-exit p0

    return v1

    .line 1189
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1190
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "estimateNoiseFloorLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 1185
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1225
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1226
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    if-eqz v1, :cond_8

    .line 700
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 709
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2c

    if-eqz v1, :cond_1a

    .line 711
    :try_start_10
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_22

    .line 715
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    .line 718
    :cond_1a
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 719
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    .line 720
    monitor-exit p0

    return-void

    .line 712
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 713
    .local v0, t:Ljava/lang/Throwable;
    :try_start_24
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_17

    .line 699
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .registers 5

    .prologue
    .line 844
    const/4 v1, 0x0

    .line 846
    .local v1, returnStatus:Z
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getRadioIsOn()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 850
    :goto_7
    return v1

    .line 847
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 848
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getRadioIsOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public declared-synchronized getStatus()I
    .registers 5

    .prologue
    .line 825
    monitor-enter p0

    const/4 v1, 0x2

    .line 828
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getStatus()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 833
    :goto_8
    monitor-exit p0

    return v1

    .line 829
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 830
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "getStatus() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 825
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 586
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 588
    const/4 v1, 0x1

    .line 592
    :goto_7
    return v1

    .line 589
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 590
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmReceiver"

    const-string v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public declared-synchronized muteAudio(Z)I
    .registers 6
    .parameter "mute"

    .prologue
    .line 865
    monitor-enter p0

    const/4 v1, 0x2

    .line 868
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->muteAudio(Z)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 873
    :goto_8
    monitor-exit p0

    return v1

    .line 869
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 865
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 605
    monitor-enter p0

    :try_start_1
    const-string v0, "FmReceiver"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 608
    monitor-exit p0

    return-void

    .line 605
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 8
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 626
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 645
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-nez v1, :cond_16

    .line 646
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_22

    .line 648
    :try_start_f
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 654
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 649
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "FmReceiver"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_16

    .line 626
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 7
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 618
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 620
    monitor-exit p0

    return-void

    .line 618
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekRdsStation(III)I
    .registers 5
    .parameter "scanMode"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 979
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .registers 9
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 946
    monitor-enter p0

    const/4 v1, 0x2

    .line 949
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekRdsStation(IIII)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 955
    :goto_8
    monitor-exit p0

    return v1

    .line 951
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 952
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "seekRdsStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 946
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStation(I)I
    .registers 3
    .parameter "scanMode"

    .prologue
    .line 920
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekStation(II)I
    .registers 7
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 893
    monitor-enter p0

    const/4 v1, 0x2

    .line 896
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStation(II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 901
    :goto_8
    monitor-exit p0

    return v1

    .line 897
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 898
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 893
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized seekStationAbort()I
    .registers 5

    .prologue
    .line 994
    monitor-enter p0

    const/4 v1, 0x2

    .line 997
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStationAbort()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1002
    :goto_8
    monitor-exit p0

    return v1

    .line 998
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 999
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "seekStationAbort() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 994
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 6
    .parameter "audioMode"

    .prologue
    .line 1055
    monitor-enter p0

    const/4 v1, 0x2

    .line 1058
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioMode(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1063
    :goto_8
    monitor-exit p0

    return v1

    .line 1059
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1055
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 6
    .parameter "audioPath"

    .prologue
    .line 1083
    monitor-enter p0

    const/4 v1, 0x2

    .line 1086
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioPath(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1091
    :goto_8
    monitor-exit p0

    return v1

    .line 1087
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1088
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1083
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .registers 6
    .parameter "volume"

    .prologue
    .line 1130
    monitor-enter p0

    const/4 v1, 0x2

    .line 1133
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setFMVolume(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1138
    :goto_8
    monitor-exit p0

    return v1

    .line 1134
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1135
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setFMVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1130
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .registers 7
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 1212
    monitor-enter p0

    const/4 v1, 0x2

    .line 1215
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1221
    :goto_8
    monitor-exit p0

    return v1

    .line 1217
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1218
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setLiveAudioPolling() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1212
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .registers 9
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1028
    monitor-enter p0

    const/4 v1, 0x2

    .line 1031
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1037
    :goto_8
    monitor-exit p0

    return v1

    .line 1033
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1034
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1028
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStepSize(I)I
    .registers 6
    .parameter "stepSize"

    .prologue
    .line 1107
    monitor-enter p0

    const/4 v1, 0x2

    .line 1110
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setStepSize(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1115
    :goto_8
    monitor-exit p0

    return v1

    .line 1111
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1112
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1107
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(II)I
    .registers 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 1159
    monitor-enter p0

    const/4 v1, 0x2

    .line 1162
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setWorldRegion(II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1167
    :goto_8
    monitor-exit p0

    return v1

    .line 1163
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1164
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setWorldRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1159
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tuneRadio(I)I
    .registers 6
    .parameter "freq"

    .prologue
    .line 805
    monitor-enter p0

    const/4 v1, 0x2

    .line 808
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->tuneRadio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 813
    :goto_8
    monitor-exit p0

    return v1

    .line 809
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 805
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio()I
    .registers 5

    .prologue
    .line 782
    monitor-enter p0

    const/4 v1, 0x2

    .line 785
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOffRadio()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 790
    :goto_8
    monitor-exit p0

    return v1

    .line 786
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 787
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "turnOffRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 782
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public turnOnRadio()I
    .registers 2

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .registers 6
    .parameter "functionalityMask"

    .prologue
    .line 742
    monitor-enter p0

    const/4 v1, 0x2

    .line 745
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOnRadio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 750
    :goto_8
    monitor-exit p0

    return v1

    .line 746
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "turnOnRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 742
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 4

    .prologue
    const-string v1, "FmReceiver"

    .line 680
    monitor-enter p0

    :try_start_3
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 691
    :try_start_e
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_17

    .line 696
    :goto_15
    monitor-exit p0

    return-void

    .line 692
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 693
    .local v0, t:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 680
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method
