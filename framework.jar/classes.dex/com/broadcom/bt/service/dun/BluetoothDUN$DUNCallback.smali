.class Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;
.super Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;
.source "BluetoothDUN.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dun/BluetoothDUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DUNCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;)V
    .registers 2
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortStateChangeEvent(BBLjava/lang/String;)V
    .registers 6
    .parameter "appId"
    .parameter "portState"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-static {v1}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->access$100(Lcom/broadcom/bt/service/dun/BluetoothDUN;)Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    move-result-object v0

    .line 629
    .local v0, handler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    if-eqz v0, :cond_b

    .line 630
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;->onPortStateChangeEvent(BBLjava/lang/String;)V

    .line 632
    :cond_b
    return-void
.end method
