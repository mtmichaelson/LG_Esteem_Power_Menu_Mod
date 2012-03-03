.class Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSAP.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/BluetoothSAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;Lcom/broadcom/bt/service/sap/BluetoothSAP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 309
    iget-object v2, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v1

    .line 310
    .local v1, handler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    if-nez v1, :cond_9

    .line 325
    :cond_8
    :goto_8
    return-void

    .line 314
    :cond_9
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;->abortBroadcast()V

    .line 316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.app.sap.action.ON_SAP_CONNECTED"

    sget v3, Lcom/broadcom/bt/service/sap/BluetoothSAP;->ACTION_PREFIX_LENGTH:I

    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 320
    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onConnected(Ljava/lang/String;)V

    goto :goto_8

    .line 321
    :cond_24
    const-string v2, "com.broadcom.bt.app.sap.action.ON_SAP_DISCONNECTED"

    sget v3, Lcom/broadcom/bt/service/sap/BluetoothSAP;->ACTION_PREFIX_LENGTH:I

    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 323
    invoke-interface {v1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onDisconnected()V

    goto :goto_8
.end method
