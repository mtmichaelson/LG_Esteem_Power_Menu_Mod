.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$2;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
    }
.end annotation


# static fields
.field private static FMQueue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z = true



# instance fields
.field private current_CMD:I

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected operationHandler:Landroid/os/Handler;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    .line 407
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 579
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 415
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmReceiverService;IILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private static native classFmInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .registers 11
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    const-string v6, "FmReceiverService"

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 203
    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    if-eqz p1, :cond_8f

    .line 205
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 209
    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_45

    .line 210
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_68

    .line 211
    const-string v4, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed because of a FM off request. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 213
    const/4 v0, 0x0

    .line 214
    goto :goto_10

    .line 217
    :cond_45
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_68

    .line 218
    const-string v4, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed because of an abort request. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 220
    const/4 v0, 0x0

    .line 221
    goto :goto_10

    .line 224
    :cond_68
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_10

    .line 225
    const-string v4, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** ***** Sent. So remove Job:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 227
    const/4 v0, 0x0

    .line 228
    goto :goto_10

    .line 233
    .end local v0       #existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
    :cond_8f
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private fetchNextJob()V
    .registers 6

    .prologue
    .line 357
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 358
    :try_start_3
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 359
    .local v0, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    if-nez v0, :cond_f

    .line 360
    monitor-exit v1

    .line 368
    :goto_e
    return-void

    .line 362
    :cond_f
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 364
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    .line 367
    monitor-exit v1

    goto :goto_e

    .end local v0       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 517
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 518
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 519
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 520
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 521
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 522
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 523
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 524
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 525
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 526
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 527
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 528
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 529
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 530
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 531
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 532
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 533
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 534
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 535
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 536
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 537
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 538
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 539
    return-void
.end method

.method private logTimeOut(I)V
    .registers 5
    .parameter "what"

    .prologue
    const-string v2, "FmReceiverService"

    .line 542
    packed-switch p1, :pswitch_data_94

    .line 572
    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTAPP TIMEOUT (1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_23
    return-void

    .line 544
    :pswitch_24
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_ENABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 546
    :pswitch_2c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_DISABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 548
    :pswitch_34
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SEARCH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 550
    :pswitch_3c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_TUNE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 552
    :pswitch_44
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_MUTE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 554
    :pswitch_4c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SEEK_ABORT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 556
    :pswitch_54
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_RDS_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 558
    :pswitch_5c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 560
    :pswitch_64
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_PATH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 562
    :pswitch_6c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_STEP_SIZE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 564
    :pswitch_74
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_FM_VOLUME"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 566
    :pswitch_7c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_WORLD_REGION"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 568
    :pswitch_84
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_NFL"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 570
    :pswitch_8c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_GENERIC"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 542
    :pswitch_data_94
    .packed-switch 0x2
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
        :pswitch_44
        :pswitch_4c
        :pswitch_54
        :pswitch_5c
        :pswitch_64
        :pswitch_6c
        :pswitch_74
        :pswitch_7c
        :pswitch_84
        :pswitch_8c
    .end packed-switch
.end method

.method private native muteNative(Z)Z
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)Z
    .registers 9
    .parameter "job"

    .prologue
    const/4 v6, 0x4

    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, successful:I
    const/4 v2, -0x1

    iput v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 259
    iget-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 261
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmReceiverService$FMCommand:[I

    iget-object v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_c8

    .line 324
    :cond_3c
    :goto_3c
    if-nez v1, :cond_c4

    const/4 v2, 0x1

    :goto_3f
    return v2

    .line 264
    :pswitch_40
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOnRadio(I)I

    move-result v1

    .line 265
    goto :goto_3c

    .line 267
    :pswitch_47
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOffRadio()I

    move-result v1

    .line 268
    goto :goto_3c

    .line 270
    :pswitch_4c
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_tuneRadio(I)I

    move-result v1

    .line 271
    goto :goto_3c

    .line 273
    :pswitch_53
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_getStatus()I

    move-result v1

    .line 274
    goto :goto_3c

    .line 276
    :pswitch_58
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_muteAudio(Z)I

    move-result v1

    .line 277
    goto :goto_3c

    .line 279
    :pswitch_5f
    iput v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 280
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekStation(II)I

    move-result v1

    .line 281
    goto :goto_3c

    .line 283
    :pswitch_6a
    iput v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 284
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekRdsStation(IIII)I

    move-result v1

    .line 285
    goto :goto_3c

    .line 291
    :pswitch_79
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setRdsMode(IIII)I

    move-result v1

    .line 292
    goto :goto_3c

    .line 294
    :pswitch_86
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioMode(I)I

    move-result v1

    .line 295
    goto :goto_3c

    .line 297
    :pswitch_8d
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioPath(I)I

    move-result v1

    .line 298
    goto :goto_3c

    .line 300
    :pswitch_94
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setStepSize(I)I

    move-result v1

    .line 301
    goto :goto_3c

    .line 303
    :pswitch_9b
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setWorldRegion(II)I

    move-result v1

    .line 304
    goto :goto_3c

    .line 307
    :pswitch_a4
    :try_start_a4
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_estimateNoiseFloorLevel(I)I
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_ab

    move-result v1

    goto :goto_3c

    .line 308
    :catch_ab
    move-exception v2

    move-object v0, v2

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    .line 311
    goto :goto_3c

    .line 314
    .end local v0       #e:Landroid/os/RemoteException;,
    :pswitch_af
    :try_start_af
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setLiveAudioPolling(ZI)I
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b6} :catch_b8

    move-result v1

    goto :goto_3c

    .line 315
    :catch_b8
    move-exception v2

    move-object v0, v2

    .line 316
    .restart local v0       #e:Landroid/os/RemoteException;,
    const/4 v1, 0x2

    .line 318
    goto :goto_3c

    .line 320
    .end local v0       #e:Landroid/os/RemoteException;,
    :pswitch_bc
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setFMVolume(I)I

    move-result v1

    goto/16 :goto_3c

    .line 324
    :cond_c4
    const/4 v2, 0x0

    goto/16 :goto_3f

    .line 262
    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_40
        :pswitch_47
        :pswitch_4c
        :pswitch_53
        :pswitch_58
        :pswitch_5f
        :pswitch_6a
        :pswitch_79
        :pswitch_86
        :pswitch_8d
        :pswitch_94
        :pswitch_9b
        :pswitch_a4
        :pswitch_af
        :pswitch_bc
    .end packed-switch
.end method

.method private processCommands()V
    .registers 6

    .prologue
    .line 334
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommands:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 338
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 340
    .local v1, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 353
    .end local v1       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
    :cond_36
    return-void

    .line 350
    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_24
.end method

.method private process_estimateNoiseFloorLevel(I)I
    .registers 10
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 1526
    const-string v3, "FmReceiverService"

    const-string v3, "estimateNoiseFloorLevel()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const/4 v2, 0x0

    .line 1531
    .local v2, returnStatus:I
    if-eq p1, v4, :cond_14

    if-eq p1, v6, :cond_14

    if-eqz p1, :cond_14

    .line 1534
    const/4 v2, 0x4

    .line 1560
    :cond_13
    :goto_13
    return v2

    .line 1535
    :cond_14
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_38

    .line 1536
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v2, 0x3

    goto :goto_13

    .line 1539
    :cond_38
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1541
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1542
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1543
    const/16 v3, 0xe

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1544
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1545
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1548
    :try_start_51
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_62

    move-result v3

    if-eqz v3, :cond_60

    .line 1549
    const/4 v2, 0x0

    .line 1556
    :goto_58
    if-eqz v2, :cond_13

    .line 1557
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_13

    .line 1551
    :cond_60
    const/4 v2, 0x2

    goto :goto_58

    .line 1552
    :catch_62
    move-exception v0

    .line 1553
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1554
    const-string v3, "FmReceiverService"

    const-string v3, "estimateNoiseFloorNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private process_getStatus()I
    .registers 5

    .prologue
    const-string v3, "FmReceiverService"

    .line 885
    const-string v1, "FmReceiverService"

    const-string v1, "getStatus()"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v0, 0x0

    .line 889
    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_2f

    .line 890
    const-string v1, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v0, 0x3

    .line 897
    :goto_2e
    return v0

    .line 894
    :cond_2f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_2e
.end method

.method private process_muteAudio(Z)I
    .registers 10
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 916
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "muteAudio()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v2, 0x0

    .line 920
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_31

    .line 921
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v2, 0x3

    .line 945
    :cond_30
    :goto_30
    return v2

    .line 924
    :cond_31
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 926
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 927
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 928
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 929
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 933
    :try_start_49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_5a

    move-result v3

    if-eqz v3, :cond_58

    .line 934
    const/4 v2, 0x0

    .line 941
    :goto_50
    if-eqz v2, :cond_30

    .line 942
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_30

    .line 936
    :cond_58
    const/4 v2, 0x2

    goto :goto_50

    .line 937
    :catch_5a
    move-exception v0

    .line 938
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 939
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "muteAudio failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method

.method private process_seekRdsStation(IIII)I
    .registers 14
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v8, 0xff

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 1044
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "seekRdsStation():1"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v2, 0x0

    .line 1049
    .local v2, returnStatus:I
    if-ltz p2, :cond_14

    if-le p2, v8, :cond_16

    .line 1051
    :cond_14
    const/4 v2, 0x4

    .line 1087
    :cond_15
    :goto_15
    return v2

    .line 1052
    :cond_16
    if-ltz p4, :cond_1a

    if-le p4, v8, :cond_1c

    .line 1054
    :cond_1a
    const/4 v2, 0x4

    goto :goto_15

    .line 1055
    :cond_1c
    if-eqz p3, :cond_24

    if-eq p3, v6, :cond_24

    if-eq p3, v4, :cond_24

    .line 1058
    const/4 v2, 0x4

    goto :goto_15

    .line 1059
    :cond_24
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_48

    .line 1060
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v2, 0x3

    goto :goto_15

    .line 1063
    :cond_48
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1065
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1066
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1067
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 1068
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1072
    and-int/lit16 p1, p1, 0x83

    .line 1075
    :try_start_60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_71

    move-result v3

    if-eqz v3, :cond_6f

    .line 1076
    const/4 v2, 0x0

    .line 1083
    :goto_67
    if-eqz v2, :cond_15

    .line 1084
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_15

    .line 1078
    :cond_6f
    const/4 v2, 0x2

    goto :goto_67

    .line 1079
    :catch_71
    move-exception v0

    .line 1080
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1081
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "searchNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67
.end method

.method private process_seekStation(II)I
    .registers 11
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x1

    const-string v6, "FmReceiverService"

    .line 972
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "seekStation():1"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v2, 0x0

    .line 977
    .local v2, returnStatus:I
    if-ltz p2, :cond_13

    const/16 v3, 0xff

    if-le p2, v3, :cond_15

    .line 979
    :cond_13
    const/4 v2, 0x4

    .line 1012
    :cond_14
    :goto_14
    return v2

    .line 980
    :cond_15
    if-eqz p1, :cond_48

    const/16 v3, 0x80

    if-eq p1, v3, :cond_48

    const/16 v3, 0x81

    if-eq p1, v3, :cond_48

    const/16 v3, 0x82

    if-eq p1, v3, :cond_48

    .line 982
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seekStation failed, scanMode too high (0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v2, 0x3

    goto :goto_14

    .line 984
    :cond_48
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_6d

    .line 985
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v2, 0x3

    goto :goto_14

    .line 988
    :cond_6d
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 990
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 991
    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 992
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 993
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 997
    and-int/lit16 p1, p1, 0x83

    .line 1000
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_87
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_99

    move-result v3

    if-eqz v3, :cond_97

    .line 1001
    const/4 v2, 0x0

    .line 1008
    :goto_8e
    if-eqz v2, :cond_14

    .line 1009
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_14

    .line 1003
    :cond_97
    const/4 v2, 0x2

    goto :goto_8e

    .line 1004
    :catch_99
    move-exception v0

    .line 1005
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1006
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "searchNative failed"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e
.end method

.method private process_setAudioMode(I)I
    .registers 10
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 1219
    const/4 v2, 0x0

    .line 1221
    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setAudioMode()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_31

    .line 1224
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v2, 0x3

    .line 1252
    :cond_30
    :goto_30
    return v2

    .line 1227
    :cond_31
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1230
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1231
    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1232
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1236
    and-int/lit8 p1, p1, 0x3

    .line 1239
    :try_start_4c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_5d

    move-result v3

    if-eqz v3, :cond_5b

    .line 1240
    const/4 v2, 0x0

    .line 1247
    :goto_53
    if-eqz v2, :cond_30

    .line 1248
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_30

    .line 1242
    :cond_5b
    const/4 v2, 0x2

    goto :goto_53

    .line 1243
    :catch_5d
    move-exception v0

    .line 1244
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1245
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setAudioModeNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private process_setAudioPath(I)I
    .registers 11
    .parameter "audioPath"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 1279
    const/4 v2, 0x0

    .line 1281
    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAudioPath("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v8, v3, :cond_5a

    .line 1284
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v2, 0x3

    .line 1308
    :goto_4b
    if-eqz v2, :cond_52

    .line 1309
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1313
    :cond_52
    if-nez p1, :cond_8a

    .line 1314
    const-string v3, "fm_route=disabled"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1321
    :cond_59
    :goto_59
    return v2

    .line 1287
    :cond_5a
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1289
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1290
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1291
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1292
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1296
    and-int/lit8 p1, p1, 0x3

    .line 1299
    :try_start_75
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_7f

    move-result v3

    if-eqz v3, :cond_7d

    .line 1300
    const/4 v2, 0x0

    goto :goto_4b

    .line 1302
    :cond_7d
    const/4 v2, 0x2

    goto :goto_4b

    .line 1303
    :catch_7f
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1305
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setAudioPathNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 1315
    .end local v0       #e:Ljava/lang/Exception;,
    .end local v1       #msg:Landroid/os/Message;,
    :cond_8a
    if-ne p1, v6, :cond_92

    .line 1316
    const-string v3, "fm_route=fm_speaker"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_59

    .line 1317
    :cond_92
    if-ne p1, v8, :cond_59

    .line 1318
    const-string v3, "fm_route=fm_headset"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_59
.end method

.method private process_setFMVolume(I)I
    .registers 10
    .parameter "volume"

    .prologue
    const/4 v7, 0x1

    const-string v6, "FmReceiverService"

    .line 1400
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setFMVolume()"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v2, 0x0

    .line 1405
    .local v2, returnStatus:I
    if-ltz p1, :cond_12

    const/16 v3, 0x100

    if-le p1, v3, :cond_2d

    .line 1407
    :cond_12
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volume is illegal ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v2, 0x4

    .line 1434
    :cond_2c
    :goto_2c
    return v2

    .line 1409
    :cond_2d
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_52

    .line 1410
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v2, 0x3

    goto :goto_2c

    .line 1413
    :cond_52
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1415
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1416
    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1417
    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1418
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1419
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1420
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFMVolume ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :try_start_84
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_95

    move-result v3

    if-eqz v3, :cond_93

    .line 1423
    const/4 v2, 0x0

    .line 1430
    :goto_8b
    if-eqz v2, :cond_2c

    .line 1431
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2c

    .line 1425
    :cond_93
    const/4 v2, 0x2

    goto :goto_8b

    .line 1426
    :catch_95
    move-exception v0

    .line 1427
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1428
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setFMVolumeNative failed"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b
.end method

.method private process_setLiveAudioPolling(ZI)I
    .registers 9
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const-string v5, "STATE = "

    const-string v4, "FmReceiverService"

    .line 1585
    const/4 v1, 0x0

    .line 1587
    .local v1, returnStatus:I
    const-string v2, "FmReceiverService"

    const-string/jumbo v2, "setLiveAudioPolling()"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    if-eqz p1, :cond_3c

    const/16 v2, 0xa

    if-lt p2, v2, :cond_19

    const v2, 0x186a0

    if-le p2, v2, :cond_3c

    .line 1592
    :cond_19
    const/4 v1, 0x4

    .line 1613
    :goto_1a
    const-string v2, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1615
    return v1

    .line 1593
    :cond_3c
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v2, :cond_60

    .line 1594
    const-string v2, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v1, 0x3

    goto :goto_1a

    .line 1597
    :cond_60
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1600
    :try_start_62
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6b} :catch_74

    move-result v2

    if-eqz v2, :cond_72

    .line 1602
    const/4 v1, 0x0

    .line 1610
    :goto_6f
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_1a

    .line 1604
    :cond_72
    const/4 v1, 0x2

    goto :goto_6f

    .line 1605
    :catch_74
    move-exception v2

    move-object v0, v2

    .line 1606
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1607
    const-string v2, "FmReceiverService"

    const-string/jumbo v2, "setLiveAudioPolling failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f
.end method

.method private process_setRdsMode(IIII)I
    .registers 14
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1148
    const/4 v5, 0x0

    .line 1150
    .local v5, returnStatus:I
    const-string v6, "FmReceiverService"

    const-string/jumbo v7, "setRdsMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    if-ltz p4, :cond_f

    const/16 v6, 0xff

    if-le p4, v6, :cond_11

    .line 1155
    :cond_f
    const/4 v5, 0x4

    .line 1194
    :cond_10
    :goto_10
    return v5

    .line 1156
    :cond_11
    const/4 v6, 0x2

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v7, :cond_36

    .line 1157
    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v5, 0x3

    goto :goto_10

    .line 1160
    :cond_36
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1161
    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1164
    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1165
    const/16 v6, 0x8

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 1166
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1167
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1170
    and-int/lit8 p1, p1, 0x3

    .line 1171
    and-int/lit8 p3, p3, 0x1

    .line 1172
    and-int/lit8 p2, p2, 0x7c

    .line 1173
    if-eqz p1, :cond_74

    const/4 v6, 0x1

    move v4, v6

    .line 1174
    .local v4, rdsOnNative:Z
    :goto_5e
    if-eqz p3, :cond_77

    const/4 v6, 0x1

    move v0, v6

    .line 1177
    .local v0, afOnNative:Z
    :goto_62
    and-int/lit8 v3, p1, 0x1

    .line 1181
    .local v3, rdsModeNative:I
    :try_start_64
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_7c

    move-result v6

    if-eqz v6, :cond_7a

    .line 1182
    const/4 v5, 0x0

    .line 1190
    :goto_6b
    if-eqz v5, :cond_10

    .line 1191
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 1173
    .end local v0       #afOnNative:Z,
    .end local v3       #rdsModeNative:I,
    .end local v4       #rdsOnNative:Z,
    :cond_74
    const/4 v6, 0x0

    move v4, v6

    goto :goto_5e

    .line 1174
    .restart local v4       #rdsOnNative:Z,
    :cond_77
    const/4 v6, 0x0

    move v0, v6

    goto :goto_62

    .line 1184
    .restart local v0       #afOnNative:Z,
    .restart local v3       #rdsModeNative:I,
    :cond_7a
    const/4 v5, 0x2

    goto :goto_6b

    .line 1186
    :catch_7c
    move-exception v1

    .line 1187
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FmReceiverService"

    const-string/jumbo v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    const/4 v5, 0x2

    goto :goto_6b
.end method

.method private process_setStepSize(I)I
    .registers 10
    .parameter "stepSize"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 1347
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setStepSize()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v2, 0x0

    .line 1352
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_14

    if-eqz p1, :cond_14

    .line 1354
    const/4 v2, 0x4

    .line 1380
    :cond_13
    :goto_13
    return v2

    .line 1355
    :cond_14
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_39

    .line 1356
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/4 v2, 0x3

    goto :goto_13

    .line 1359
    :cond_39
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1361
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1362
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1363
    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1364
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1365
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1368
    :try_start_52
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_63

    move-result v3

    if-eqz v3, :cond_61

    .line 1369
    const/4 v2, 0x0

    .line 1376
    :goto_59
    if-eqz v2, :cond_13

    .line 1377
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_13

    .line 1371
    :cond_61
    const/4 v2, 0x2

    goto :goto_59

    .line 1372
    :catch_63
    move-exception v0

    .line 1373
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1374
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setScanStepNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method private process_setWorldRegion(II)I
    .registers 11
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 1463
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setWorldRegion()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v2, 0x0

    .line 1468
    .local v2, returnStatus:I
    if-eqz p1, :cond_15

    if-eq p1, v6, :cond_15

    if-eq p1, v4, :cond_15

    .line 1471
    const/4 v2, 0x4

    .line 1500
    :cond_14
    :goto_14
    return v2

    .line 1472
    :cond_15
    if-eqz p2, :cond_1d

    const/16 v3, 0x40

    if-eq p2, v3, :cond_1d

    .line 1474
    const/4 v2, 0x4

    goto :goto_14

    .line 1475
    :cond_1d
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_41

    .line 1476
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v2, 0x3

    goto :goto_14

    .line 1479
    :cond_41
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1481
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1482
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1483
    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1484
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1488
    :try_start_5a
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_71

    move-result v3

    if-eqz v3, :cond_6f

    .line 1489
    const/4 v2, 0x0

    .line 1496
    :goto_67
    if-eqz v2, :cond_14

    .line 1497
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14

    .line 1491
    :cond_6f
    const/4 v2, 0x2

    goto :goto_67

    .line 1492
    :catch_71
    move-exception v3

    move-object v0, v3

    .line 1493
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1494
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "setRdsNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67
.end method

.method private process_tuneRadio(I)I
    .registers 10
    .parameter "freq"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    .line 835
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "tuneRadio()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v2, 0x0

    .line 840
    .local v2, returnStatus:I
    if-lt p1, v6, :cond_13

    const v3, 0x1869f

    if-le p1, v3, :cond_15

    .line 842
    :cond_13
    const/4 v2, 0x4

    .line 868
    :cond_14
    :goto_14
    return v2

    .line 843
    :cond_15
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3a

    .line 844
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v2, 0x3

    goto :goto_14

    .line 847
    :cond_3a
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 849
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 850
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 851
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 852
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 856
    :try_start_52
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_63

    move-result v3

    if-eqz v3, :cond_61

    .line 857
    const/4 v2, 0x0

    .line 864
    :goto_59
    if-eqz v2, :cond_14

    .line 865
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14

    .line 859
    :cond_61
    const/4 v2, 0x2

    goto :goto_59

    .line 860
    :catch_63
    move-exception v0

    .line 861
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 862
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "tuneNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method private process_turnOffRadio()I
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "FmReceiverService"

    .line 777
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "turnOffRadio()"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v2, 0x0

    .line 781
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_18

    .line 783
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    :cond_18
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 787
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 788
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 789
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 790
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 794
    const/4 v3, 0x0

    :try_start_2f
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_45

    move-result v3

    if-eqz v3, :cond_43

    .line 795
    const/4 v2, 0x0

    .line 803
    :goto_36
    if-eqz v2, :cond_3d

    .line 805
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    :cond_3d
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I

    .line 813
    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 815
    return v2

    .line 797
    :cond_43
    const/4 v2, 0x2

    goto :goto_36

    .line 798
    :catch_45
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 800
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "turnOnRadioNative failed"

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method private process_turnOnRadio(I)I
    .registers 12
    .parameter "functionalityMask"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const-string v9, "FmReceiverService"

    .line 704
    const-string v5, "FmReceiverService"

    const-string/jumbo v5, "turnOnRadio........()"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    .line 706
    const/4 v4, 0x0

    .line 707
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 708
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 711
    .local v2, requestedRdsFeatures:I
    if-eq v3, v8, :cond_23

    if-eq v3, v6, :cond_23

    if-eqz v3, :cond_23

    .line 714
    const-string v5, "FmReceiverService"

    const-string v5, "Illegal parameter"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v4, 0x4

    .line 757
    :cond_22
    :goto_22
    return v4

    .line 716
    :cond_23
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_34

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_34

    .line 718
    const-string v5, "FmReceiverService"

    const-string v5, "Illegal parameter (2)"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v4, 0x4

    goto :goto_22

    .line 720
    :cond_34
    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v5, :cond_3c

    .line 725
    invoke-direct {p0, v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_22

    .line 727
    :cond_3c
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_60

    .line 728
    const-string v5, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v4, 0x3

    goto :goto_22

    .line 731
    :cond_60
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 732
    sput v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 734
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 735
    .local v1, msg:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 736
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 737
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    and-int/lit8 p1, p1, 0x73

    .line 744
    :try_start_7a
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_8b

    move-result v5

    if-eqz v5, :cond_89

    .line 745
    const/4 v4, 0x0

    .line 753
    :goto_81
    if-eqz v4, :cond_22

    .line 754
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_22

    .line 747
    :cond_89
    const/4 v4, 0x2

    goto :goto_81

    .line 749
    :catch_8b
    move-exception v0

    .line 750
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 751
    const-string v5, "FmReceiverService"

    const-string/jumbo v5, "turnOnRadioNative failed"

    invoke-static {v9, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .registers 6
    .parameter "job"

    .prologue
    const-string v1, "FmReceiverService"

    .line 237
    const-string v0, "FmReceiverService"

    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 241
    :try_start_10
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** ****** Adding FM Job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 243
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 247
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    .line 249
    :cond_40
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .registers 9
    .parameter "audioMode"

    .prologue
    const-string/jumbo v6, "sendAudioModeEventCallback"

    const-string v5, "FmReceiverService"

    .line 1873
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendAudioModeEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 1882
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3b

    .line 1885
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 1882
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1886
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 1887
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendAudioModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 1891
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 1892
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1896
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1897
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1898
    return-void

    .line 1890
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_40} :catch_2f

    goto :goto_34
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 1860
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1861
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1862
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1863
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1864
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .registers 9
    .parameter "audioPath"

    .prologue
    const-string/jumbo v6, "sendAudioPathEventCallback"

    const-string v5, "FmReceiverService"

    .line 1917
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendAudioPathEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 1926
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3b

    .line 1929
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 1926
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1930
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 1931
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendAudioPathEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 1935
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 1936
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1940
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1941
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1943
    return-void

    .line 1934
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_40} :catch_2f

    goto :goto_34
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 1904
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1905
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1906
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1907
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1908
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .registers 9
    .parameter "nfl"

    .prologue
    const-string/jumbo v6, "sendEstimateNflEventCallback"

    const-string v5, "FmReceiverService"

    .line 2006
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendEstimateNflEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 2015
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3b

    .line 2018
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 2015
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2019
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 2020
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendEstimateNflEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 2024
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 2025
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2029
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2030
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2032
    return-void

    .line 2023
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_40} :catch_2f

    goto :goto_34
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 1993
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1994
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1995
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1996
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1997
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .registers 9
    .parameter "rssi"

    .prologue
    const-string/jumbo v6, "sendLiveAudioQualityEventCallback"

    const-string v5, "FmReceiverService"

    .line 2051
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 2061
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_35

    .line 2064
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 2061
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2065
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 2066
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendLiveAudioQualityEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 2070
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 2071
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2074
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    return-void

    .line 2069
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_35
    :try_start_35
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_3a} :catch_2f

    goto :goto_34
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore(I)V
    .registers 4
    .parameter "rssi"

    .prologue
    .line 2038
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2039
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2040
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2041
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2042
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .registers 10
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const-string v5, "FmReceiverService"

    .line 1830
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendRdsDataEventCallback"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :try_start_a
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_f} :catch_2c

    move-result v0

    .line 1841
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v0, :cond_32

    .line 1844
    :try_start_13
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1e} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1e} :catch_2c

    .line 1841
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1845
    :catch_21
    move-exception v4

    move-object v3, v4

    .line 1846
    .local v3, t:Ljava/lang/Throwable;
    :try_start_23
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_1e

    .line 1850
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2c
    move-exception v4

    move-object v1, v4

    .line 1851
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1854
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_31
    return-void

    .line 1849
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_32
    :try_start_32
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_37} :catch_2c

    goto :goto_31
.end method

.method private sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V
    .registers 6
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1813
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1814
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1815
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1816
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1817
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1818
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1819
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .registers 10
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    const-string/jumbo v6, "sendRdsModeEventCallback"

    const-string v5, "FmReceiverService"

    .line 1779
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendRdsModeEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 1790
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3b

    .line 1793
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 1790
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1794
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 1795
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 1799
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 1800
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1804
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1805
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1807
    return-void

    .line 1798
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_40} :catch_2f

    goto :goto_34
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1754
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/4 v2, 0x0

    .line 1756
    .local v2, rds:I
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v3, :cond_2a

    move v0, v5

    .line 1758
    .local v0, af:I
    :goto_f
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v3, :cond_18

    .line 1759
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v3, :cond_2d

    move v2, v5

    .line 1761
    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1762
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1763
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1764
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1765
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1768
    return-void

    .line 1756
    .end local v0       #af:I,
    .end local v1       #msg:Landroid/os/Message;,
    :cond_2a
    const/4 v3, 0x0

    move v0, v3

    goto :goto_f

    .line 1759
    .restart local v0       #af:I,
    :cond_2d
    const/4 v3, 0x2

    move v2, v3

    goto :goto_18
.end method

.method private sendSeekCompleteEventCallback(IIZI)V
    .registers 12
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"
    .parameter "iSendNextJob"

    .prologue
    const-string/jumbo v6, "sendSeekCompleteEventCallback"

    const-string v5, "FmReceiverService"

    .line 1718
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendSeekCompleteEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 1730
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3d

    .line 1733
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 1730
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1734
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 1735
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 1739
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 1740
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1744
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1746
    if-lez p4, :cond_3c

    .line 1747
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1748
    :cond_3c
    return-void

    .line 1738
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_42} :catch_2f

    goto :goto_34
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore(Z)V
    .registers 8
    .parameter "SendNextJob"

    .prologue
    const/4 v5, 0x1

    .line 1694
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1695
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x11

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1696
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZ)V

    .line 1699
    .local v1, search_st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1700
    if-ne p1, v5, :cond_21

    move v2, v5

    :goto_19
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1701
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1703
    return-void

    .line 1700
    :cond_21
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 23
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .parameter "iSendNextJob"

    .prologue
    .line 1666
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_2b

    move-result v9

    .line 1667
    .local v9, callbacks:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_7
    if-ge v12, v9, :cond_3d

    .line 1670
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_25
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_22} :catch_2b

    .line 1667
    :goto_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1674
    :catch_25
    move-exception v0

    move-object v10, v0

    .line 1675
    .local v10, e:Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_22

    .line 1679
    .end local v9       #callbacks:I,
    .end local v10       #e:Landroid/os/RemoteException;,
    .end local v12       #i:I,
    :catch_2b
    move-exception v0

    move-object v11, v0

    .line 1680
    .local v11, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1682
    .end local v11       #e_i:Ljava/lang/IllegalStateException;,
    :goto_30
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v0, :cond_37

    .line 1683
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1685
    :cond_37
    if-lez p9, :cond_3c

    .line 1686
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1687
    :cond_3c
    return-void

    .line 1678
    .restart local v9       #callbacks:I,
    .restart local v12       #i:I,
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_42} :catch_2b

    goto :goto_30
.end method

.method private sendStatusEventCallbackFromLocalStore(Z)V
    .registers 14
    .parameter "SendNextJob"

    .prologue
    const/4 v11, 0x1

    .line 1632
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1633
    .local v10, msg:Landroid/os/Message;
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1641
    .local v0, status:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    const/16 v1, 0x10

    iput v1, v10, Landroid/os/Message;->what:I

    .line 1642
    if-ne p1, v11, :cond_2c

    move v1, v11

    :goto_22
    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 1643
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1644
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1645
    return-void

    .line 1642
    :cond_2c
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private sendVolumeEventCallback(II)V
    .registers 10
    .parameter "status"
    .parameter "volume"

    .prologue
    const-string/jumbo v6, "sendVolumeEventCallback"

    const-string v5, "FmReceiverService"

    .line 2098
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendVolumeEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 2109
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3b

    .line 2112
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 2109
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2113
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 2114
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendVolumeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 2118
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 2119
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2123
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2124
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2126
    return-void

    .line 2117
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_40} :catch_2f

    goto :goto_34
.end method

.method private sendVolumeEventCallbackFromLocalStore(II)V
    .registers 5
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2081
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2082
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2083
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2084
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2085
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2086
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .registers 9
    .parameter "worldRegion"

    .prologue
    const-string/jumbo v6, "sendWorldRegionEventCallback"

    const-string v5, "FmReceiverService"

    .line 1962
    const-string v4, "FmReceiverService"

    const-string/jumbo v4, "sendWorldRegionEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :try_start_d
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_2f

    move-result v0

    .line 1971
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_3b

    .line 1974
    :try_start_16
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_21} :catch_2f

    .line 1971
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1975
    :catch_24
    move-exception v4

    move-object v3, v4

    .line 1976
    .local v3, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v4, "FmReceiverService"

    const-string/jumbo v5, "sendWorldRegionEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 1980
    .end local v0       #callbacks:I,
    .end local v2       #i:I,
    .end local v3       #t:Ljava/lang/Throwable;,
    :catch_2f
    move-exception v4

    move-object v1, v4

    .line 1981
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1985
    .end local v1       #e_i:Ljava/lang/IllegalStateException;,
    :goto_34
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1986
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1987
    return-void

    .line 1979
    .restart local v0       #callbacks:I,
    .restart local v2       #i:I,
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_40} :catch_2f

    goto :goto_34
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 1949
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1950
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1951
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1952
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1953
    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public checkForPendingResponses()V
    .registers 3

    .prologue
    .line 2132
    const-string v0, "FmReceiverService"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    .line 2134
    return-void
.end method

.method public clearAllQueue()V
    .registers 5

    .prologue
    .line 375
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 376
    :try_start_3
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_2d

    .line 377
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Clearing the queue. Present size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 379
    const/4 v1, 0x0

    sput-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    .line 381
    :cond_2d
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .registers 4
    .parameter "nflLevel"

    .prologue
    .line 1520
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1521
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1520
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 419
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 420
    return-void
.end method

.method public finish()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4e20

    .line 473
    const-string v0, "FmReceiverService"

    const-string v1, "finish - cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d8

    .line 476
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 509
    iput-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 511
    :cond_d8
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->clearAllQueue()V

    .line 512
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 513
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseService;->finish()V

    .line 514
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 468
    const-string v0, "FmReceiverService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .registers 2

    .prologue
    .line 391
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .registers 3

    .prologue
    .line 880
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 881
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 880
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteAudio(Z)I
    .registers 4
    .parameter "mute"

    .prologue
    .line 910
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 911
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 910
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRadioAfJumpEvent(III)V
    .registers 8
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 2249
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2253
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2254
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2255
    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2256
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2259
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .registers 6
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 2296
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2300
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2303
    if-nez p1, :cond_17

    .line 2304
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2305
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 2307
    :cond_17
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    .line 2308
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 2262
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2271
    if-nez p1, :cond_12

    .line 2272
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 2274
    :cond_12
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    .line 2276
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "path"

    .prologue
    .line 2279
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2288
    if-nez p1, :cond_12

    .line 2289
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 2291
    :cond_12
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    .line 2293
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "time"

    .prologue
    .line 2390
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2396
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2397
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2398
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .registers 6
    .parameter "status"
    .parameter "muted"

    .prologue
    const/4 v2, 0x1

    .line 2180
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    if-nez p1, :cond_d

    .line 2184
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 2188
    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2194
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2196
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .registers 4
    .parameter "level"

    .prologue
    .line 2426
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2432
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2435
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 2436
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 2438
    return-void
.end method

.method public onRadioOffEvent(I)V
    .registers 6
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2158
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 2162
    if-nez p1, :cond_11

    .line 2163
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 2167
    :cond_11
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2170
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1c

    .line 2171
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2175
    :cond_1c
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2177
    return-void
.end method

.method public onRadioOnEvent(I)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 2138
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    if-nez p1, :cond_d

    .line 2141
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 2145
    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2148
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_19

    .line 2149
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2153
    :cond_19
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2155
    return-void
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .registers 8
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    const-string v2, "FmReceiverService"

    .line 2311
    const-string v0, "FmReceiverService"

    const-string/jumbo v0, "onRadioRdsModeEvent()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    if-nez p1, :cond_53

    .line 2315
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 2316
    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 2317
    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 2318
    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_53
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2329
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 2330
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 2334
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .registers 6
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v2, 0x1

    .line 2338
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    if-nez p1, :cond_d

    .line 2342
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 2345
    :cond_d
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_1d

    .line 2350
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2352
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 2353
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 2358
    :goto_1c
    return-void

    .line 2356
    :cond_1d
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_1c
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    const-string v3, ","

    .line 2361
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    if-nez p1, :cond_53

    .line 2366
    packed-switch p2, :pswitch_data_60

    .line 2385
    :goto_50
    :pswitch_50
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V

    .line 2387
    :cond_53
    return-void

    .line 2368
    :pswitch_54
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_50

    .line 2371
    :pswitch_57
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_50

    .line 2374
    :pswitch_5a
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_50

    .line 2377
    :pswitch_5d
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_50

    .line 2366
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_54
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_5d
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "region"

    .prologue
    .line 2412
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2420
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 2421
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 2423
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .registers 4
    .parameter "stepSize"

    .prologue
    .line 2401
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2407
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2408
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2409
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .registers 7
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2232
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2241
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2242
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2243
    if-nez p1, :cond_1b

    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2244
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2246
    return-void

    .line 2243
    :cond_1b
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onRadioSearchEvent(II)V
    .registers 6
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2217
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2225
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2226
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2227
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2229
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .registers 7
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2199
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2208
    if-nez p1, :cond_14

    .line 2209
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2210
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2212
    :cond_14
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2214
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2441
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2449
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallbackFromLocalStore(II)V

    .line 2451
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 2534
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_10

    .line 2535
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 2536
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_12

    .line 2537
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 2549
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 2539
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 2534
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    if-eqz p1, :cond_7

    .line 396
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 398
    :cond_7
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .registers 11
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1037
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 1038
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1037
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStation(II)I
    .registers 5
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 966
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 967
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 966
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationAbort()I
    .registers 5

    .prologue
    const-string v2, "FmReceiverService"

    .line 1101
    monitor-enter p0

    :try_start_3
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "seekStationAbort()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v1, 0x3

    .line 1105
    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    .line 1107
    :try_start_16
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_21

    move-result v2

    if-eqz v2, :cond_1f

    .line 1108
    const/4 v1, 0x0

    .line 1116
    :cond_1d
    :goto_1d
    monitor-exit p0

    return v1

    .line 1110
    :cond_1f
    const/4 v1, 0x2

    goto :goto_1d

    .line 1111
    :catch_21
    move-exception v0

    .line 1112
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1113
    :try_start_23
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "searchAbortNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    .line 1101
    .end local v0       #e:Ljava/lang/Exception;,
    .end local v1       #returnStatus:I,
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 4
    .parameter "audioMode"

    .prologue
    .line 1213
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1214
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1213
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 4
    .parameter "audioPath"

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1274
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1273
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .registers 4
    .parameter "volume"

    .prologue
    .line 1395
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1396
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1395
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .registers 5
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 1578
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_LIVE_AUDIO_POLLING:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;ZI)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1579
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1578
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .registers 11
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 1142
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1141
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .registers 4
    .parameter "stepSize"

    .prologue
    .line 1340
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1341
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1340
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(II)I
    .registers 5
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 1457
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 1458
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1457
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    const-string v0, "FmReceiverService"

    .line 423
    monitor-enter p0

    :try_start_3
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_18

    .line 425
    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    .line 436
    :goto_16
    monitor-exit p0

    return-void

    .line 428
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    goto :goto_16

    .line 423
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .registers 3

    .prologue
    .line 451
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    .line 453
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 454
    return-void
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    const-string v0, "FmReceiverService"

    .line 439
    monitor-enter p0

    :try_start_3
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-nez v0, :cond_18

    .line 441
    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    .line 448
    :goto_16
    monitor-exit p0

    return-void

    .line 444
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    goto :goto_16

    .line 439
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .registers 3

    .prologue
    .line 460
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    .line 463
    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .registers 4
    .parameter "freq"

    .prologue
    .line 830
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 831
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 830
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio()I
    .registers 3

    .prologue
    .line 772
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 773
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 772
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .registers 4
    .parameter "functionalityMask"

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 700
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 699
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 402
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 404
    :cond_8
    monitor-exit p0

    return-void

    .line 401
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
