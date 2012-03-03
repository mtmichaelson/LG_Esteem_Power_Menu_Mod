.class public Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "Andy_KeyguardUpdateMonitor.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "Andy_KeyguardUpdateMonitor"

.field private static volatile andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;



# instance fields
.field private final DEFAULT_VALUE:I

.field private final EVENT_BLUETOOTH:I

.field private final EVENT_FMRADIO:I

.field private final EVENT_MISSED_CALL:I

.field private final EVENT_MUSICPLAY:I

.field private final EVENT_UNREAD_EMAIL:I

.field private final EVENT_UNREAD_MMS:I

.field private final EVENT_UNREAD_VMAIL:I

.field private final NO_EVENT:Ljava/lang/String;

.field private mBluetoothInfo:Ljava/lang/String;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentIntents:[Landroid/app/PendingIntent;

.field private mCurrentEvent:I

.field private mDetailInfo1:Ljava/lang/String;

.field private mDetailInfo2:Ljava/lang/String;

.field private mDetailInfoLine1:[Ljava/lang/String;

.field private mDetailInfoLine2:[Ljava/lang/String;

.field private mEvent:Ljava/lang/String;

.field private mEventTextNumber:[I

.field private mFMPlayInfo:Ljava/lang/String;

.field private mLastEvent:I

.field private mMusicAlbum:Ljava/lang/String;

.field private mMusicArtist:Ljava/lang/String;

.field private mMusicPlayInfo:Ljava/lang/String;

.field private mMusicState:I

.field private mMusicTrack:Ljava/lang/String;

.field private mNotificationBoxIntent:Landroid/app/PendingIntent;

.field private mPkg:I



# direct methods
.method private constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_MISSED_CALL:I

    .line 54
    iput v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_UNREAD_MMS:I

    .line 55
    iput v4, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_UNREAD_EMAIL:I

    .line 56
    iput v5, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_UNREAD_VMAIL:I

    .line 57
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_FMRADIO:I

    .line 58
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_MUSICPLAY:I

    .line 59
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->EVENT_BLUETOOTH:I

    .line 61
    iput v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->DEFAULT_VALUE:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->NO_EVENT:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntent:Landroid/app/PendingIntent;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine1:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine2:[Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/app/PendingIntent;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntents:[Landroid/app/PendingIntent;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    .line 81
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicPlayInfo:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mFMPlayInfo:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mBluetoothInfo:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    .line 85
    iput v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mLastEvent:I

    .line 93
    iput v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicState:I

    .line 39
    return-void

    .line 80
    nop

    :array_60
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkFmRadioRDS(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "rds"

    .prologue
    const-string v1, ""

    .line 146
    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 147
    :cond_22
    const-string v0, ""

    move-object v0, v1

    .line 149
    :goto_25
    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method private getBGMEvent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const-string v5, "track"

    const-string v4, " - "

    .line 165
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, state:I
    const-string v1, "Andy_KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBGMEvent] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicState:I

    .line 171
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicArtist:Ljava/lang/String;

    .line 172
    const-string v1, "track"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicTrack:Ljava/lang/String;

    .line 173
    const-string v1, "album"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicAlbum:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicTrack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    .line 177
    const-string v1, "track"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_72

    const-string v1, "unknown"

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    .line 182
    :cond_72
    const/16 v1, 0xfa7

    iput v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    .line 183
    return-void
.end method

.method private getEventData(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 134
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    .line 135
    const-string v0, "pkg"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    .line 139
    const-string v0, "contentintent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntent:Landroid/app/PendingIntent;

    .line 140
    const-string v0, "details_line1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfo1:Ljava/lang/String;

    .line 141
    const-string v0, "details_line2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfo2:Ljava/lang/String;

    .line 143
    return-void
.end method

.method private getFmRadioEvent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    const-string v2, ""

    .line 154
    const-string v1, "play"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, frequency:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PTY"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->checkFmRadioRDS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->checkFmRadioRDS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    .line 160
    :goto_3b
    const-string v1, "pkg"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    .line 161
    return-void

    .line 159
    :cond_45
    const-string v1, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    goto :goto_3b
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    if-nez v0, :cond_13

    .line 43
    const-class v0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    monitor-enter v0

    .line 44
    :try_start_7
    sget-object v1, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    if-nez v1, :cond_12

    .line 45
    new-instance v1, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;-><init>()V

    sput-object v1, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    .line 47
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 49
    :cond_13
    sget-object v0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    return-object v0

    .line 47
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getPlayEndEvent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 187
    const/16 v0, 0xfa7

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public call_addfilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 97
    const-string v0, "lge.intent.action.MISSED_CALLS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v0, "lge.intent.action.UNREAD_MESSAGES"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v0, "lge.intent.action.UNREAD_EMAILS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "lge.intent.action.UNREAD_VOICEMAILS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "lge.intent.action.FMRADIO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v0, "lge.intent.action.BGM"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "com.android.music.playbackcomplete"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method getBluetoothInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mBluetoothInfo:Ljava/lang/String;

    return-object v0
.end method

.method getEventDetailsLine1(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine1:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine1:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 283
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getEventDetailsLine2(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine2:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine2:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 289
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getEventTextNumber()[I
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    return-object v0
.end method

.method getFMPlayInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mFMPlayInfo:Ljava/lang/String;

    return-object v0
.end method

.method getLastEvent()I
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mLastEvent:I

    return v0
.end method

.method getMusicAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicAlbum:Ljava/lang/String;

    return-object v0
.end method

.method getMusicArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicArtist:Ljava/lang/String;

    return-object v0
.end method

.method getMusicPlayInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicPlayInfo:Ljava/lang/String;

    return-object v0
.end method

.method getMusicState()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicState:I

    return v0
.end method

.method getMusicTrack()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicTrack:Ljava/lang/String;

    return-object v0
.end method

.method public handleEventDisplay()V
    .registers 5

    .prologue
    const-string v1, "No event here. skip refresh event"

    const-string v1, "Andy_KeyguardUpdateMonitor"

    .line 193
    iget v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    packed-switch v1, :pswitch_data_8e

    .line 235
    :goto_9
    return-void

    .line 200
    :pswitch_a
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 201
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    aget v1, v1, v2

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    iput v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mLastEvent:I

    .line 204
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntents:[Landroid/app/PendingIntent;

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntent:Landroid/app/PendingIntent;

    aput-object v3, v1, v2

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine1:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfo1:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfoLine2:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mDetailInfo2:Ljava/lang/String;

    aput-object v3, v1, v2
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_45
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_3a} :catch_3b

    goto :goto_9

    .line 208
    :catch_3b
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, npe:Ljava/lang/NullPointerException;
    :try_start_3d
    const-string v1, "Andy_KeyguardUpdateMonitor"

    const-string v2, "No event here. skip refresh event"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_45

    goto :goto_9

    .line 211
    .end local v0       #npe:Ljava/lang/NullPointerException;,
    :catchall_45
    move-exception v1

    goto :goto_9

    .line 219
    :pswitch_47
    :try_start_47
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    const/4 v3, 0x0

    aput v3, v1, v2
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_63
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_58} :catch_59

    goto :goto_9

    .line 229
    :catch_59
    move-exception v1

    move-object v0, v1

    .line 230
    .restart local v0       #npe:Ljava/lang/NullPointerException;,
    :try_start_5b
    const-string v1, "Andy_KeyguardUpdateMonitor"

    const-string v2, "No event here. skip refresh event"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_63

    goto :goto_9

    .line 232
    .end local v0       #npe:Ljava/lang/NullPointerException;,
    :catchall_63
    move-exception v1

    goto :goto_9

    .line 222
    :cond_65
    :try_start_65
    iget v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    const/16 v2, 0xfa6

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mFMPlayInfo:Ljava/lang/String;

    .line 227
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    iget v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    const/4 v3, 0x1

    aput v3, v1, v2

    goto :goto_9

    .line 223
    :cond_77
    iget v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    const/16 v2, 0xfa7

    if-ne v1, v2, :cond_82

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mMusicPlayInfo:Ljava/lang/String;

    goto :goto_6f

    .line 224
    :cond_82
    iget v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mPkg:I

    const/16 v2, 0xfa8

    if-ne v1, v2, :cond_6f

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEvent:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mBluetoothInfo:Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_65 .. :try_end_8c} :catchall_63
    .catch Ljava/lang/NullPointerException; {:try_start_65 .. :try_end_8c} :catch_59

    goto :goto_6f

    .line 193
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method public receive_addedaction(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5
    .parameter "action"
    .parameter "intent"

    .prologue
    const/4 v1, 0x5

    .line 108
    const-string v0, "lge.intent.action.MISSED_CALLS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 109
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventData(Landroid/content/Intent;)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    .line 130
    :cond_f
    :goto_f
    return-void

    .line 111
    :cond_10
    const-string v0, "lge.intent.action.UNREAD_MESSAGES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 112
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventData(Landroid/content/Intent;)V

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    goto :goto_f

    .line 114
    :cond_1f
    const-string v0, "lge.intent.action.UNREAD_EMAILS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 115
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventData(Landroid/content/Intent;)V

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    goto :goto_f

    .line 117
    :cond_2e
    const-string v0, "lge.intent.action.UNREAD_VOICEMAILS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 118
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventData(Landroid/content/Intent;)V

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    goto :goto_f

    .line 120
    :cond_3d
    const-string v0, "lge.intent.action.FMRADIO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 121
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getFmRadioEvent(Landroid/content/Intent;)V

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    goto :goto_f

    .line 123
    :cond_4c
    const-string v0, "lge.intent.action.BGM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 124
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getBGMEvent(Landroid/content/Intent;)V

    .line 125
    iput v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    goto :goto_f

    .line 126
    :cond_5a
    const-string v0, "com.android.music.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 127
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getPlayEndEvent(Landroid/content/Intent;)V

    .line 128
    iput v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mCurrentEvent:I

    goto :goto_f
.end method

.method public sendNotificationBoxIntent()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_c

    .line 320
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_19
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_a} :catch_d

    .line 325
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    .line 328
    :cond_c
    :goto_c
    return-void

    .line 321
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 322
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    :try_start_f
    const-string v1, "Andy_KeyguardUpdateMonitor"

    const-string v2, "canceled PendingIntent for NotificationBoxIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_19

    .line 325
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_c

    .end local v0       #ex:Landroid/app/PendingIntent$CanceledException;,
    :catchall_19
    move-exception v1

    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    throw v1
.end method

.method updatePendingIntent(ZLandroid/app/PendingIntent;)V
    .registers 11
    .parameter "bUnlockedByNotiBox"
    .parameter "whatsnew"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 294
    if-eqz p1, :cond_5c

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v2, v2, v6

    add-int v0, v1, v2

    .line 296
    .local v0, sum:I
    if-le v0, v3, :cond_20

    .line 297
    iput-object p2, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    .line 315
    .end local v0       #sum:I,
    :goto_1f
    return-void

    .line 298
    .restart local v0       #sum:I,
    :cond_20
    if-ne v0, v3, :cond_59

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_2f

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntents:[Landroid/app/PendingIntent;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f

    .line 301
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v1, v1, v3

    if-ne v1, v3, :cond_3c

    .line 302
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntents:[Landroid/app/PendingIntent;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f

    .line 303
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v1, v1, v5

    if-ne v1, v3, :cond_49

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntents:[Landroid/app/PendingIntent;

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f

    .line 305
    :cond_49
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mEventTextNumber:[I

    aget v1, v1, v6

    if-ne v1, v3, :cond_56

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mContentIntents:[Landroid/app/PendingIntent;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f

    .line 308
    :cond_56
    iput-object v7, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f

    .line 310
    :cond_59
    iput-object v7, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f

    .line 313
    .end local v0       #sum:I,
    :cond_5c
    iput-object v7, p0, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->mNotificationBoxIntent:Landroid/app/PendingIntent;

    goto :goto_1f
.end method
