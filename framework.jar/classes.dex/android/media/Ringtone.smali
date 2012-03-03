.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"



# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;



# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDrmConsume:Z

.field private mDrmFile:I

.field private mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

.field private mDrmValid:Z

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;



# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_data"

    .line 54
    const-string v0, "Ringtone"

    sput-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 81
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 82
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 84
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 88
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    return-void
.end method

.method private checkDRM(Ljava/lang/String;)I
    .registers 12
    .parameter "filename"

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 402
    if-nez p1, :cond_9

    move v0, v4

    .line 437
    :goto_8
    return v0

    .line 406
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 407
    .local v6, length:I
    sub-int v2, v6, v5

    const-string v3, ".dm"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_48

    sub-int v2, v6, v8

    const-string v3, ".dcf"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_48

    sub-int v2, v6, v8

    const-string v3, ".odf"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_48

    sub-int v2, v6, v8

    const-string v3, ".o4a"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_48

    sub-int v2, v6, v8

    const-string v3, ".o4v"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_48
    move v0, v1

    :goto_49
    if-nez v0, :cond_4f

    move v0, v4

    .line 412
    goto :goto_8

    :cond_4d
    move v0, v4

    .line 407
    goto :goto_49

    .line 415
    :cond_4f
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 416
    iget v0, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_61

    iget v0, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v2, 0x3000

    if-le v0, v2, :cond_65

    .line 417
    :cond_61
    iput v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    move v0, v4

    .line 418
    goto :goto_8

    .line 422
    :cond_65
    :try_start_65
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v7

    .line 423
    .local v7, session:Lcom/lge/lgdrm/DrmContentSession;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v0

    if-nez v0, :cond_74

    move v0, v1

    .line 424
    goto :goto_8

    .line 427
    :cond_74
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    .line 428
    goto :goto_8

    .line 431
    :cond_7d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 432
    iput-object v7, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_84

    move v0, v9

    .line 433
    goto :goto_8

    .line 434
    .end local v7       #session:Lcom/lge/lgdrm/DrmContentSession;,
    :catch_84
    move-exception v0

    move v0, v1

    .line 437
    goto :goto_8
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 139
    .local v10, title:Ljava/lang/String;
    if-eqz p1, :cond_31

    .line 140
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 143
    if-eqz p2, :cond_31

    .line 144
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 146
    .local v7, actualUri:Landroid/net/Uri;
    invoke-static {p0, v7, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, actualTitle:Ljava/lang/String;
    const v1, 0x1040344

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 174
    .end local v6       #actualTitle:Ljava/lang/String;,
    .end local v7       #actualUri:Landroid/net/Uri;,
    .end local v8       #authority:Ljava/lang/String;,
    :cond_31
    :goto_31
    if-nez v10, :cond_3e

    .line 175
    const v1, 0x1040347

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 177
    if-nez v10, :cond_3e

    .line 178
    const-string v10, ""

    :cond_3e
    move-object v1, v10

    .line 182
    :cond_3f
    :goto_3f
    return-object v1

    .line 153
    .restart local v8       #authority:Ljava/lang/String;,
    :cond_40
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 154
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 160
    :cond_51
    :goto_51
    if-eqz v9, :cond_79

    :try_start_53
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_79

    .line 161
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_83

    move-result-object v1

    .line 167
    if-eqz v9, :cond_3f

    .line 168
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 155
    :cond_67
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 156
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_51

    .line 164
    :cond_79
    :try_start_79
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_83

    move-result-object v10

    .line 167
    if-eqz v9, :cond_31

    .line 168
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 167
    :catchall_83
    move-exception v1

    if-eqz v9, :cond_89

    .line 168
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_89
    throw v1
.end method

.method private openMediaPlayer()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    .line 188
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 189
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 190
    iput-object v2, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 193
    :cond_12
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 194
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_79

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 198
    .local v6, nStatus:I
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 199
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 200
    iput-object v2, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 201
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v0, :cond_37

    .line 202
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 203
    if-eqz v7, :cond_37

    .line 204
    invoke-direct {p0, v7}, Landroid/media/Ringtone;->checkDRM(Ljava/lang/String;)I

    move-result v6

    .line 208
    :cond_37
    const/4 v0, 0x1

    if-ne v6, v0, :cond_66

    .line 216
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/audio/ringtones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.config.ringtone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 239
    .end local v6       #nStatus:I,
    .end local v7       #path:Ljava/lang/String;,
    :goto_59
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 240
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 241
    return-void

    .line 218
    .restart local v6       #nStatus:I,
    .restart local v7       #path:Ljava/lang/String;,
    :cond_66
    const/4 v0, 0x2

    if-ne v6, v0, :cond_6f

    .line 219
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_59

    .line 222
    :cond_6f
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_59

    .line 223
    .end local v6       #nStatus:I,
    .end local v7       #path:Ljava/lang/String;,
    :cond_79
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_85

    .line 224
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_59

    .line 225
    :cond_85
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_b9

    .line 229
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_a1

    .line 230
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_59

    .line 232
    :cond_a1
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_59

    .line 237
    :cond_b9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .registers 11
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 358
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_19

    .line 359
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 361
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 363
    :cond_19
    return-void
.end method


# virtual methods
.method public getProperty(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 370
    if-ne p1, v2, :cond_12

    .line 372
    iget v0, p0, Landroid/media/Ringtone;->mDrmFile:I

    if-nez v0, :cond_a

    move v0, v2

    .line 383
    :goto_9
    return v0

    .line 375
    :cond_a
    iget-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_9

    :cond_10
    move v0, v3

    goto :goto_9

    .line 376
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 378
    iget v0, p0, Landroid/media/Ringtone;->mDrmFile:I

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_21

    :cond_1f
    move v0, v3

    .line 379
    goto :goto_9

    :cond_21
    move v0, v2

    .line 381
    goto :goto_9

    :cond_23
    move v0, v3

    .line 383
    goto :goto_9
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 130
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_6
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method open(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 250
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 251
    return-void
.end method

.method open(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 255
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 256
    return-void
.end method

.method open(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 245
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 246
    return-void
.end method

.method public play()V
    .registers 7

    .prologue
    .line 262
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_7

    .line 264
    :try_start_4
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_34

    .line 270
    :cond_7
    :goto_7
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_33

    .line 273
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_33

    .line 274
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 276
    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v1, :cond_33

    .line 278
    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    iget-object v2, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    .line 283
    :cond_33
    return-void

    .line 265
    :catch_34
    move-exception v0

    .line 266
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_7
.end method

.method public play(Z)V
    .registers 9
    .parameter "loop"

    .prologue
    const/4 v6, 0x1

    .line 288
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_8

    .line 290
    :try_start_5
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_45

    .line 296
    :cond_8
    :goto_8
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_44

    .line 299
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_44

    .line 300
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 302
    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v1, :cond_34

    .line 304
    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    iget-object v2, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    .line 307
    :cond_34
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_44

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    if-eq v1, v6, :cond_44

    .line 310
    if-eqz p1, :cond_44

    .line 311
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 315
    :cond_44
    return-void

    .line 291
    :catch_45
    move-exception v0

    .line 292
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_8
.end method

.method public setProperty(Z)V
    .registers 3
    .parameter "consume"

    .prologue
    .line 391
    iget-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v0, :cond_6

    .line 392
    iput-boolean p1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 394
    :cond_6
    return-void
.end method

.method public setStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 98
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 100
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_9

    .line 106
    :try_start_6
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 111
    :cond_9
    :goto_9
    return-void

    .line 107
    :catch_a
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set the stream type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 351
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2b

    .line 324
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 326
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 327
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 328
    iput-object v3, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 330
    iget-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v0, :cond_2b

    .line 332
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    .line 333
    iput v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 334
    iput-boolean v2, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 335
    iput-object v3, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 339
    :cond_2b
    return-void
.end method
