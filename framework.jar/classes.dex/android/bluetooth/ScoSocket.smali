.class public Landroid/bluetooth/ScoSocket;
.super Ljava/lang/Object;
.source "ScoSocket.java"



# static fields
.field private static final DBG:Z = true

.field private static final LG_BTUI_SCO:Z = true

.field public static final STATE_ACCEPT:I = 0x2

.field public static final STATE_CLOSED:I = 0x5

.field public static final STATE_CONNECTED:I = 0x4

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScoSocket"

.field private static final VDBG:Z = false

.field public static isDoneScoConnection:Z = false

.field private static final sco_state:Ljava/lang/String; = "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"



# instance fields
.field private mAcceptedCode:I

.field private mClosedCode:I

.field private mConnectedCode:I

.field private mHandler:Landroid/os/Handler;

.field private mNativeData:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Landroid/bluetooth/ScoSocket;->isDoneScoConnection:Z

    .line 64
    invoke-static {}, Landroid/bluetooth/ScoSocket;->classInitNative()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;III)V
    .registers 8
    .parameter "pm"
    .parameter "handler"
    .parameter "acceptedCode"
    .parameter "connectedCode"
    .parameter "closedCode"

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->initNative()V

    .line 71
    iput v1, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 72
    iput-object p2, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    .line 73
    iput p3, p0, Landroid/bluetooth/ScoSocket;->mAcceptedCode:I

    .line 74
    iput p4, p0, Landroid/bluetooth/ScoSocket;->mConnectedCode:I

    .line 75
    iput p5, p0, Landroid/bluetooth/ScoSocket;->mClosedCode:I

    .line 76
    const-string v0, "ScoSocket"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    return-void
.end method

.method private native acceptNative()Z
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 211
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 214
    :cond_d
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative()V
.end method

.method private native connectNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native destroyNative()V
.end method

.method private native initNative()V
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 236
    const-string v0, "ScoSocket"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method private declared-synchronized onAccepted(I)V
    .registers 6
    .parameter "result"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strange state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_58

    .line 197
    :goto_1c
    monitor-exit p0

    return-void

    .line 190
    :cond_1e
    if-ltz p1, :cond_5b

    .line 191
    const/4 v0, 0x4

    :try_start_21
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 195
    :goto_23
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] onAccepted()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mAcceptedCode:I

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_58

    goto :goto_1c

    .line 186
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_5b
    const/4 v0, 0x5

    :try_start_5c
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_58

    goto :goto_23
.end method

.method private declared-synchronized onClosed()V
    .registers 5

    .prologue
    const/4 v2, 0x5

    .line 200
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClosed() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    if-eq v0, v2, :cond_31

    .line 202
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 203
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mClosedCode:I

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLock()V

    .line 206
    :cond_31
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] onClosed()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_59

    .line 207
    monitor-exit p0

    return-void

    .line 200
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnected(I)V
    .registers 6
    .parameter "result"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strange state, closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_6a

    .line 182
    :goto_28
    monitor-exit p0

    return-void

    .line 168
    :cond_2a
    if-ltz p1, :cond_6d

    .line 169
    const/4 v0, 0x4

    :try_start_2d
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Landroid/bluetooth/ScoSocket;->isDoneScoConnection:Z

    .line 179
    :goto_32
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] onConnected()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mConnectedCode:I

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLockNow()V
    :try_end_69
    .catchall {:try_start_2d .. :try_end_69} :catchall_6a

    goto :goto_28

    .line 164
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_6d
    const/4 v0, 0x5

    :try_start_6e
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_6a

    goto :goto_32
.end method

.method private releaseWakeLock()V
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 226
    :cond_f
    return-void
.end method

.method private releaseWakeLockNow()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 231
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 233
    :cond_d
    return-void
.end method


# virtual methods
.method public declared-synchronized accept()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    const-string v0, "ScoSocket"

    const-string v0, ") "

    .line 127
    monitor-enter p0

    :try_start_9
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    if-eq v0, v4, :cond_15

    .line 128
    const-string v0, "Bad state"

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_71

    move v0, v3

    .line 138
    :goto_13
    monitor-exit p0

    return v0

    .line 131
    :cond_15
    :try_start_15
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->acceptNative()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 132
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 133
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] doAccept()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 134
    goto :goto_13

    .line 136
    :cond_46
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 137
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] doAccept()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_15 .. :try_end_6f} :catchall_71

    move v0, v3

    .line 138
    goto :goto_13

    .line 127
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SCO OBJECT close() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->acquireWakeLock()V

    .line 152
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->closeNative()V

    .line 153
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLock()V

    .line 154
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] doClose()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 155
    monitor-exit p0

    return-void

    .line 144
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "address"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    const-string v0, "ScoSocket"

    const-string v0, ") "

    .line 97
    monitor-enter p0

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    if-eq v0, v4, :cond_2b

    .line 99
    const-string v0, "connect(): Bad state"

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_90

    move v0, v3

    .line 117
    :goto_29
    monitor-exit p0

    return v0

    .line 102
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->acquireWakeLock()V

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Landroid/bluetooth/ScoSocket;->isDoneScoConnection:Z

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/ScoSocket;->connectNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 111
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] doConnect()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 112
    goto :goto_29

    .line 114
    :cond_62
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 115
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLockNow()V

    .line 116
    const-string v0, "ScoSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [### SCO ###] doConnect()... mState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1:READY/2:ACCEPT/3:CONNECTING/4:CONNECTED/5:CLOSED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_2b .. :try_end_8e} :catchall_90

    move v0, v3

    .line 117
    goto :goto_29

    .line 97
    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->destroyNative()V

    .line 86
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLockNow()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    return-void

    .line 88
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
