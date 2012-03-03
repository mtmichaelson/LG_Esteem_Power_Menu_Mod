.class Lcom/lge/server/Andy_LockScreenService;
.super Lcom/lge/app/Andy_ILockScreenService$Stub;
.source "Andy_LockScreenService.java"



# static fields
.field private static final HINT_HEIGHT:Ljava/lang/String; = "hintHeight"

.field private static final HINT_WIDTH:Ljava/lang/String; = "hintWidth"

.field private static final LOCKSCREEN:Ljava/lang/String; = "lockscreen.dcf"

.field private static final LOCKSCREEN_DIR:Ljava/io/File; = null

.field private static final LOCKSCREEN_FILE:Ljava/io/File; = null

.field private static final PREFERENCES:Ljava/lang/String; = "lockscreen-hints"

.field private static final TAG:Ljava/lang/String; = "Andy_LockScreenService"



# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mLockScreenCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lge/app/Andy_ILockScreenServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockScreenObserver:Landroid/os/FileObserver;

.field private mWidth:I



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files/lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    const-string v2, "lockscreen.dcf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 89
    invoke-direct {p0}, Lcom/lge/app/Andy_ILockScreenService$Stub;-><init>()V

    .line 62
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    .line 68
    iput v5, p0, Lcom/lge/server/Andy_LockScreenService;->mWidth:I

    .line 69
    iput v5, p0, Lcom/lge/server/Andy_LockScreenService;->mHeight:I

    .line 75
    new-instance v2, Lcom/lge/server/Andy_LockScreenService$1;

    sget-object v3, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v2, p0, v3, v4}, Lcom/lge/server/Andy_LockScreenService$1;-><init>(Lcom/lge/server/Andy_LockScreenService;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenObserver:Landroid/os/FileObserver;

    .line 90
    const-string v2, "Andy_LockScreenService"

    const-string v3, "LockScreenService startup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/lge/server/Andy_LockScreenService;->createFilesDir()V

    .line 95
    iget-object v2, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 97
    iget-object v2, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    const-string v3, "lockscreen-hints"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "hintWidth"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/server/Andy_LockScreenService;->mWidth:I

    .line 99
    const-string v2, "hintHeight"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/server/Andy_LockScreenService;->mHeight:I

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "lge.intent.action.LOCKSCREENIMAGE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intentFilter:Landroid/content/IntentFilter;
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/server/Andy_LockScreenService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/server/Andy_LockScreenService;->notifyLockScreenCallbacks()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 270
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2f
    return-void
.end method

.method private createFilesDir()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 232
    sget-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 235
    sget-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 236
    sget-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 242
    :cond_1c
    return-void
.end method

.method private notifyLockScreenCallbacks()V
    .registers 6

    .prologue
    .line 248
    iget-object v3, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 249
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_22

    .line 251
    :try_start_9
    iget-object v3, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lge/app/Andy_ILockScreenServiceCallback;

    invoke-interface {v3}, Lcom/lge/app/Andy_ILockScreenServiceCallback;->onLockScreenImageChanged()V

    .line 252
    iget-object v3, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    iget-object v4, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_3a

    .line 249
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 259
    :cond_22
    iget-object v3, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-string v3, "lge.intent.action.LOCKSCREENIMAGE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, intent_lockscreen:Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 264
    iget-object v3, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    :cond_39
    return-void

    .line 253
    .end local v1       #intent_lockscreen:Landroid/content/Intent;,
    :catch_3a
    move-exception v3

    goto :goto_1f
.end method


# virtual methods
.method public clearLockScreen()V
    .registers 3

    .prologue
    .line 114
    sget-object v0, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_FILE:Ljava/io/File;

    .line 115
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 118
    :cond_b
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->finalize()V

    .line 107
    iget-object v0, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 108
    return-void
.end method

.method public getDrmLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)[B
    .registers 9
    .parameter "cb"

    .prologue
    const/4 v6, 0x0

    const-string v5, "Andy_LockScreenService"

    .line 174
    const-string v3, "Andy_LockScreenService"

    const-string v3, "getDrmLockScreenImage"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_a
    iget-object v3, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_DIR:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lockscreen.dcf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v2

    .line 180
    .local v2, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v2, :cond_3b

    .line 181
    const-string v3, "Andy_LockScreenService"

    const-string v4, "Fail to create DRM session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 198
    .end local v2       #session:Lcom/lge/lgdrm/DrmContentSession;,
    :goto_3a
    return-object v3

    .line 186
    .restart local v2       #session:Lcom/lge/lgdrm/DrmContentSession;,
    :cond_3b
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v4

    if-eq v3, v4, :cond_4c

    .line 187
    const-string v3, "Andy_LockScreenService"

    const-string v4, "Cannot set as lockscreen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 188
    goto :goto_3a

    .line 190
    :cond_4c
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContentSession;->getDecryptionInfo()[B
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_4f} :catch_52
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_a .. :try_end_4f} :catch_5f

    move-result-object v0

    .local v0, DecInfo:[B
    move-object v3, v0

    .line 192
    goto :goto_3a

    .line 193
    .end local v0       #DecInfo:[B,
    .end local v2       #session:Lcom/lge/lgdrm/DrmContentSession;,
    :catch_52
    move-exception v3

    move-object v1, v3

    .line 194
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "Andy_LockScreenService"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 195
    goto :goto_3a

    .line 196
    .end local v1       #e:Ljava/lang/SecurityException;,
    :catch_5f
    move-exception v3

    move-object v1, v3

    .line 197
    .local v1, e:Lcom/lge/lgdrm/DrmException;
    const-string v3, "Andy_LockScreenService"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 198
    goto :goto_3a
.end method

.method public getHeightHint()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget v0, p0, Lcom/lge/server/Andy_LockScreenService;->mHeight:I

    return v0
.end method

.method public getLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .parameter "cb"

    .prologue
    const/4 v6, 0x0

    const-string v5, "Andy_LockScreenService"

    .line 153
    :try_start_3
    const-string v2, "Andy_LockScreenService"

    const-string v3, "getLockScreenImage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/lge/server/Andy_LockScreenService;->mLockScreenCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 155
    sget-object v1, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_FILE:Ljava/io/File;

    .line 156
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    move-object v2, v6

    .line 167
    .end local v1       #f:Ljava/io/File;,
    :goto_18
    return-object v2

    .line 159
    .restart local v1       #f:Ljava/io/File;,
    :cond_19
    const-string v2, "Andy_LockScreenService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_36} :catch_38

    move-result-object v2

    goto :goto_18

    .line 161
    .end local v1       #f:Ljava/io/File;,
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "Andy_LockScreenService"

    const-string v2, "Error getting wallpaper"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v6

    .line 167
    goto :goto_18
.end method

.method public getWidthHint()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/lge/server/Andy_LockScreenService;->mWidth:I

    return v0
.end method

.method public setDimensionHints(II)V
    .registers 8
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/lge/server/Andy_LockScreenService;->checkPermission(Ljava/lang/String;)V

    .line 123
    if-lez p1, :cond_9

    if-gtz p2, :cond_12

    .line 124
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width and height must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_12
    iget v2, p0, Lcom/lge/server/Andy_LockScreenService;->mWidth:I

    if-ne p1, v2, :cond_1a

    iget v2, p0, Lcom/lge/server/Andy_LockScreenService;->mHeight:I

    if-eq p2, v2, :cond_38

    .line 128
    :cond_1a
    iput p1, p0, Lcom/lge/server/Andy_LockScreenService;->mWidth:I

    .line 129
    iput p2, p0, Lcom/lge/server/Andy_LockScreenService;->mHeight:I

    .line 131
    iget-object v2, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    const-string v3, "lockscreen-hints"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 133
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "hintWidth"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v2, "hintHeight"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    .end local v0       #editor:Landroid/content/SharedPreferences$Editor;,
    .end local v1       #preferences:Landroid/content/SharedPreferences;,
    :cond_38
    return-void
.end method

.method public setLockScreenImage()Landroid/os/ParcelFileDescriptor;
    .registers 10

    .prologue
    .line 206
    const-string v5, "android.permission.SET_LOCKSCREEN"

    invoke-direct {p0, v5}, Lcom/lge/server/Andy_LockScreenService;->checkPermission(Ljava/lang/String;)V

    .line 209
    :try_start_5
    invoke-direct {p0}, Lcom/lge/server/Andy_LockScreenService;->createFilesDir()V

    .line 211
    sget-object v5, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_FILE:Ljava/io/File;

    const/high16 v6, 0x3800

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 214
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    sget-object v5, Lcom/lge/server/Andy_LockScreenService;->LOCKSCREEN_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 220
    .local v3, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v5, p0, Lcom/lge/server/Andy_LockScreenService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 222
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2e} :catch_30

    move-object v5, v2

    .line 228
    .end local v0       #bm:Landroid/app/backup/BackupManager;,
    .end local v2       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v3       #origId:J,
    :goto_2f
    return-object v5

    .line 225
    :catch_30
    move-exception v5

    move-object v1, v5

    .line 226
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "Andy_LockScreenService"

    const-string v6, "Error setting LockScreen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v5, 0x0

    goto :goto_2f
.end method
