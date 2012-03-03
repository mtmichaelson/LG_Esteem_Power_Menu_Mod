.class Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
.super Lcom/broadcom/bt/service/opp/IOppCallback$Stub;
.source "BluetoothOPP.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 6
    .parameter "filePathName"

    .prologue
    const-string v1, "BluetoothOPP"

    .line 792
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 793
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOpOwnerVcardNotSet ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3f

    .line 795
    :try_start_2a
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3f
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_35

    .line 800
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 796
    :catch_35
    move-exception v1

    move-object v0, v1

    .line 797
    .local v0, t:Ljava/lang/Throwable;
    :try_start_37
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpOwnerVcardNotSet event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_33

    .line 792
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_3f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcClose(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 729
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 731
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 737
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 732
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 733
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcClose event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 729
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcEnable()V
    .registers 4

    .prologue
    .line 678
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 680
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 685
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 681
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 682
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcEnable event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 678
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 719
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 721
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 726
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 722
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 723
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcObjectPushed event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 719
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 709
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 711
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 716
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 712
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 713
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcObjectReceived event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 709
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcOpen()V
    .registers 4

    .prologue
    .line 688
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 690
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 695
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 691
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 692
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcOpen event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 688
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpcProgress(II)V
    .registers 6
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 701
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(II)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 706
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 702
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 703
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcProgress event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 699
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 15
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 771
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    move-result-object v0

    if-eqz v0, :cond_18

    .line 773
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_18} :catch_1a

    .line 779
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 775
    :catch_1a
    move-exception v0

    move-object v7, v0

    .line 776
    .local v7, t:Ljava/lang/Throwable;
    :try_start_1c
    const-string v0, "BluetoothOPP"

    const-string v1, "Error processing OPP onOpsAccessRequest event"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_18

    .line 771
    .end local v7       #t:Ljava/lang/Throwable;,
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsClose()V
    .registers 4

    .prologue
    .line 782
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 784
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 789
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 785
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 786
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsClose event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 782
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 6
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 750
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 752
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 757
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 753
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 754
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsObjectReceived event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 750
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsOpen()V
    .registers 4

    .prologue
    .line 760
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 762
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsOpen()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 767
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 763
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 764
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpsOpen event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 760
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsProgress(II)V
    .registers 6
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 740
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v1

    if-eqz v1, :cond_12

    .line 742
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(II)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    .line 747
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 743
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 744
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP onOpcProgess event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 740
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
