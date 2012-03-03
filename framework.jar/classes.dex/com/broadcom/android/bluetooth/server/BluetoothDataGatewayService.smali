.class public Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
.super Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;
.source "BluetoothDataGatewayService.java"



# static fields
.field public static final BLUETOOTH_DUN_DG_SERVICE_ID:B = 0x2t

.field public static final BLUETOOTH_FAX_DG_SERVICE_ID:B = 0x3t

.field public static final BLUETOOTH_SPP_CONNECTED:I = 0x2

.field public static final BLUETOOTH_SPP_CONNECTED_TO_HOST:I = 0x2

.field public static final BLUETOOTH_SPP_CONNECTING_TO_HOST:I = 0x4

.field public static final BLUETOOTH_SPP_CONNECTING_TO_HOST_FAILED:I = 0x5

.field public static final BLUETOOTH_SPP_DATA_RECEIVED:I = 0x7

.field public static final BLUETOOTH_SPP_DATA_SENT:I = 0x6

.field public static final BLUETOOTH_SPP_DG_SERVICE_ID:B = 0x1t

.field public static final BLUETOOTH_SPP_DISCONNECTED:I = 0x3

.field public static final BLUETOOTH_SPP_PORT_CREATED:I = 0x0

.field public static final BLUETOOTH_SPP_PORT_DISABLED:I = 0x8

.field public static final BLUETOOTH_SPP_PORT_ENABLED:I = 0x1

.field public static final BLUETOOTH_SPP_PORT_ID_INVALID:B = -0x1t

.field public static final BLUETOOTH_SPP_PORT_STATE_ERROR:I = -0x1

.field public static final BLUETOOTH_SPP_PORT_STATE_UNKNOWN:I = 0x64

.field private static final DATA_GATEWAY_DISABLED:I = 0x0

.field private static final DATA_GATEWAY_ENABLED:I = 0x1

.field public static final DATA_GATEWAY_MAX_SPP_PORT:I = 0x5

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDataGatewayService"



# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataGatewayNativeData:I

.field private mIsFinish:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSppCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 88
    invoke-static {}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->classInitNative()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "isAppService"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    .line 149
    if-nez p2, :cond_24

    .line 150
    new-instance v0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;-><init>(Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;)V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    :goto_23
    return-void

    .line 168
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_23
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupBluetoothDataGatewayDataNative()V
.end method

.method private native cleanupSerialPortNative(B)V
.end method

.method private native dataGatewayCloseNative(BB)V
.end method

.method private native dataGatewayDisableNative()V
.end method

.method private native dataGatewayEnableNative()V
.end method

.method private native dataGatewayListenNative(BBLjava/lang/String;B)V
.end method

.method private native dataGatewayOpenNative(Ljava/lang/String;BBLjava/lang/String;B)V
.end method

.method private native dataGatewayShutdownNative(BB)V
.end method

.method private native getSerialPortStatusNative(B)I
.end method

.method private native initBluetoothDataGatewayDataNative()V
.end method

.method private onDataArrivedOnPort(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 531
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Arrived on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    packed-switch p1, :pswitch_data_3e

    .line 553
    .end local p0       
    :goto_23
    :pswitch_23
    return-void

    .line 536
    .restart local p0       
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortDataArrived(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 537
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortDataArrived() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 532
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private onDataGatewayClosed(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 503
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Closed on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    packed-switch p1, :pswitch_data_3e

    .line 527
    .end local p0       
    :goto_23
    :pswitch_23
    return-void

    .line 508
    .restart local p0       
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortDisconnected(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 509
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortDisconnected() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 504
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private onDataGatewayEnabled()V
    .registers 3

    .prologue
    .line 420
    const-string v0, "BluetoothDataGatewayService"

    const-string v1, "#### Data Gateway Enabled ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method private onDataGatewayListen(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 426
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Listen on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    packed-switch p1, :pswitch_data_3e

    .line 448
    .end local p0       
    :goto_23
    :pswitch_23
    return-void

    .line 431
    .restart local p0       
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onSppServerPortEnabled(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 432
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 433
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onSppServerPortEnabled() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 427
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private onDataGatewayOpen(BBLjava/lang/String;)V
    .registers 8
    .parameter "serviceId"
    .parameter "appId"
    .parameter "bdAddress"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 477
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Connected on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    packed-switch p1, :pswitch_data_48

    .line 500
    .end local p0       
    :goto_2d
    :pswitch_2d
    return-void

    .line 482
    .restart local p0       
    :pswitch_2e
    :try_start_2e
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2, p3}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortConnected(BLjava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3d} :catch_3e

    goto :goto_2d

    .line 483
    :catch_3e
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortConnectingToHost() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 478
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method private onDataGatewayOpening(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 451
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Openning on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    packed-switch p1, :pswitch_data_3e

    .line 474
    .end local p0       
    :goto_23
    :pswitch_23
    return-void

    .line 456
    .restart local p0       
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortConnectingToHost(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 457
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 458
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortConnectingToHost() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 452
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private native setSerialPortStatusNative(BI)V
.end method

.method private native sppReadNative(B)[B
.end method

.method private native sppWriteNative(BI[B)I
.end method

.method private native waitForDataOnPortNative(B)V
.end method


# virtual methods
.method public declared-synchronized cleanupSerialPort(B)V
    .registers 5
    .parameter "appId"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->cleanupSerialPortNative(B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 412
    :goto_4
    monitor-exit p0

    return-void

    .line 409
    :catch_6
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "cleanupSerialPortNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 408
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayClose(BB)V
    .registers 6
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayCloseNative(BB)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 297
    :goto_4
    monitor-exit p0

    return-void

    .line 293
    :catch_6
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayCloseNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 292
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayDisable()V
    .registers 4

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayDisableNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 242
    :goto_4
    monitor-exit p0

    return-void

    .line 239
    :catch_6
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayDisableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 238
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayEnable()V
    .registers 4

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayEnableNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 228
    :goto_4
    monitor-exit p0

    return-void

    .line 225
    :catch_6
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayEnableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 224
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayListen(BBLjava/lang/String;B)V
    .registers 8
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayListenNative(BBLjava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 262
    :goto_4
    monitor-exit p0

    return-void

    .line 258
    :catch_6
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayListenNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 257
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    .registers 9
    .parameter "bdAddress"
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayOpenNative(Ljava/lang/String;BBLjava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 280
    :goto_4
    monitor-exit p0

    return-void

    .line 277
    :catch_6
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayOpenNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 276
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayShutdown(BB)V
    .registers 6
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayShutdownNative(BB)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 315
    :goto_4
    monitor-exit p0

    return-void

    .line 311
    :catch_6
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayShutdownNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 310
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->finish()V

    .line 119
    invoke-super {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->finalize()V

    .line 120
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 108
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->cleanupBluetoothDataGatewayDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 112
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 114
    :cond_b
    monitor-exit p0

    return-void

    .line 109
    :catch_d
    move-exception v0

    .line 110
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "Unable to cleanup data gateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 106
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFirstAvailableSerialPort()B
    .registers 6

    .prologue
    .line 201
    monitor-enter p0

    const/4 v2, -0x1

    .line 202
    .local v2, portState:I
    const/4 v1, 0x0

    .local v1, i:B
    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_21

    .line 204
    :try_start_6
    invoke-direct {p0, v1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->getSerialPortStatusNative(B)I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_11

    move-result v2

    .line 208
    :goto_a
    const/16 v3, 0x64

    if-ne v2, v3, :cond_1d

    move v3, v1

    .line 213
    :goto_f
    monitor-exit p0

    return v3

    .line 205
    :catch_11
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v3, "BluetoothDataGatewayService"

    const-string v4, "getSerialPortStatusNative failed in getFirstAvailableSerialPort"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 201
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_1a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 202
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    int-to-byte v1, v3

    goto :goto_3

    .line 213
    :cond_21
    const/4 v3, -0x1

    goto :goto_f
.end method

.method public declared-synchronized getSerialPortStatus(B)I
    .registers 5
    .parameter "appId"

    .prologue
    .line 377
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->getSerialPortStatusNative(B)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result v1

    .line 380
    :goto_5
    monitor-exit p0

    return v1

    .line 378
    :catch_7
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayShutdownNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 380
    const/4 v1, -0x1

    goto :goto_5

    .line 377
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->initBluetoothDataGatewayDataNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    .registers 5
    .parameter "portId"
    .parameter "callback"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_19

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    :goto_d
    monitor-exit p0

    return-void

    .line 184
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_d

    .line 180
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSerialPortStatus(BI)V
    .registers 6
    .parameter "appId"
    .parameter "status"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->setSerialPortStatusNative(BI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 397
    :goto_4
    monitor-exit p0

    return-void

    .line 394
    :catch_6
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "setSerialPortStatusNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_4

    .line 393
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppRead(B)[B
    .registers 5
    .parameter "appId"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->sppReadNative(B)[B
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 349
    :goto_5
    monitor-exit p0

    return-object v1

    .line 347
    :catch_7
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "sppReadNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 349
    const/4 v1, 0x0

    goto :goto_5

    .line 346
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppWrite(BI[B)I
    .registers 7
    .parameter "appId"
    .parameter "length"
    .parameter "dataBuffer"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->sppWriteNative(BI[B)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result v1

    .line 332
    :goto_5
    monitor-exit p0

    return v1

    .line 330
    :catch_7
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "sppWriteNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 332
    const/4 v1, -0x1

    goto :goto_5

    .line 329
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterSppCallback(I)V
    .registers 4
    .parameter "portId"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForDataOnPort(B)V
    .registers 5
    .parameter "appId"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->waitForDataOnPortNative(B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 367
    :goto_4
    monitor-exit p0

    return-void

    .line 364
    :catch_6
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "waitForDataOnPort Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_4

    .line 363
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method
