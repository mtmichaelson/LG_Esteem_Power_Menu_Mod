.class Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;
.super Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;
.source "BluetoothPBAP.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBAPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)V
    .registers 2
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "opCode"
    .parameter "fileName"
    .parameter "remoteAddress"
    .parameter "remoteName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 744
    return-void
.end method

.method public onPbapAuth()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 747
    return-void
.end method

.method public onPbapClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v0

    .line 751
    .local v0, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-eqz v0, :cond_b

    .line 752
    invoke-interface {v0}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapClosed()V

    .line 754
    :cond_b
    return-void
.end method

.method public onPbapConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v0

    .line 758
    .local v0, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-eqz v0, :cond_b

    .line 759
    invoke-interface {v0}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapConnected()V

    .line 761
    :cond_b
    return-void
.end method

.method public onPbapOperCompleted(Ljava/lang/String;BB)V
    .registers 6
    .parameter "fileName"
    .parameter "opCode"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;->this$0:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    move-result-object v0

    .line 766
    .local v0, handler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    if-eqz v0, :cond_b

    .line 767
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;->onPbapOperCompleted(Ljava/lang/String;BB)V

    .line 769
    :cond_b
    return-void
.end method
