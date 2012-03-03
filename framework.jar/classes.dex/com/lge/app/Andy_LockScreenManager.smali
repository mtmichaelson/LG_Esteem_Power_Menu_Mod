.class public Lcom/lge/app/Andy_LockScreenManager;
.super Ljava/lang/Object;
.source "Andy_LockScreenManager.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/Andy_LockScreenManager$Andy_LockScreenImageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Andy_LockScreenManager"



# instance fields
.field private final LOCKSCREEN:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLockScreenImage:Landroid/graphics/drawable/Drawable;

.field private mLockScreenImageCallback:Lcom/lge/app/Andy_ILockScreenServiceCallback;

.field private sLockScreenService:Lcom/lge/app/Andy_ILockScreenService;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/app/Andy_ILockScreenService;)V
    .registers 4
    .parameter "context"
    .parameter "lockService"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "/data/data/com.android.settings/files/lockscreen/lockscreen.dcf"

    iput-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->LOCKSCREEN:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImageCallback:Lcom/lge/app/Andy_ILockScreenServiceCallback;

    .line 57
    iput-object p1, p0, Lcom/lge/app/Andy_LockScreenManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/lge/app/Andy_LockScreenManager;->sLockScreenService:Lcom/lge/app/Andy_ILockScreenService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lge/app/Andy_LockScreenManager;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/app/Andy_LockScreenManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getCurrentLockScreenImageLocked()Landroid/graphics/drawable/Drawable;
    .registers 14

    .prologue
    const/4 v11, 0x0

    const-string v9, "/data/data/com.android.settings/files/lockscreen/lockscreen.dcf"

    const-string v12, "Andy_LockScreenManager"

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, bm:Landroid/graphics/Bitmap;
    sget-boolean v8, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v8, :cond_b8

    const-string v8, "/data/data/com.android.settings/files/lockscreen/lockscreen.dcf"

    invoke-static {v9}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_b8

    .line 109
    :try_start_12
    iget-object v8, p0, Lcom/lge/app/Andy_LockScreenManager;->sLockScreenService:Lcom/lge/app/Andy_ILockScreenService;

    iget-object v9, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImageCallback:Lcom/lge/app/Andy_ILockScreenServiceCallback;

    invoke-interface {v8, v9}, Lcom/lge/app/Andy_ILockScreenService;->getDrmLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)[B

    move-result-object v0

    .line 110
    .local v0, DecInfo:[B
    if-nez v0, :cond_1e

    move-object v8, v11

    .line 163
    .end local v0       #DecInfo:[B,
    :goto_1d
    return-object v8

    .line 114
    .restart local v0       #DecInfo:[B,
    :cond_1e
    const-string v8, "/data/data/com.android.settings/files/lockscreen/lockscreen.dcf"

    invoke-static {v8, v0}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;

    move-result-object v4

    .line 115
    .local v4, inDrm:Lcom/lge/lgdrm/DrmStream;
    if-nez v4, :cond_28

    move-object v8, v11

    .line 116
    goto :goto_1d

    .line 119
    :cond_28
    invoke-virtual {v4}, Lcom/lge/lgdrm/DrmStream;->available()I

    move-result v6

    .line 120
    .local v6, rawContentLen:I
    const-string v8, "Andy_LockScreenManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drm file size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v7, 0x1

    .line 123
    .local v7, s:I
    :goto_45
    mul-int v8, v7, v7

    div-int v8, v6, v8

    const v9, 0x4b000

    if-le v8, v9, :cond_51

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 126
    :cond_51
    const-string v8, "Andy_LockScreenManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drm reduction value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int v10, v7, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 130
    const/4 v8, 0x0

    invoke-static {v4, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_76} :catch_85
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_76} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_76} :catch_a0

    move-result-object v1

    .line 142
    if-eqz v1, :cond_ae

    .line 143
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/app/Andy_LockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1d

    .line 131
    .end local v0       #DecInfo:[B,
    .end local v4       #inDrm:Lcom/lge/lgdrm/DrmStream;,
    .end local v5       #options:Landroid/graphics/BitmapFactory$Options;,
    .end local v6       #rawContentLen:I,
    .end local v7       #s:I,
    :catch_85
    move-exception v8

    move-object v2, v8

    .line 132
    .local v2, e:Ljava/lang/SecurityException;
    const-string v8, "Andy_LockScreenManager"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 133
    goto :goto_1d

    .line 134
    .end local v2       #e:Ljava/lang/SecurityException;,
    :catch_92
    move-exception v8

    move-object v2, v8

    .line 135
    .local v2, e:Ljava/io/IOException;
    const-string v8, "Andy_LockScreenManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 136
    goto/16 :goto_1d

    .line 137
    .end local v2       #e:Ljava/io/IOException;,
    :catch_a0
    move-exception v8

    move-object v2, v8

    .line 138
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "Andy_LockScreenManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 139
    goto/16 :goto_1d

    .line 145
    .end local v2       #e:Landroid/os/RemoteException;,
    .restart local v0       #DecInfo:[B,
    .restart local v4       #inDrm:Lcom/lge/lgdrm/DrmStream;,
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;,
    .restart local v6       #rawContentLen:I,
    .restart local v7       #s:I,
    :cond_ae
    const-string v8, "Andy_LockScreenManager"

    const-string v8, "DRM decoding is failed"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 146
    goto/16 :goto_1d

    .line 151
    .end local v0       #DecInfo:[B,
    .end local v4       #inDrm:Lcom/lge/lgdrm/DrmStream;,
    .end local v5       #options:Landroid/graphics/BitmapFactory$Options;,
    .end local v6       #rawContentLen:I,
    .end local v7       #s:I,
    :cond_b8
    :try_start_b8
    iget-object v8, p0, Lcom/lge/app/Andy_LockScreenManager;->sLockScreenService:Lcom/lge/app/Andy_ILockScreenService;

    iget-object v9, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImageCallback:Lcom/lge/app/Andy_ILockScreenServiceCallback;

    invoke-interface {v8, v9}, Lcom/lge/app/Andy_ILockScreenService;->getLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 152
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_e8

    .line 153
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_e8

    .line 156
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 157
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/app/Andy_LockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_db} :catch_dd

    goto/16 :goto_1d

    .line 160
    .end local v3       #fd:Landroid/os/ParcelFileDescriptor;,
    :catch_dd
    move-exception v8

    move-object v2, v8

    .line 161
    .restart local v2       #e:Landroid/os/RemoteException;,
    const-string v8, "Andy_LockScreenManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2       #e:Landroid/os/RemoteException;,
    :cond_e8
    move-object v8, v11

    .line 163
    goto/16 :goto_1d
.end method

.method private setLockScreenImage(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const v2, 0x8000

    new-array v1, v2, [B

    .line 219
    .local v1, buffer:[B
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_10

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 222
    :cond_10
    return-void
.end method


# virtual methods
.method public getLockScreenImage()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/lge/app/Andy_LockScreenManager;->peekLockScreenImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    move-object v2, v0

    .line 78
    :goto_7
    return-object v2

    .line 74
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/lge/app/Andy_LockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/app/Andy_LockScreenManager;->setLockScreenImage(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_1d

    .line 78
    :goto_18
    invoke-virtual {p0}, Lcom/lge/app/Andy_LockScreenManager;->peekLockScreenImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_7

    .line 75
    :catch_1d
    move-exception v2

    move-object v1, v2

    .line 76
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Andy_LockScreenManager"

    const-string v3, "Setting wallpaper failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public declared-synchronized peekLockScreenImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImage:Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    .line 93
    :goto_7
    monitor-exit p0

    return-object v0

    .line 91
    :cond_9
    :try_start_9
    new-instance v0, Lcom/lge/app/Andy_LockScreenManager$Andy_LockScreenImageCallback;

    invoke-direct {v0, p0}, Lcom/lge/app/Andy_LockScreenManager$Andy_LockScreenImageCallback;-><init>(Lcom/lge/app/Andy_LockScreenManager;)V

    iput-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImageCallback:Lcom/lge/app/Andy_ILockScreenServiceCallback;

    .line 92
    invoke-direct {p0}, Lcom/lge/app/Andy_LockScreenManager;->getCurrentLockScreenImageLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImage:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/lge/app/Andy_LockScreenManager;->mLockScreenImage:Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 87
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLockScreenImage(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/lge/app/Andy_LockScreenManager;->sLockScreenService:Lcom/lge/app/Andy_ILockScreenService;

    invoke-interface {v4}, Lcom/lge/app/Andy_ILockScreenService;->setLockScreenImage()Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_1c

    move-result-object v1

    .line 173
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_9

    .line 188
    .end local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_8
    :goto_8
    return-void

    .line 176
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_9
    const/4 v2, 0x0

    .line 178
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_a
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_28

    .line 179
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_f
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2f

    .line 181
    if-eqz v3, :cond_8

    .line 182
    :try_start_18
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_8

    .line 185
    .end local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v3       #fos:Ljava/io/FileOutputStream;,
    :catch_1c
    move-exception v4

    move-object v0, v4

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "Andy_LockScreenManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 181
    .end local v0       #e:Landroid/os/RemoteException;,
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    :catchall_28
    move-exception v4

    :goto_29
    if-eqz v2, :cond_2e

    .line 182
    :try_start_2b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 181
    :cond_2e
    throw v4
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2f} :catch_1c

    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .restart local v3       #fos:Ljava/io/FileOutputStream;,
    :catchall_2f
    move-exception v4

    move-object v2, v3

    .end local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    goto :goto_29
.end method

.method public setLockScreenImage(Ljava/io/InputStream;)V
    .registers 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    iget-object v4, p0, Lcom/lge/app/Andy_LockScreenManager;->sLockScreenService:Lcom/lge/app/Andy_ILockScreenService;

    invoke-interface {v4}, Lcom/lge/app/Andy_ILockScreenService;->setLockScreenImage()Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_18

    move-result-object v1

    .line 196
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_9

    .line 211
    .end local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_8
    :goto_8
    return-void

    .line 199
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_9
    const/4 v2, 0x0

    .line 201
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_a
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_24

    .line 202
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_f
    invoke-direct {p0, p1, v3}, Lcom/lge/app/Andy_LockScreenManager;->setLockScreenImage(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2b

    .line 204
    if-eqz v3, :cond_8

    .line 205
    :try_start_14
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 208
    .end local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v3       #fos:Ljava/io/FileOutputStream;,
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "Andy_LockScreenManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 204
    .end local v0       #e:Landroid/os/RemoteException;,
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    :catchall_24
    move-exception v4

    :goto_25
    if-eqz v2, :cond_2a

    .line 205
    :try_start_27
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 204
    :cond_2a
    throw v4
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_18

    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .restart local v3       #fos:Ljava/io/FileOutputStream;,
    :catchall_2b
    move-exception v4

    move-object v2, v3

    .end local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    goto :goto_25
.end method

.method public setLockScreenImage(Ljava/lang/String;)V
    .registers 7
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, sourceFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 231
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_12

    .line 233
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/lge/app/Andy_LockScreenManager;->setLockScreenImage(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_13

    .line 237
    :goto_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 240
    :cond_12
    return-void

    .line 234
    :catch_13
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    :try_start_14
    const-string v3, "ViewImage"

    const-string v4, "Could not close stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_f

    .line 237
    .end local v0       #e:Ljava/io/IOException;,
    :catchall_1c
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
.end method
