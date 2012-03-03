.class Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHIDService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;



# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v8, -0x8000

    const/4 v7, 0x0

    const-string v6, "BluetoothHIDService"

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 77
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 80
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, state:I
    packed-switch v3, :pswitch_data_e4

    .line 119
    .end local v3       #state:I,
    :cond_44
    :goto_44
    return-void

    .line 84
    .restart local v3       #state:I,
    :pswitch_45
    const-string v4, "BluetoothHIDService"

    const-string v4, "    ...BT state on"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$000(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    goto :goto_44

    .line 88
    :pswitch_52
    const-string v4, "BluetoothHIDService"

    const-string v4, "    ...BT state off"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$100(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    goto :goto_44

    .line 92
    .end local v3       #state:I,
    :cond_5f
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 93
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, bondState:I
    const-string v4, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ...bondState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    packed-switch v1, :pswitch_data_ec

    goto :goto_44

    .line 104
    :pswitch_89
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-virtual {v4, v2, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 105
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 106
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 98
    :pswitch_a0
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    const/16 v5, 0x64

    invoke-virtual {v4, v2, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_44

    .line 101
    :pswitch_a8
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-virtual {v4, v2, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_44

    .line 110
    .end local v1       #bondState:I,
    :cond_ae
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 111
    const-string v4, "BluetoothHIDService"

    const-string v4, "    ...ACL disconnected"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-enter p0

    .line 113
    :try_start_be
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_de

    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 114
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-virtual {v4, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 115
    .restart local v3       #state:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$300(Lcom/broadcom/bt/service/hid/BluetoothHIDService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 117
    .end local v3       #state:I,
    :cond_de
    monitor-exit p0

    goto/16 :goto_44

    :catchall_e1
    move-exception v4

    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_be .. :try_end_e3} :catchall_e1

    throw v4

    .line 82
    :pswitch_data_e4
    .packed-switch 0xc
        :pswitch_45
        :pswitch_52
    .end packed-switch

    .line 96
    :pswitch_data_ec
    .packed-switch 0xa
        :pswitch_89
        :pswitch_a8
        :pswitch_a0
    .end packed-switch
.end method
