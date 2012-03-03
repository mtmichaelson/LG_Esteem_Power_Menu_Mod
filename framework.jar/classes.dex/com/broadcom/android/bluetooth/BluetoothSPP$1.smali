.class Lcom/broadcom/android/bluetooth/BluetoothSPP$1;
.super Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;
.source "BluetoothSPP.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;



# direct methods
.method constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPortConnected(BLjava/lang/String;)V
    .registers 5
    .parameter "appId"
    .parameter "remoteAddress"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    move-result v0

    if-eq v0, p1, :cond_b

    .line 389
    :goto_9
    monitor-exit p0

    return-void

    .line 381
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 384
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 385
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnected(BLjava/lang/String;)V

    .line 388
    :cond_22
    const-string v0, "BluetoothSPP"

    const-string/jumbo v1, "onPortConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_9

    .line 376
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHost(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 411
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    move-result v0

    if-eq v0, p1, :cond_b

    .line 422
    :goto_9
    monitor-exit p0

    return-void

    .line 415
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 418
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 419
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnectingToHost(B)V

    .line 421
    :cond_22
    const-string v0, "BluetoothSPP"

    const-string/jumbo v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_9

    .line 411
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHostFailed(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 428
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 429
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnectingToHostFailed(B)V

    .line 431
    :cond_18
    const-string v0, "BluetoothSPP"

    const-string/jumbo v1, "onPortConnectingtoHostFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 432
    monitor-exit p0

    return-void

    .line 427
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataArrived(B)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 450
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDataArrived(B)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 453
    :cond_12
    monitor-exit p0

    return-void

    .line 449
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataSent(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 436
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 437
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDataSent(B)V

    .line 439
    :cond_12
    const-string v0, "BluetoothSPP"

    const-string/jumbo v1, "onPortDataSent()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 440
    monitor-exit p0

    return-void

    .line 436
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDisconnected(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    move-result v0

    if-eq v0, p1, :cond_b

    .line 406
    :goto_9
    monitor-exit p0

    return-void

    .line 398
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 401
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 402
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDisconnected(B)V

    .line 405
    :cond_22
    const-string v0, "BluetoothSPP"

    const-string/jumbo v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_9

    .line 394
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSppServerPortEnabled(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_23

    move-result v0

    if-eq v0, p1, :cond_b

    .line 372
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 367
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 368
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onSppServerPortEnabled(B)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_9

    .line 364
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
