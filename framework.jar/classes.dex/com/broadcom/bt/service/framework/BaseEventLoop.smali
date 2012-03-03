.class public abstract Lcom/broadcom/bt/service/framework/BaseEventLoop;
.super Ljava/lang/Object;
.source "BaseEventLoop.java"


# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsFinish:Z

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    .line 31
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 36
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public init()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 5
    .parameter "started"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_10

    .line 51
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    .line 52
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    if-eqz v0, :cond_22

    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V

    .line 58
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseEventLoop;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2b

    const/4 v2, 0x2

    :goto_19
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_28

    .line 62
    monitor-exit p0

    return-void

    .line 55
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 50
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_2b
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method
