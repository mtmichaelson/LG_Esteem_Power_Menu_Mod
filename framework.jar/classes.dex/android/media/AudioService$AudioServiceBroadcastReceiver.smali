.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;



# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 1955
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1955
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1958
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1960
    .local v4, action:Ljava/lang/String;
    const-string v21, "android.intent.action.DOCK_EVENT"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 1961
    const-string v21, "android.intent.extra.DOCK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1964
    .local v11, dockState:I
    packed-switch v11, :pswitch_data_7a8

    .line 1973
    const/4 v9, 0x0

    .line 1975
    .local v9, config:I
    :goto_21
    const/16 v21, 0x3

    move/from16 v0, v21

    move v1, v9

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2279
    .end local v9       #config:I,
    .end local v11       #dockState:I,
    .end local p1       
    :cond_29
    :goto_29
    return-void

    .line 1966
    .restart local v11       #dockState:I,
    .restart local p1       
    :pswitch_2a
    const/4 v9, 0x7

    .line 1967
    .restart local v9       #config:I,
    goto :goto_21

    .line 1969
    .end local v9       #config:I,
    :pswitch_2c
    const/4 v9, 0x6

    .line 1970
    .restart local v9       #config:I,
    goto :goto_21

    .line 1976
    .end local v9       #config:I,
    .end local v11       #dockState:I,
    :cond_2e
    const-string v21, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12f

    .line 1977
    const-string v21, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1979
    .local v19, state:I
    const-string v21, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 1980
    .local v8, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1981
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x80

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x80

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b8

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 1984
    .local v12, isConnected:Z
    :goto_90
    if-eqz v12, :cond_cb

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_cb

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_cb

    .line 1986
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v21

    if-eqz v21, :cond_bd

    .line 1987
    if-nez v19, :cond_29

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1981
    .end local v12       #isConnected:Z,
    :cond_b8
    const/16 v21, 0x0

    move/from16 v12, v21

    goto :goto_90

    .line 1995
    .restart local v12       #isConnected:Z,
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1997
    :cond_cb
    if-nez v12, :cond_29

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_dd

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    .line 2000
    :cond_dd
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v21

    if-eqz v21, :cond_106

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4702(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2012
    :cond_f8
    :goto_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2007
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Z

    move-result v21

    if-eqz v21, :cond_f8

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_f8

    .line 2014
    .end local v5       #address:Ljava/lang/String;,
    .end local v8       #btDevice:Landroid/bluetooth/BluetoothDevice;,
    .end local v12       #isConnected:Z,
    .end local v19       #state:I,
    .restart local p1       
    :cond_12f
    const-string v21, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_272

    .line 2015
    const-string v21, "android.bluetooth.headset.extra.STATE"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2018
    .restart local v19       #state:I,
    const-string v21, "android.bluetooth.device.extra.NUM_HF_CONNECTED"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2021
    .local v17, numHeadsetsConnected:I
    const/16 v10, 0x10

    .line 2022
    .local v10, device:I
    const-string v21, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 2023
    .restart local v8       #btDevice:Landroid/bluetooth/BluetoothDevice;,
    const/4 v5, 0x0

    .line 2024
    .restart local v5       #address:Ljava/lang/String;,
    if-eqz v8, :cond_178

    .line 2025
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2026
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    .line 2027
    .local v7, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v7, :cond_178

    .line 2028
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v21

    sparse-switch v21, :sswitch_data_7b0

    .line 2050
    .end local v7       #btClass:Landroid/bluetooth/BluetoothClass;,
    :cond_178
    :goto_178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f5

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 2056
    .restart local v12       #isConnected:Z,
    :goto_1ad
    if-eqz v12, :cond_1fa

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1fa

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const-string v22, "[BTUI] onReceive() : [HEADSET] is disconnected => [remove] mConnectedDevices"

    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 2060
    const/16 v21, 0x0

    move v0, v10

    move/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Z)Z

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_29

    .line 2034
    .end local v12       #isConnected:Z,
    .restart local v7       #btClass:Landroid/bluetooth/BluetoothClass;,
    .restart local p1       
    :sswitch_1f2
    const/16 v10, 0x20

    goto :goto_178

    .line 2050
    .end local v7       #btClass:Landroid/bluetooth/BluetoothClass;,
    .end local p1       
    :cond_1f5
    const/16 v21, 0x0

    move/from16 v12, v21

    goto :goto_1ad

    .line 2066
    .restart local v12       #isConnected:Z,
    :cond_1fa
    if-nez v12, :cond_29

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const-string v22, "[BTUI] onReceive() : [HEADSET] is connected => [put] mConnectedDevices"

    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 2073
    if-eqz v8, :cond_242

    .line 2074
    const-string/jumbo v3, "persist.service.btui.isCarkit"

    .line 2075
    .local v3, PROPERTY_BTUI_VC_CARKIT:Ljava/lang/String;
    const-string v21, "0"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    .line 2077
    .restart local v7       #btClass:Landroid/bluetooth/BluetoothClass;,
    if-eqz v7, :cond_242

    .line 2078
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v21

    const/16 v22, 0x408

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_23a

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v21

    const/16 v22, 0x420

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_242

    .line 2081
    :cond_23a
    const-string v21, "1"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    .end local v3       #PROPERTY_BTUI_VC_CARKIT:Ljava/lang/String;,
    .end local v7       #btClass:Landroid/bluetooth/BluetoothClass;,
    :cond_242
    const/16 v21, 0x1

    move v0, v10

    move/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Z)Z

    goto/16 :goto_29

    .line 2095
    .end local v5       #address:Ljava/lang/String;,
    .end local v8       #btDevice:Landroid/bluetooth/BluetoothDevice;,
    .end local v10       #device:I,
    .end local v12       #isConnected:Z,
    .end local v17       #numHeadsetsConnected:I,
    .end local v19       #state:I,
    .restart local p1       
    :cond_272
    const-string v21, "android.intent.action.HEADSET_PLUG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_604

    .line 2096
    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2097
    .restart local v19       #state:I,
    const-string v21, "microphone"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 2098
    .local v14, microphone:I
    const-string/jumbo v21, "speaker"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2099
    .local v18, speaker:I
    const-string v21, "anc"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2100
    .local v6, anc:I
    const-string/jumbo v21, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2102
    .local v15, name:Ljava/lang/String;
    const-string v21, "AudioService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_HEADSET_PLUG microphone:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "speake:r"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    if-eqz v14, :cond_341

    if-eqz v18, :cond_341

    .line 2105
    const-string v21, "AudioService"

    const-string v22, "headset"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2107
    .restart local v12       #isConnected:Z,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x2000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    .line 2108
    .local v13, isancConnected:Z
    if-nez v19, :cond_424

    if-eqz v12, :cond_424

    if-nez v13, :cond_424

    .line 2109
    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    .end local v12       #isConnected:Z,
    .end local v13       #isancConnected:Z,
    :cond_341
    :goto_341
    if-eqz v14, :cond_38d

    if-nez v18, :cond_38d

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/high16 v22, 0x10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2135
    .restart local v12       #isConnected:Z,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/high16 v22, 0x40

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    .line 2136
    .restart local v13       #isancConnected:Z,
    if-nez v19, :cond_4b3

    if-eqz v12, :cond_4b3

    .line 2137
    const/high16 v21, 0x10

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/high16 v22, 0x10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    .end local v12       #isConnected:Z,
    .end local v13       #isancConnected:Z,
    :cond_38d
    :goto_38d
    if-nez v14, :cond_3e2

    if-eqz v18, :cond_3e2

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2163
    .restart local v12       #isConnected:Z,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x4000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    .line 2164
    .restart local v13       #isancConnected:Z,
    if-nez v19, :cond_542

    if-eqz v12, :cond_542

    if-nez v13, :cond_542

    .line 2165
    const-string v21, "AudioService"

    const-string v22, "if (state == 0 && isConnected && !isancConnected) {"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    .end local v12       #isConnected:Z,
    .end local v13       #isancConnected:Z,
    :cond_3e2
    :goto_3e2
    if-nez v14, :cond_29

    if-nez v18, :cond_29

    .line 2193
    const-string v21, "AudioService"

    const-string/jumbo v22, "no mic headset"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2195
    .restart local v12       #isConnected:Z,
    if-nez v19, :cond_5d9

    if-eqz v12, :cond_5d9

    .line 2196
    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2113
    .restart local v13       #isancConnected:Z,
    :cond_424
    if-nez v19, :cond_446

    if-eqz v13, :cond_446

    .line 2114
    const/16 v21, 0x2000

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x2000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_341

    .line 2118
    :cond_446
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_341

    if-nez v12, :cond_341

    if-nez v13, :cond_341

    .line 2119
    const-string v21, "Headset"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_485

    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_485

    .line 2120
    const/16 v21, 0x2000

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x2000

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_341

    .line 2124
    :cond_485
    const-string v21, "Headset"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_341

    if-nez v6, :cond_341

    .line 2125
    const/16 v21, 0x4

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x4

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_341

    .line 2141
    :cond_4b3
    if-nez v19, :cond_4d5

    if-eqz v13, :cond_4d5

    .line 2142
    const/high16 v21, 0x40

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/high16 v22, 0x40

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_38d

    .line 2146
    :cond_4d5
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_38d

    if-nez v12, :cond_38d

    if-nez v13, :cond_38d

    .line 2147
    const-string v21, "Headset"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_514

    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_514

    .line 2148
    const/high16 v21, 0x40

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/high16 v23, 0x40

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_38d

    .line 2152
    :cond_514
    const-string v21, "Headset"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_38d

    if-nez v6, :cond_38d

    .line 2153
    const/high16 v21, 0x10

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/high16 v23, 0x10

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_38d

    .line 2170
    :cond_542
    if-nez v19, :cond_56c

    if-eqz v13, :cond_56c

    .line 2171
    const-string v21, "AudioService"

    const-string/jumbo v22, "} else if (state == 0 && isancConnected) {"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const/16 v21, 0x4000

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x4000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e2

    .line 2176
    :cond_56c
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e2

    if-nez v12, :cond_3e2

    if-nez v13, :cond_3e2

    .line 2177
    const-string v21, "Headset"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5ab

    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_5ab

    .line 2178
    const/16 v21, 0x4000

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x4000

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e2

    .line 2182
    :cond_5ab
    const-string v21, "Headset"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3e2

    if-nez v6, :cond_3e2

    .line 2183
    const/16 v21, 0x8

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x8

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e2

    .line 2200
    .end local v13       #isancConnected:Z,
    :cond_5d9
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    if-nez v12, :cond_29

    .line 2201
    const/16 v21, 0x8

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x8

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2209
    .end local v6       #anc:I,
    .end local v12       #isConnected:Z,
    .end local v14       #microphone:I,
    .end local v15       #name:Ljava/lang/String;,
    .end local v18       #speaker:I,
    .end local v19       #state:I,
    :cond_604
    const-string v21, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_64f

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "preferred_tty_mode"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    packed-switch v21, :pswitch_data_7be

    .line 2225
    const-string/jumbo v20, "off"

    .line 2227
    .local v20, tty_mode:Ljava/lang/String;
    :goto_628
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "tty_mode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2215
    .end local v20       #tty_mode:Ljava/lang/String;,
    :pswitch_645
    const-string v20, "full"

    .line 2216
    .restart local v20       #tty_mode:Ljava/lang/String;,
    goto :goto_628

    .line 2218
    .end local v20       #tty_mode:Ljava/lang/String;,
    :pswitch_648
    const-string/jumbo v20, "vco"

    .line 2219
    .restart local v20       #tty_mode:Ljava/lang/String;,
    goto :goto_628

    .line 2221
    .end local v20       #tty_mode:Ljava/lang/String;,
    :pswitch_64c
    const-string v20, "hco"

    .line 2222
    .restart local v20       #tty_mode:Ljava/lang/String;,
    goto :goto_628

    .line 2228
    .end local v20       #tty_mode:Ljava/lang/String;,
    :cond_64f
    const-string v21, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6c3

    .line 2229
    const-string v21, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2231
    .restart local v19       #state:I,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21

    .line 2232
    :try_start_673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_6b7

    .line 2233
    packed-switch v19, :pswitch_data_7c8

    .line 2241
    const/16 v19, -0x1

    .line 2244
    :goto_688
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_6b7

    .line 2245
    new-instance v16, Landroid/content/Intent;

    const-string v22, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2246
    .local v16, newIntent:Landroid/content/Intent;
    const-string v22, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2250
    .end local v16       #newIntent:Landroid/content/Intent;,
    :cond_6b7
    monitor-exit v21

    goto/16 :goto_29

    :catchall_6ba
    move-exception v22

    monitor-exit v21
    :try_end_6bc
    .catchall {:try_start_673 .. :try_end_6bc} :catchall_6ba

    throw v22

    .line 2235
    :pswitch_6bd
    const/16 v19, 0x1

    .line 2236
    goto :goto_688

    .line 2238
    :pswitch_6c0
    const/16 v19, 0x0

    .line 2239
    goto :goto_688

    .line 2251
    .end local v19       #state:I,
    :cond_6c3
    const-string v21, "HDMI_CONNECTED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6f6

    .line 2252
    const-string v21, "AudioService"

    const-string v22, "HDMI connected"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/16 v21, 0x800

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x800

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2257
    :cond_6f6
    const-string v21, "HDMI_DISCONNECTED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_726

    .line 2258
    const-string v21, "AudioService"

    const-string v22, "HDMI disconnected"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/16 v21, 0x800

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x800

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2263
    :cond_726
    const-string v21, "android.intent.action.FM"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_29

    .line 2264
    const-string v21, "AudioService"

    const-string v22, "FM Intent received"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2266
    .restart local v19       #state:I,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x1000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2267
    .restart local v12       #isConnected:Z,
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_786

    if-nez v12, :cond_786

    .line 2268
    const/16 v21, 0x1000

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x1000

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2272
    :cond_786
    if-nez v19, :cond_29

    if-eqz v12, :cond_29

    .line 2273
    const/16 v21, 0x1000

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x1000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 1964
    :pswitch_data_7a8
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2c
    .end packed-switch

    .line 2028
    :sswitch_data_7b0
    .sparse-switch
        0x404 -> :sswitch_1f2
        0x408 -> :sswitch_1f2
        0x420 -> :sswitch_1f2
    .end sparse-switch

    .line 2211
    :pswitch_data_7be
    .packed-switch 0x1
        :pswitch_645
        :pswitch_64c
        :pswitch_648
    .end packed-switch

    .line 2233
    :pswitch_data_7c8
    .packed-switch 0x0
        :pswitch_6c0
        :pswitch_6bd
    .end packed-switch
.end method
