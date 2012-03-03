.class public Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDataGateway.java"



# static fields
.field private static final DBG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.broadcom.bt.app.system.DataGatewayService"

.field private static final TAG:Ljava/lang/String; = "BluetoothDataGateway"



# instance fields
.field private mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 88
    const-string v0, "BluetoothDataGateway"

    const-string v1, "BluetoothDataGateway Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    .line 90
    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 58
    const-string v1, "com.broadcom.bt.app.system.DataGatewayService"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 59
    const-string v1, "BluetoothDataGateway"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    .line 65
    :goto_10
    return v1

    .line 64
    :cond_11
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-direct {v0}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;-><init>()V

    .line 65
    .local v0, p:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BluetoothTestModeService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public dataGatewayClose(BB)V
    .registers 6
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayClose(BB)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 266
    :goto_5
    return-void

    .line 262
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayClose Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public declared-synchronized dataGatewayDisable()V
    .registers 4

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayDisable()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    .line 217
    :goto_6
    monitor-exit p0

    return-void

    .line 214
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayDisable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_6

    .line 213
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayEnable()V
    .registers 4

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayEnable()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    .line 204
    :goto_6
    monitor-exit p0

    return-void

    .line 201
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayEnable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_6

    .line 200
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_12
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
    .line 231
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    .line 236
    :goto_6
    monitor-exit p0

    return-void

    .line 232
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayListen failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_6

    .line 231
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    .registers 13
    .parameter "bdAddress"
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 252
    :goto_a
    return-void

    .line 249
    :catch_b
    move-exception v0

    move-object v6, v0

    .line 250
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothDataGateway"

    const-string v1, "dataGatewayOpen Failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public dataGatewayShutdown(BB)V
    .registers 6
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayShutdown(BB)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 281
    :goto_5
    return-void

    .line 277
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayShutdown Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public declared-synchronized getFirstAvailableSerialPort()B
    .registers 4

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->getFirstAvailableSerialPort()B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result v1

    .line 101
    :goto_7
    monitor-exit p0

    return v1

    .line 99
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothDataGateway"

    const-string v2, "getFirstAvailableSerialPort failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 101
    const/4 v1, -0x1

    goto :goto_7

    .line 98
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSerialPortStatus(B)I
    .registers 5
    .parameter "portId"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->getSerialPortStatus(B)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result v1

    .line 115
    :goto_7
    monitor-exit p0

    return v1

    .line 113
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothDataGateway"

    const-string v2, "getSerialPortStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 115
    const/4 v1, -0x1

    goto :goto_7

    .line 112
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 74
    :try_start_0
    check-cast p1, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    .end local p1       
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4} :catch_6

    .line 75
    const/4 v1, 0x1

    .line 79
    :goto_5
    return v1

    .line 76
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public declared-synchronized registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    .registers 7
    .parameter "portId"
    .parameter "callback"

    .prologue
    const-string v1, "BluetoothDataGateway"

    .line 140
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothDataGateway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerSppCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_21} :catch_23

    .line 146
    :goto_21
    monitor-exit p0

    return-void

    .line 142
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    :try_start_25
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "registerSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2e

    goto :goto_21

    .line 140
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSerialPortStatus(BI)V
    .registers 6
    .parameter "portId"
    .parameter "status"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->setSerialPortStatus(BI)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    .line 131
    :goto_6
    monitor-exit p0

    return-void

    .line 127
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "unregisterSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    goto :goto_6

    .line 126
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppRead(B)[B
    .registers 5
    .parameter "portId"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->sppRead(B)[B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result-object v1

    .line 189
    :goto_7
    monitor-exit p0

    return-object v1

    .line 187
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "sppRead failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    .line 189
    const/4 v1, 0x0

    goto :goto_7

    .line 186
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppWrite(BI[B)I
    .registers 7
    .parameter "portId"
    .parameter "length"
    .parameter "buffer"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->sppWrite(BI[B)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result v1

    .line 174
    :goto_7
    monitor-exit p0

    return v1

    .line 172
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "sppWrite failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    .line 174
    const/4 v1, -0x1

    goto :goto_7

    .line 171
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterSppCallback(I)V
    .registers 5
    .parameter "portId"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->unregisterSppCallback(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    .line 160
    :goto_6
    monitor-exit p0

    return-void

    .line 156
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "unregisterSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    goto :goto_6

    .line 155
    .end local v0       #e:Landroid/os/RemoteException;,
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public waitForDataOnPort(B)V
    .registers 5
    .parameter "appId"

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->waitForDataOnPort(B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 295
    :goto_5
    return-void

    .line 291
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "waitForDataOnPort Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
