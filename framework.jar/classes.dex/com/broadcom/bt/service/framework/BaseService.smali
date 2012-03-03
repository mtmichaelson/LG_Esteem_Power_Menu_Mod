.class public abstract Lcom/broadcom/bt/service/framework/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"


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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 31
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    .line 37
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public init()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 5
    .parameter "started"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_10

    .line 52
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 53
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_22

    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V

    .line 59
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseService;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2b

    const/4 v2, 0x2

    :goto_19
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_28

    .line 63
    monitor-exit p0

    return-void

    .line 56
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 51
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 59
    :cond_2b
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 47
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method
