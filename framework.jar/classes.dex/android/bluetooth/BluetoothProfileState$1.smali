.class Landroid/bluetooth/BluetoothProfileState$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothProfileState.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothProfileState;



# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothProfileState;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x64

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 62
    const-string v3, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, newState:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-static {v3}, Landroid/bluetooth/BluetoothProfileState;->access$200(Landroid/bluetooth/BluetoothProfileState;)I

    move-result v3

    if-nez v3, :cond_2f

    if-eq v2, v6, :cond_2a

    if-nez v2, :cond_2f

    .line 65
    :cond_2a
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(I)V

    .line 78
    .end local v2       #newState:I,
    :cond_2f
    :goto_2f
    return-void

    .line 67
    :cond_30
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 68
    const-string v3, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 69
    .restart local v2       #newState:I,
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-static {v3}, Landroid/bluetooth/BluetoothProfileState;->access$200(Landroid/bluetooth/BluetoothProfileState;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    if-eq v2, v6, :cond_4b

    if-nez v2, :cond_2f

    .line 71
    :cond_4b
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(I)V

    goto :goto_2f

    .line 73
    .end local v2       #newState:I,
    :cond_51
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 74
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-static {v3}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 75
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$1;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(I)V

    goto :goto_2f
.end method
