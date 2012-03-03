.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingA2dp"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;



# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .registers 4

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    .line 679
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering IncomingA2dp state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    .line 681
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_51

    .line 683
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: IncomingA2DP state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_51
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    .line 686
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    if-nez v0, :cond_72

    .line 687
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 688
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 691
    :cond_72
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .registers 11
    .parameter "message"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 695
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IncomingA2dp State->Processing Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1900(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 696
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 697
    .local v0, deferMsg:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_8c

    move v3, v7

    .line 770
    :goto_28
    return v3

    .line 699
    :sswitch_29
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_2e
    :goto_2e
    :sswitch_2e
    move v3, v6

    .line 770
    goto :goto_28

    .line 703
    :sswitch_30
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 712
    :sswitch_36
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_2e

    .line 716
    :sswitch_3e
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 717
    .local v1, val:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, value:Z
    if-ne v1, v6, :cond_49

    .line 720
    const/4 v2, 0x1

    .line 722
    :cond_49
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 723
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, v8, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_2e

    .line 728
    .end local v1       #val:I,
    .end local v2       #value:Z,
    :sswitch_54
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 729
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, v8, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 730
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    goto :goto_2e

    .line 740
    :sswitch_67
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 743
    :sswitch_6d
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 753
    :sswitch_73
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 762
    :sswitch_79
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2e

    .line 765
    :sswitch_7f
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_2e

    .line 697
    nop

    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_30
        0x3 -> :sswitch_67
        0x4 -> :sswitch_36
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_2e
        0x7 -> :sswitch_73
        0x8 -> :sswitch_2e
        0x9 -> :sswitch_79
        0x64 -> :sswitch_79
        0x65 -> :sswitch_79
        0x66 -> :sswitch_7f
        0x67 -> :sswitch_79
        0x68 -> :sswitch_3e
        0x69 -> :sswitch_54
    .end sparse-switch
.end method
