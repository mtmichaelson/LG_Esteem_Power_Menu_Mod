.class public abstract Lcom/broadcom/bt/service/framework/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"


# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final D:Z = true

.field public static final DEFAULT_BROADCAST_RECEIVER_PRIORITY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BaseProxy"



# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

.field protected mIsAvailable:Z

.field protected mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

.field protected mReceiverPriority:I



# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    .line 127
    return-void
.end method

.method protected static actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .parameter "a1"
    .parameter "a2"
    .parameter "offset"

    .prologue
    .line 65
    if-ne p0, p1, :cond_4

    .line 66
    const/4 v1, 0x1

    .line 71
    :goto_3
    return v1

    .line 67
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 68
    .local v0, a1length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 69
    const/4 v1, 0x0

    goto :goto_3

    .line 71
    :cond_10
    sub-int v1, v0, p2

    invoke-virtual {p0, p2, p1, p2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "ctx"
    .parameter "cb"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    const-string/jumbo v4, "null"

    .line 140
    const-string v1, "BaseProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create() cb= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_55

    const-string/jumbo v3, "null"

    move-object v3, v4

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_57

    const-string/jumbo v3, "null"

    move-object v3, v4

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", className"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_59

    const-string/jumbo v3, "null"

    move-object v3, v4

    :goto_36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    .end local v0       #i:Landroid/content/Intent;,
    :cond_55
    move-object v3, p2

    .line 140
    goto :goto_16

    :cond_57
    move-object v3, p3

    goto :goto_26

    :cond_59
    move-object v3, p4

    goto :goto_36
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 195
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    const-string v0, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish() mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_27

    .line 167
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 171
    :cond_27
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_33

    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 175
    :cond_33
    monitor-exit p0

    return-void

    .line 164
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finishEventCallbackHandler()V
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 121
    :cond_d
    monitor-exit p0

    return-void

    .line 117
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract init(Landroid/os/IBinder;)Z
.end method

.method protected declared-synchronized initEventCallbackHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-nez v0, :cond_1f

    .line 102
    new-instance v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;-><init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 103
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->start()V

    .line 104
    :goto_11
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_25

    if-nez v0, :cond_1f

    .line 106
    const-wide/16 v0, 0x64

    :try_start_19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 107
    :catch_1d
    move-exception v0

    goto :goto_11

    .line 111
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v0, "BaseProxy"

    .line 229
    monitor-enter p0

    :try_start_3
    const-string v0, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p2, :cond_32

    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/framework/BaseProxy;->init(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    if-eqz v0, :cond_39

    .line 232
    :cond_32
    const-string v0, "BaseProxy"

    const-string v1, "Unable to create proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_39
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    invoke-interface {v0, p0}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_43

    .line 236
    monitor-exit p0

    return-void

    .line 229
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    const-string v0, "BaseProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 4
    .parameter "opCode"
    .parameter "allow"
    .parameter "data"

    .prologue
    .line 191
    return-void
.end method
