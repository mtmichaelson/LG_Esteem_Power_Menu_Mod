.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;



# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x1f4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const-string v9, "0"

    const-string v7, "BluetoothService"

    .line 788
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_1b6

    .line 902
    :cond_d
    :goto_d
    return-void

    .line 790
    :pswitch_e
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 800
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_1ca

    goto :goto_d

    .line 802
    :pswitch_1c
    const-string v5, "BluetoothService"

    const-string v5, "Registering hfag record"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v5, "hfag"

    invoke-static {v5}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 804
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v8, v7, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 808
    :pswitch_3d
    const-string v5, "BluetoothService"

    const-string v5, "Registering hsag record"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v5, "hsag"

    invoke-static {v5}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 810
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 814
    :pswitch_5e
    const-string v5, "BluetoothService"

    const-string v5, "Registering opush record"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string/jumbo v5, "opush"

    invoke-static {v5}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 816
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v8, v7, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 820
    :pswitch_80
    const-string v5, "BluetoothService"

    const-string v5, "Registering pbap record"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string/jumbo v5, "pbap"

    invoke-static {v5}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto :goto_d

    .line 827
    :pswitch_8e
    const-string v5, "BluetoothService"

    const-string v5, "Received MESSAGE_FINISH_DISABLE"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v6

    invoke-static {v5, v6}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_d

    .line 835
    :pswitch_a2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 836
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 837
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 838
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 842
    .end local v0       #address:Ljava/lang/String;,
    :pswitch_b4
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 843
    .local v3, mode:I
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 847
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v6, 0x15

    invoke-virtual {v5, v6, v10}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_d

    .line 851
    .end local v3       #mode:I,
    :pswitch_c7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 852
    .restart local v0       #address:Ljava/lang/String;,
    if-eqz v0, :cond_d

    .line 853
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto/16 :goto_d

    .line 860
    .end local v0       #address:Ljava/lang/String;,
    :pswitch_d4
    const-string v5, "BluetoothService"

    const-string v5, "Received BT_BOOTUP message"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string/jumbo v5, "service.brcm.bt.soft_onoff"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, soft_onoff_prop:Ljava/lang/String;
    if-eqz v4, :cond_ec

    const-string v5, "0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 865
    :cond_ec
    const-string/jumbo v5, "service.brcm.bt.hcid_active"

    const-string v6, "0"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string/jumbo v5, "service.brcm.bt.srv_active"

    const-string v6, "0"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string/jumbo v5, "service.brcm.bt.btld"

    const-string v6, "0"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string/jumbo v5, "service.brcm.bt.activation"

    const-string v6, "0"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_10c
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 872
    .local v1, bluetoothOn:I
    if-lez v1, :cond_124

    .line 873
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v5, v8}, Landroid/server/BluetoothService;->enable(Z)Z

    .line 876
    :cond_124
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.bluetooth.checkVoiceData"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 881
    .end local v1       #bluetoothOn:I,
    .end local v2       #intent:Landroid/content/Intent;,
    .end local v4       #soft_onoff_prop:Ljava/lang/String;,
    :pswitch_136
    const-string v5, "BluetoothService"

    const-string v5, "Received AVRCP_PASS_THROUGH_TIMEOUT message"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string/jumbo v5, "service.brcm.bt.avrcp_pass_thru"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 885
    :pswitch_147
    const-string v5, "BluetoothService"

    const-string v5, "Oops: Received MESSAGE_PROFILE_DISCONNECT_TIMEOUT"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 887
    const-string v5, "BluetoothService"

    const-string v5, "Oops: Force to disable BT even though HSP/HFP is yet to be disconnected"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_15d
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 890
    const-string v5, "BluetoothService"

    const-string v5, "Oops: Force to disable BT even though A2DP is yet to be disconnected"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_16c
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 893
    const-string v5, "BluetoothService"

    const-string v5, "Oops: Force to disable BT even though HID is yet to be disconnected"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_17b
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    .line 896
    const-string v5, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oops: mAclLinkCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", for BT down"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_1a7
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1b3

    move v6, v8

    :goto_1ae
    invoke-static {v5, v6}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_d

    :cond_1b3
    const/4 v6, 0x0

    goto :goto_1ae

    .line 788
    nop

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_e
        :pswitch_8e
        :pswitch_a2
        :pswitch_b4
        :pswitch_c7
        :pswitch_d4
        :pswitch_136
        :pswitch_147
    .end packed-switch

    .line 800
    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_3d
        :pswitch_5e
        :pswitch_80
    .end packed-switch
.end method
