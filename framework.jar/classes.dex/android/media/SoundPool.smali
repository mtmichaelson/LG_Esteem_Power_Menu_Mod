.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"



# instance fields
.field private mEventHandler:Landroid/media/SoundPool$EventHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:I

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const-string/jumbo v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "maxStreams"
    .parameter "streamType"
    .parameter "srcQuality"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/media/SoundPool;->native_setup(Ljava/lang/Object;III)I

    move-result v1

    if-eqz v1, :cond_16

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Native setup failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_16
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    .line 147
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2b

    .line 148
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    .line 155
    :goto_2a
    return-void

    .line 149
    :cond_2b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 150
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_2a

    .line 152
    :cond_39
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_2a
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _load(Ljava/lang/String;I)I
.end method

.method static synthetic access$000(Landroid/media/SoundPool;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method private final native native_setup(Ljava/lang/Object;III)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "weakRef"
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 464
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0       
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 465
    .local v1, soundPool:Landroid/media/SoundPool;
    if-nez v1, :cond_b

    .line 472
    :cond_a
    :goto_a
    return-void

    .line 468
    :cond_b
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    if-eqz v2, :cond_a

    .line 469
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/SoundPool$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .registers 13
    .parameter "context"
    .parameter "resId"
    .parameter "priority"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 205
    .local v7, afd:Landroid/content/res/AssetFileDescriptor;
    const/4 v8, 0x0

    .line 206
    .local v8, id:I
    if-eqz v7, :cond_20

    .line 207
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v8

    .line 209
    :try_start_1d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 214
    :cond_20
    :goto_20
    return v8

    .line 210
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .registers 10
    .parameter "afd"
    .parameter "priority"

    .prologue
    .line 226
    if-eqz p1, :cond_24

    .line 227
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 228
    .local v4, len:J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_15

    .line 229
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    .line 233
    .end local v4       #len:J,
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .registers 8
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "priority"

    .prologue
    .line 252
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .registers 14
    .parameter "path"
    .parameter "priority"

    .prologue
    .line 168
    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;->_load(Ljava/lang/String;I)I

    move-result v0

    .line 185
    :goto_c
    return v0

    .line 172
    :cond_d
    const/4 v10, 0x0

    .line 174
    .local v10, id:I
    :try_start_e
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v8, f:Ljava/io/File;
    if-eqz v8, :cond_30

    .line 176
    const/high16 v0, 0x1000

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 177
    .local v9, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_30

    .line 178
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v10

    .line 179
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_30} :catch_32

    .end local v8       #f:Ljava/io/File;,
    .end local v9       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_30
    :goto_30
    move v0, v10

    .line 185
    goto :goto_c

    .line 182
    :catch_32
    move-exception v0

    move-object v7, v0

    .line 183
    .local v7, e:Ljava/io/IOException;
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public final native pause(I)V
.end method

.method public final native play(IFFIIF)I
.end method

.method public final native release()V
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 429
    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iput-object p1, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public final native setVolume(IFF)V
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
