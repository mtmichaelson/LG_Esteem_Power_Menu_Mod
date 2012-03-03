.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I

.field public static final SUCCESS:I



# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Landroid/speech/tts/ITts;

.field private mITtscallback:Landroid/speech/tts/ITtsCallback;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    .line 383
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    .line 384
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 385
    const-string v0, ""

    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 386
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 387
    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 406
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 407
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 408
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 410
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    .line 411
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string/jumbo v1, "rate"

    aput-object v1, v0, v2

    .line 412
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    .line 413
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "country"

    aput-object v2, v0, v1

    .line 414
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string/jumbo v2, "variant"

    aput-object v2, v0, v1

    .line 415
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string/jumbo v2, "streamType"

    aput-object v2, v0, v1

    .line 416
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string/jumbo v2, "utteranceId"

    aput-object v2, v0, v1

    .line 417
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "engine"

    aput-object v2, v0, v1

    .line 418
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string/jumbo v2, "pitch"

    aput-object v2, v0, v1

    .line 423
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v3, v0, v1

    .line 424
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, ""

    aput-object v3, v0, v4

    .line 425
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v3, v0, v1

    .line 426
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v3, v0, v1

    .line 427
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 429
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v3, v0, v1

    .line 430
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v3, v0, v1

    .line 431
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "100"

    aput-object v2, v0, v1

    .line 433
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 434
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object p1
.end method

.method private initTts()V
    .registers 7

    .prologue
    const-string v5, "TextToSpeech.java"

    .line 438
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 441
    new-instance v2, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 465
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.TTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 468
    .local v0, bound:Z
    if-nez v0, :cond_35

    .line 469
    const-string v2, "TextToSpeech.java"

    const-string v2, "initTts() failed to bind to service"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v2, :cond_34

    .line 471
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 478
    :cond_34
    :goto_34
    return-void

    .line 475
    :cond_35
    const-string v2, "TextToSpeech.java"

    const-string v2, "initTts() successfully bound to service"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private resetCachedParams()V
    .registers 4

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1290
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1291
    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 675
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 677
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 701
    :goto_d
    return v1

    .line 680
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 681
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 682
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 684
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 687
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 701
    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 688
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 690
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 692
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 693
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 702
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 694
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 696
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 698
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 699
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 628
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 630
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 654
    :goto_d
    return v1

    .line 633
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 634
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 635
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 639
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 640
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 654
    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 641
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 643
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 645
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 646
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 655
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 647
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 649
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 651
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 652
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 571
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 573
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 597
    :goto_d
    return v1

    .line 576
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 577
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 578
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 582
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 583
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 597
    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 584
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 586
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 588
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 589
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 598
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 590
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 592
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 594
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 595
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 524
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 526
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 550
    :goto_d
    return v1

    .line 529
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 530
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 531
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 535
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 536
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 550
    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 537
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 539
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 541
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 542
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 551
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 543
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 545
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 547
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 548
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public areDefaultsEnforced()Z
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - areDefaultsEnforced"

    .line 1430
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, defaultsEnforced:Z
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1433
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3f

    move v1, v0

    .line 1456
    .end local v0       #defaultsEnforced:Z,
    .local v1, defaultsEnforced:I
    :goto_c
    return v1

    .line 1436
    .end local v1       #defaultsEnforced:I,
    .restart local v0       #defaultsEnforced:Z,
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->areDefaultsEnforced()Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_12} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_42

    move-result v0

    .line 1456
    :try_start_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_3f

    move v1, v0

    .restart local v1       #defaultsEnforced:I,
    goto :goto_c

    .line 1437
    .end local v1       #defaultsEnforced:I,
    :catch_16
    move-exception v4

    move-object v2, v4

    .line 1439
    .local v2, e:Landroid/os/RemoteException;
    :try_start_18
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1441
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1442
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_56

    .line 1456
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3f

    .end local v2       #e:Landroid/os/RemoteException;,
    :goto_29
    move v1, v0

    .restart local v1       #defaultsEnforced:I,
    goto :goto_c

    .line 1443
    .end local v1       #defaultsEnforced:I,
    :catch_2b
    move-exception v4

    move-object v2, v4

    .line 1445
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_2d
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1447
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1448
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_56

    .line 1456
    :try_start_3d
    monitor-exit v3

    goto :goto_29

    .line 1458
    .end local v2       #e:Ljava/lang/NullPointerException;,
    :catchall_3f
    move-exception v4

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v4

    .line 1449
    :catch_42
    move-exception v4

    move-object v2, v4

    .line 1451
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_44
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1453
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1454
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_56

    .line 1456
    :try_start_54
    monitor-exit v3

    goto :goto_29

    .end local v2       #e:Ljava/lang/IllegalStateException;,
    :catchall_56
    move-exception v4

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_3f

    goto :goto_29
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    .line 1391
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1392
    :try_start_5
    const-string v1, ""

    .line 1393
    .local v1, engineName:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_e

    .line 1394
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2b

    move-object v2, v1

    .line 1417
    .end local v1       #engineName:Ljava/lang/String;,
    .local v2, engineName:Ljava/lang/String;
    :goto_d
    return-object v2

    .line 1397
    .end local v2       #engineName:Ljava/lang/String;,
    .restart local v1       #engineName:Ljava/lang/String;,
    :cond_e
    :try_start_e
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->getDefaultEngine()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_13} :catch_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_42

    move-result-object v1

    .line 1417
    :try_start_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_2b

    :goto_15
    move-object v2, v1

    .end local v1       #engineName:Ljava/lang/String;,
    .restart local v2       #engineName:Ljava/lang/String;,
    goto :goto_d

    .line 1398
    .end local v2       #engineName:Ljava/lang/String;,
    .restart local v1       #engineName:Ljava/lang/String;,
    :catch_17
    move-exception v4

    move-object v0, v4

    .line 1400
    .local v0, e:Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1402
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1403
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_56

    .line 1417
    :try_start_29
    monitor-exit v3

    goto :goto_15

    .line 1419
    .end local v0       #e:Landroid/os/RemoteException;,
    .end local v1       #engineName:Ljava/lang/String;,
    :catchall_2b
    move-exception v4

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v4

    .line 1404
    .restart local v1       #engineName:Ljava/lang/String;,
    :catch_2e
    move-exception v4

    move-object v0, v4

    .line 1406
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_30
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1408
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1409
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_56

    .line 1417
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2b

    goto :goto_15

    .line 1410
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_42
    move-exception v4

    move-object v0, v4

    .line 1412
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_44
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1414
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1415
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_56

    .line 1417
    :try_start_54
    monitor-exit v3

    goto :goto_15

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_56
    move-exception v4

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_2b

    goto :goto_15
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    const-string v2, "TextToSpeech.java - getLanguage"

    .line 1133
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1134
    :try_start_8
    iget-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v3, :cond_f

    .line 1135
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_78

    move-object v2, v8

    .line 1170
    :goto_e
    return-object v2

    .line 1139
    :cond_f
    :try_start_f
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_39

    .line 1140
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v3}, Landroid/speech/tts/ITts;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_36

    array-length v3, v1

    if-ne v3, v5, :cond_36

    .line 1142
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_33} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_33} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_33} :catch_7b

    :try_start_33
    monitor-exit v2

    move-object v2, v3

    goto :goto_e

    .line 1144
    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_78

    move-object v2, v8

    goto :goto_e

    .line 1147
    .end local v1       #locStrings:[Ljava/lang/String;,
    :cond_39
    :try_start_39
    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4d} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_4d} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_4d} :catch_7b

    :try_start_4d
    monitor-exit v2

    move-object v2, v3

    goto :goto_e

    .line 1151
    :catch_50
    move-exception v3

    move-object v0, v3

    .line 1153
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1155
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1156
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 1170
    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_62
    monitor-exit v2

    move-object v2, v8

    goto :goto_e

    .line 1157
    :catch_65
    move-exception v3

    move-object v0, v3

    .line 1159
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1161
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1162
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_62

    .line 1171
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catchall_78
    move-exception v3

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_4d .. :try_end_7a} :catchall_78

    throw v3

    .line 1163
    :catch_7b
    move-exception v3

    move-object v0, v3

    .line 1165
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7d
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1167
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1168
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_78

    goto :goto_62
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 11
    .parameter "loc"

    .prologue
    const-string v3, "TextToSpeech.java - isLanguageAvailable"

    .line 1185
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1186
    const/4 v1, -0x2

    .line 1187
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1188
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_38

    move v2, v1

    .line 1212
    .end local v1       #result:I,
    .local v2, result:I
    :goto_c
    return v2

    .line 1191
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_63
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_20} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_20} :catch_4f

    move-result v1

    .line 1212
    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_38

    :goto_22
    move v2, v1

    .end local v1       #result:I,
    .restart local v2       #result:I,
    goto :goto_c

    .line 1193
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :catch_24
    move-exception v4

    move-object v0, v4

    .line 1195
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1197
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1198
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_63

    .line 1212
    :try_start_36
    monitor-exit v3

    goto :goto_22

    .line 1214
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_38
    move-exception v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v4

    .line 1199
    :catch_3b
    move-exception v4

    move-object v0, v4

    .line 1201
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3d
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1203
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1204
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_63

    .line 1212
    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_38

    goto :goto_22

    .line 1205
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_4f
    move-exception v4

    move-object v0, v4

    .line 1207
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_51
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1209
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1210
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_63

    .line 1212
    :try_start_61
    monitor-exit v3

    goto :goto_22

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_63
    move-exception v4

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_38

    goto :goto_22
.end method

.method public isSpeaking()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - isSpeaking"

    .line 893
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_6
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_d

    .line 895
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3e

    move v1, v4

    .line 918
    :goto_c
    return v1

    .line 898
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v2}, Landroid/speech/tts/ITts;->isSpeaking()Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_12} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_41

    move-result v2

    :try_start_13
    monitor-exit v1

    move v1, v2

    goto :goto_c

    .line 899
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 901
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 903
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 904
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 918
    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_28
    monitor-exit v1

    move v1, v4

    goto :goto_c

    .line 905
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 907
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 909
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 910
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 919
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 911
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 913
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 915
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 916
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - playEarcon"

    .line 791
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 792
    const/4 v2, -0x1

    .line 793
    .local v2, result:I
    :try_start_6
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_d

    .line 794
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_5d

    move v3, v2

    .line 828
    .end local v2       #result:I,
    .local v3, result:I
    :goto_c
    return v3

    .line 797
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :cond_d
    if-eqz p3, :cond_37

    :try_start_f
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_37

    .line 798
    const-string/jumbo v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 800
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 802
    :cond_26
    const-string/jumbo v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #extra:Ljava/lang/String;,
    check-cast v1, Ljava/lang/String;

    .line 803
    .restart local v1       #extra:Ljava/lang/String;,
    if-eqz v1, :cond_37

    .line 804
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 807
    .end local v1       #extra:Ljava/lang/String;,
    :cond_37
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_8e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3f} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3f} :catch_60
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_3f} :catch_77

    move-result v2

    .line 827
    :try_start_40
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 828
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_5d

    :goto_44
    move v3, v2

    .end local v2       #result:I,
    .restart local v3       #result:I,
    goto :goto_c

    .line 808
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :catch_46
    move-exception v5

    move-object v0, v5

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    :try_start_48
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 812
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 813
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_8e

    .line 827
    :try_start_58
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 828
    monitor-exit v4

    goto :goto_44

    .line 830
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_5d
    move-exception v5

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_5d

    throw v5

    .line 814
    :catch_60
    move-exception v5

    move-object v0, v5

    .line 816
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_62
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 818
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 819
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_8e

    .line 827
    :try_start_72
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 828
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_5d

    goto :goto_44

    .line 820
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_77
    move-exception v5

    move-object v0, v5

    .line 822
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_79
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 824
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 825
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_8e

    .line 827
    :try_start_89
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 828
    monitor-exit v4

    goto :goto_44

    .line 827
    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_8e
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 828
    monitor-exit v4
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_5d

    goto :goto_44
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .registers 16
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TextToSpeech.java - playSilence"

    .line 849
    iget-object v10, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v10

    .line 850
    const/4 v8, -0x1

    .line 851
    .local v8, result:I
    :try_start_6
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v0, :cond_d

    .line 852
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_49

    move v9, v8

    .line 881
    .end local v8       #result:I,
    .local v9, result:I
    :goto_c
    return v9

    .line 855
    .end local v9       #result:I,
    .restart local v8       #result:I,
    :cond_d
    if-eqz p4, :cond_26

    :try_start_f
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 856
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 857
    .local v7, extra:Ljava/lang/String;
    if-eqz v7, :cond_26

    .line 858
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v7, v0, v1

    .line 861
    .end local v7       #extra:Ljava/lang/String;,
    :cond_26
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITts;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_74
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_31} :catch_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_31} :catch_60

    move-result v8

    .line 881
    :try_start_32
    monitor-exit v10
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_49

    :goto_33
    move v9, v8

    .end local v8       #result:I,
    .restart local v9       #result:I,
    goto :goto_c

    .line 862
    .end local v9       #result:I,
    .restart local v8       #result:I,
    :catch_35
    move-exception v0

    move-object v6, v0

    .line 864
    .local v6, e:Landroid/os/RemoteException;
    :try_start_37
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 867
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_74

    .line 881
    :try_start_47
    monitor-exit v10

    goto :goto_33

    .line 883
    .end local v6       #e:Landroid/os/RemoteException;,
    :catchall_49
    move-exception v0

    monitor-exit v10
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_49

    throw v0

    .line 868
    :catch_4c
    move-exception v0

    move-object v6, v0

    .line 870
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_4e
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 873
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_74

    .line 881
    :try_start_5e
    monitor-exit v10
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_49

    goto :goto_33

    .line 874
    .end local v6       #e:Ljava/lang/NullPointerException;,
    :catch_60
    move-exception v0

    move-object v6, v0

    .line 876
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_62
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 879
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_74

    .line 881
    :try_start_72
    monitor-exit v10

    goto :goto_33

    .end local v6       #e:Ljava/lang/IllegalStateException;,
    :catchall_74
    move-exception v0

    monitor-exit v10
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_49

    goto :goto_33
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .registers 8
    .parameter "enginePackageName"

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    .line 1350
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1351
    const/4 v1, -0x1

    .line 1352
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1353
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_32

    move v2, v1

    .line 1379
    .end local v1       #result:I,
    .local v2, result:I
    :goto_c
    return v2

    .line 1356
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4, p1}, Landroid/speech/tts/ITts;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v1

    .line 1357
    if-nez v1, :cond_1b

    .line 1358
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object p1, v4, v5
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1b} :catch_35
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1b} :catch_49

    .line 1379
    :cond_1b
    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_32

    :goto_1c
    move v2, v1

    .end local v1       #result:I,
    .restart local v2       #result:I,
    goto :goto_c

    .line 1360
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :catch_1e
    move-exception v4

    move-object v0, v4

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    :try_start_20
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1364
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1365
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_5d

    .line 1379
    :try_start_30
    monitor-exit v3

    goto :goto_1c

    .line 1381
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v4

    .line 1366
    :catch_35
    move-exception v4

    move-object v0, v4

    .line 1368
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_37
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1370
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1371
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_5d

    .line 1379
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_32

    goto :goto_1c

    .line 1372
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_49
    move-exception v4

    move-object v0, v4

    .line 1374
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4b
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1376
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1377
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_5d

    .line 1379
    :try_start_5b
    monitor-exit v3

    goto :goto_1c

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_5d
    move-exception v4

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_32

    goto :goto_1c
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .registers 12
    .parameter "loc"

    .prologue
    const-string v6, ""

    const-string v6, "TextToSpeech.java - setLanguage"

    .line 1071
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1072
    const/4 v3, -0x2

    .line 1073
    .local v3, result:I
    :try_start_8
    iget-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v7, :cond_f

    .line 1074
    monitor-exit v6

    move v4, v3

    .line 1120
    .end local v3       #result:I,
    .local v4, result:I
    :goto_e
    return v4

    .line 1076
    .end local v4       #result:I,
    .restart local v3       #result:I,
    :cond_f
    if-nez p1, :cond_14

    .line 1077
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_5e

    move v4, v3

    .end local v3       #result:I,
    .restart local v4       #result:I,
    goto :goto_e

    .line 1080
    .end local v4       #result:I,
    .restart local v3       #result:I,
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 1087
    .local v5, variant:Ljava/lang/String;
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v7, v2, v0, v5, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1088
    if-ltz v3, :cond_3f

    .line 1089
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v2, v7, v8

    .line 1090
    const/4 v7, 0x1

    if-lt v3, v7, :cond_42

    .line 1091
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v0, v7, v8

    .line 1095
    :goto_37
    const/4 v7, 0x2

    if-lt v3, v7, :cond_61

    .line 1096
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v5, v7, v8
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3f} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_3f} :catch_69
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_3f} :catch_7d

    .line 1120
    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_5e

    .end local v0       #country:Ljava/lang/String;,
    .end local v2       #language:Ljava/lang/String;,
    .end local v5       #variant:Ljava/lang/String;,
    :goto_40
    move v4, v3

    .end local v3       #result:I,
    .restart local v4       #result:I,
    goto :goto_e

    .line 1093
    .end local v4       #result:I,
    .restart local v0       #country:Ljava/lang/String;,
    .restart local v2       #language:Ljava/lang/String;,
    .restart local v3       #result:I,
    .restart local v5       #variant:Ljava/lang/String;,
    :cond_42
    :try_start_42
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_49} :catch_69
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_49} :catch_7d

    goto :goto_37

    .line 1101
    .end local v0       #country:Ljava/lang/String;,
    .end local v2       #language:Ljava/lang/String;,
    .end local v5       #variant:Ljava/lang/String;,
    :catch_4a
    move-exception v7

    move-object v1, v7

    .line 1103
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4c
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1105
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1106
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_91

    .line 1120
    :try_start_5c
    monitor-exit v6

    goto :goto_40

    .line 1122
    .end local v1       #e:Landroid/os/RemoteException;,
    :catchall_5e
    move-exception v7

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_5e

    throw v7

    .line 1098
    .restart local v0       #country:Ljava/lang/String;,
    .restart local v2       #language:Ljava/lang/String;,
    .restart local v5       #variant:Ljava/lang/String;,
    :cond_61
    :try_start_61
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_68} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_61 .. :try_end_68} :catch_69
    .catch Ljava/lang/IllegalStateException; {:try_start_61 .. :try_end_68} :catch_7d

    goto :goto_3f

    .line 1107
    .end local v0       #country:Ljava/lang/String;,
    .end local v2       #language:Ljava/lang/String;,
    .end local v5       #variant:Ljava/lang/String;,
    :catch_69
    move-exception v7

    move-object v1, v7

    .line 1109
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_6b
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1111
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1112
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7b
    .catchall {:try_start_6b .. :try_end_7b} :catchall_91

    .line 1120
    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_5e

    goto :goto_40

    .line 1113
    .end local v1       #e:Ljava/lang/NullPointerException;,
    :catch_7d
    move-exception v7

    move-object v1, v7

    .line 1115
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_7f
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "IllegalStateException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1117
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1118
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_91

    .line 1120
    :try_start_8f
    monitor-exit v6

    goto :goto_40

    .end local v1       #e:Ljava/lang/IllegalStateException;,
    :catchall_91
    move-exception v7

    monitor-exit v6
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_5e

    goto :goto_40
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 9
    .parameter "listener"

    .prologue
    const-string v3, "TextToSpeech.java - registerCallback"

    .line 1303
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1304
    const/4 v1, -0x1

    .line 1305
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1306
    monitor-exit v3

    move v2, v1

    .line 1336
    .end local v1       #result:I,
    .local v2, result:I
    :goto_c
    return v2

    .line 1308
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :cond_d
    new-instance v4, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v4, p0, p1}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_35

    .line 1316
    :try_start_14
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1d} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1d} :catch_4c

    move-result v1

    .line 1336
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_35

    :goto_1f
    move v2, v1

    .end local v1       #result:I,
    .restart local v2       #result:I,
    goto :goto_c

    .line 1317
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :catch_21
    move-exception v4

    move-object v0, v4

    .line 1319
    .local v0, e:Landroid/os/RemoteException;
    :try_start_23
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1321
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1322
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_60

    .line 1336
    :try_start_33
    monitor-exit v3

    goto :goto_1f

    .line 1338
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_35
    move-exception v4

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v4

    .line 1323
    :catch_38
    move-exception v4

    move-object v0, v4

    .line 1325
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3a
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1327
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1328
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_60

    .line 1336
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_35

    goto :goto_1f

    .line 1329
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_4c
    move-exception v4

    move-object v0, v4

    .line 1331
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4e
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1333
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1334
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_60

    .line 1336
    :try_start_5e
    monitor-exit v3

    goto :goto_1f

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_60
    move-exception v4

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_35

    goto :goto_1f
.end method

.method public setPitch(F)I
    .registers 10
    .parameter "pitch"

    .prologue
    const-string v4, "TextToSpeech.java - setPitch"

    .line 1024
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1025
    const/4 v2, -0x1

    .line 1026
    .local v2, result:I
    :try_start_6
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_d

    .line 1027
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_38

    move v3, v2

    .line 1050
    .end local v2       #result:I,
    .local v3, result:I
    :goto_c
    return v3

    .line 1032
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :cond_d
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_21

    .line 1033
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 1034
    .local v1, p:I
    :try_start_16
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_4f
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_3b

    .line 1035
    const/4 v2, 0x0

    .line 1050
    .end local v1       #p:I,
    :cond_21
    :try_start_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_38

    :goto_22
    move v3, v2

    .end local v2       #result:I,
    .restart local v3       #result:I,
    goto :goto_c

    .line 1037
    .end local v3       #result:I,
    .restart local v1       #p:I,
    .restart local v2       #result:I,
    :catch_24
    move-exception v5

    move-object v0, v5

    .line 1039
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_26
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1041
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1042
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_4f

    .line 1050
    :try_start_36
    monitor-exit v4

    goto :goto_22

    .line 1052
    .end local v0       #e:Ljava/lang/NullPointerException;,
    .end local v1       #p:I,
    :catchall_38
    move-exception v5

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v5

    .line 1043
    .restart local v1       #p:I,
    :catch_3b
    move-exception v5

    move-object v0, v5

    .line 1045
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3d
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1047
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1048
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4f

    .line 1050
    :try_start_4d
    monitor-exit v4

    goto :goto_22

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_4f
    move-exception v5

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_38

    goto :goto_22
.end method

.method public setSpeechRate(F)I
    .registers 11
    .parameter "speechRate"

    .prologue
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - setSpeechRate"

    .line 975
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 976
    const/4 v2, -0x1

    .line 977
    .local v2, result:I
    :try_start_7
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_e

    .line 978
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3d

    move v3, v2

    .line 1005
    .end local v2       #result:I,
    .local v3, result:I
    :goto_d
    return v3

    .line 981
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :cond_e
    cmpl-float v5, p1, v8

    if-lez v5, :cond_24

    .line 982
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 983
    .local v1, rate:I
    :try_start_16
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_54
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1f} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1f} :catch_40

    .line 986
    cmpl-float v5, p1, v8

    if-lez v5, :cond_27

    .line 987
    const/4 v2, 0x0

    .line 1005
    .end local v1       #rate:I,
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_3d

    :goto_25
    move v3, v2

    .end local v2       #result:I,
    .restart local v3       #result:I,
    goto :goto_d

    .line 989
    .end local v3       #result:I,
    .restart local v1       #rate:I,
    .restart local v2       #result:I,
    :cond_27
    const/4 v2, -0x1

    goto :goto_24

    .line 992
    :catch_29
    move-exception v5

    move-object v0, v5

    .line 994
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2b
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 996
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 997
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_54

    .line 1005
    :try_start_3b
    monitor-exit v4

    goto :goto_25

    .line 1007
    .end local v0       #e:Ljava/lang/NullPointerException;,
    .end local v1       #rate:I,
    :catchall_3d
    move-exception v5

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v5

    .line 998
    .restart local v1       #rate:I,
    :catch_40
    move-exception v5

    move-object v0, v5

    .line 1000
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_42
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1002
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1003
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_54

    .line 1005
    :try_start_52
    monitor-exit v4

    goto :goto_25

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_54
    move-exception v5

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_3d

    goto :goto_25
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 493
    :goto_7
    return-void

    .line 489
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - speak"

    .line 725
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 726
    const/4 v2, -0x1

    .line 727
    .local v2, result:I
    :try_start_6
    const-string v5, "TextToSpeech.java - speak"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "speak text of length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_32

    .line 729
    const-string v5, "TextToSpeech.java - speak"

    const-string/jumbo v6, "service isn\'t started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_93

    move v3, v2

    .line 768
    .end local v2       #result:I,
    .local v3, result:I
    :goto_31
    return v3

    .line 733
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :cond_32
    if-eqz p3, :cond_6c

    :try_start_34
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6c

    .line 734
    const-string/jumbo v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_4b

    .line 736
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 738
    :cond_4b
    const-string/jumbo v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #extra:Ljava/lang/String;,
    check-cast v1, Ljava/lang/String;

    .line 739
    .restart local v1       #extra:Ljava/lang/String;,
    if-eqz v1, :cond_5c

    .line 740
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 742
    :cond_5c
    const-string v5, "engine"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #extra:Ljava/lang/String;,
    check-cast v1, Ljava/lang/String;

    .line 743
    .restart local v1       #extra:Ljava/lang/String;,
    if-eqz v1, :cond_6c

    .line 744
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .line 747
    .end local v1       #extra:Ljava/lang/String;,
    :cond_6c
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_34 .. :try_end_75} :catchall_c4
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_75} :catch_7c
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_75} :catch_96
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_75} :catch_ad

    move-result v2

    .line 767
    :try_start_76
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 768
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_93

    :goto_7a
    move v3, v2

    .end local v2       #result:I,
    .restart local v3       #result:I,
    goto :goto_31

    .line 748
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :catch_7c
    move-exception v5

    move-object v0, v5

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    :try_start_7e
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 752
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 753
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_c4

    .line 767
    :try_start_8e
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 768
    monitor-exit v4

    goto :goto_7a

    .line 770
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_93
    move-exception v5

    monitor-exit v4
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_93

    throw v5

    .line 754
    :catch_96
    move-exception v5

    move-object v0, v5

    .line 756
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_98
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 758
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 759
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_a8
    .catchall {:try_start_98 .. :try_end_a8} :catchall_c4

    .line 767
    :try_start_a8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 768
    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_93

    goto :goto_7a

    .line 760
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_ad
    move-exception v5

    move-object v0, v5

    .line 762
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_af
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 764
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 765
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_c4

    .line 767
    :try_start_bf
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 768
    monitor-exit v4

    goto :goto_7a

    .line 767
    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_c4
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 768
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_93

    goto :goto_7a
.end method

.method public stop()I
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - stop"

    .line 930
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 931
    const/4 v1, -0x1

    .line 932
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 933
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2c

    move v2, v1

    .line 956
    .end local v1       #result:I,
    .local v2, result:I
    :goto_c
    return v2

    .line 936
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/speech/tts/ITts;->stop(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_14} :catch_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_43

    move-result v1

    .line 956
    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2c

    :goto_16
    move v2, v1

    .end local v1       #result:I,
    .restart local v2       #result:I,
    goto :goto_c

    .line 937
    .end local v2       #result:I,
    .restart local v1       #result:I,
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 939
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 941
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 942
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_57

    .line 956
    :try_start_2a
    monitor-exit v3

    goto :goto_16

    .line 958
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_2c
    move-exception v4

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v4

    .line 943
    :catch_2f
    move-exception v4

    move-object v0, v4

    .line 945
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_31
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 947
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 948
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_57

    .line 956
    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2c

    goto :goto_16

    .line 949
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_43
    move-exception v4

    move-object v0, v4

    .line 951
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 953
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 954
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_57

    .line 956
    :try_start_55
    monitor-exit v3

    goto :goto_16

    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_57
    move-exception v4

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_2c

    goto :goto_16
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 13
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - synthesizeToFile"

    .line 1235
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1236
    const/4 v2, -0x1

    .line 1237
    .local v2, result:I
    :try_start_7
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "synthesizeToFile text of length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_33

    .line 1240
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string/jumbo v6, "service isn\'t started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_89

    move v3, v2

    .line 1277
    .end local v2       #result:I,
    .local v3, result:I
    :goto_32
    return v3

    .line 1244
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :cond_33
    if-eqz p2, :cond_5c

    :try_start_35
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 1246
    const-string/jumbo v5, "utteranceId"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1247
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_4c

    .line 1248
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 1250
    :cond_4c
    const-string v5, "engine"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #extra:Ljava/lang/String;,
    check-cast v1, Ljava/lang/String;

    .line 1251
    .restart local v1       #extra:Ljava/lang/String;,
    if-eqz v1, :cond_5c

    .line 1252
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .line 1255
    .end local v1       #extra:Ljava/lang/String;,
    :cond_5c
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, p3}, Landroid/speech/tts/ITts;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_65
    .catchall {:try_start_35 .. :try_end_65} :catchall_ba
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_65} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_65} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_65} :catch_a3

    move-result v5

    if-eqz v5, :cond_6f

    move v2, v8

    .line 1276
    :goto_69
    :try_start_69
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1277
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_89

    :goto_6d
    move v3, v2

    .end local v2       #result:I,
    .restart local v3       #result:I,
    goto :goto_32

    .line 1255
    .end local v3       #result:I,
    .restart local v2       #result:I,
    :cond_6f
    const/4 v5, -0x1

    move v2, v5

    goto :goto_69

    .line 1257
    :catch_72
    move-exception v5

    move-object v0, v5

    .line 1259
    .local v0, e:Landroid/os/RemoteException;
    :try_start_74
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1261
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1262
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_ba

    .line 1276
    :try_start_84
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1277
    monitor-exit v4

    goto :goto_6d

    .line 1279
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_89
    move-exception v5

    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_89

    throw v5

    .line 1263
    :catch_8c
    move-exception v5

    move-object v0, v5

    .line 1265
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_8e
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1267
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1268
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_ba

    .line 1276
    :try_start_9e
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1277
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_89

    goto :goto_6d

    .line 1269
    .end local v0       #e:Ljava/lang/NullPointerException;,
    :catch_a3
    move-exception v5

    move-object v0, v5

    .line 1271
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_a5
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1273
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1274
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_ba

    .line 1276
    :try_start_b5
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1277
    monitor-exit v4

    goto :goto_6d

    .line 1276
    .end local v0       #e:Ljava/lang/IllegalStateException;,
    :catchall_ba
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1277
    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_89

    goto :goto_6d
.end method
