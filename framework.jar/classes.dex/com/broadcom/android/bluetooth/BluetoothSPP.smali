.class public Lcom/broadcom/android/bluetooth/BluetoothSPP;
.super Ljava/lang/Object;
.source "BluetoothSPP.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;
    }
.end annotation


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.broadcom.bt.service.spp.action.STATE_CHANGED"

.field private static final BLUETOOTH_SPP_PORT_TYPE_CLIENT:B = 0x2t

.field private static final BLUETOOTH_SPP_PORT_TYPE_INVALID:B = -0x1t

.field private static final BLUETOOTH_SPP_PORT_TYPE_SERVER:B = 0x1t

.field private static final BLUETOOTH_SPP_SEC_ATHN_MASK:B = 0x11t

.field private static final BLUETOOTH_SPP_SEC_AUTH_MASK:B = 0x1t

.field private static final BLUETOOTH_SPP_SEC_ENCR_MASK:B = 0x24t

.field private static final BLUETOOTH_SPP_SEC_NONE_MASK:B = 0x0t

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.broadcom.bt.service.spp.extra.STATE"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSPP"



# instance fields
.field private dataReceived:[B

.field private mAppId:B

.field private mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

.field private mCallback:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

.field private mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

.field private mPortId:B

.field private mPortState:I

.field private mPortType:B

.field private mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

.field private mSerialPortName:Ljava/lang/String;



# direct methods
.method public constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothDataGateway;)V
    .registers 4
    .parameter "proxy"

    .prologue
    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "AndroidBTSerialPort"

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    .line 359
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;

    invoke-direct {v0, p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;-><init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mCallback:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    .line 72
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    .line 74
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    .line 75
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    .line 76
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    .line 78
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;-><init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;Lcom/broadcom/android/bluetooth/BluetoothSPP$1;)V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/android/bluetooth/BluetoothSPP;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I

    return v0
.end method

.method static synthetic access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I

    return p1
.end method

.method static synthetic access$200(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->waitForData()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/broadcom/android/bluetooth/BluetoothSPP;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    return v0
.end method

.method static synthetic access$500(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    return-object v0
.end method

.method private getFirstAvailableSerialPort()B
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->getFirstAvailableSerialPort()B

    move-result v0

    return v0
.end method

.method private isPortIdValid(B)Z
    .registers 4
    .parameter "portId"

    .prologue
    const/4 v1, 0x0

    .line 122
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    move v0, v1

    goto :goto_5
.end method

.method private registerSppCallback()V
    .registers 4

    .prologue
    .line 138
    const-string v0, "BluetoothSPP"

    const-string v1, "Register SPP callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mCallback:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V

    .line 141
    return-void
.end method

.method private unregisterSppCallback()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->unregisterSppCallback(I)V

    .line 148
    return-void
.end method

.method private waitForData()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->waitForDataOnPort(B)V

    .line 339
    return-void
.end method


# virtual methods
.method public connect(BLjava/lang/String;)V
    .registers 9
    .parameter "portId"
    .parameter "remoteAddress"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 276
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP connect invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_13
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-byte v5, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V

    .line 284
    return-void
.end method

.method public create(B)Z
    .registers 5
    .parameter "portId"

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->getFirstAvailableSerialPort()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    .line 159
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    .line 168
    :goto_d
    return v0

    .line 163
    :cond_e
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->registerSppCallback()V

    .line 166
    iput-byte p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    .line 167
    invoke-virtual {p0, p1, v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 168
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public destroy(B)V
    .registers 4
    .parameter "portId"

    .prologue
    const/4 v1, -0x1

    .line 293
    invoke-virtual {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->disable(B)V

    .line 294
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->unregisterSppCallback()V

    .line 296
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 297
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    .line 298
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    .line 299
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    .line 300
    return-void
.end method

.method public disable(B)V
    .registers 5
    .parameter "portId"

    .prologue
    const/4 v2, 0x1

    .line 249
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP disable invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_f
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    if-ne v0, v2, :cond_20

    .line 255
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v2, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayShutdown(BB)V

    .line 264
    :goto_1a
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 266
    return-void

    .line 261
    :cond_20
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v2, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayClose(BB)V

    goto :goto_1a
.end method

.method public disconnect(B)V
    .registers 5
    .parameter "portId"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 182
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayClose(BB)V

    .line 190
    return-void

    .line 187
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP disconnect invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable(BB)V
    .registers 8
    .parameter "portId"
    .parameter "portType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 201
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-nez v0, :cond_10

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP enable invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_10
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 207
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    .line 208
    iput-byte p2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    .line 209
    invoke-virtual {p0, p1, v3}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 241
    :cond_1d
    :goto_1d
    return-void

    .line 215
    :cond_1e
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V

    .line 217
    iput-byte p2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    goto :goto_1d

    .line 220
    :cond_3b
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    if-eq v0, p2, :cond_1d

    .line 222
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    if-ne v0, v3, :cond_50

    .line 224
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayShutdown(BB)V

    .line 225
    invoke-virtual {p0, p1, v3}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 237
    :goto_4d
    iput-byte p2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    goto :goto_1d

    .line 230
    :cond_50
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayClose(BB)V

    .line 232
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V

    goto :goto_4d
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->destroy(B)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    return-void

    .line 89
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getReceivedData()[B
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B

    return-object v0
.end method

.method public getSerialPortStatus(B)I
    .registers 3
    .parameter "portId"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-virtual {v0, p1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->getSerialPortStatus(B)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read_port(B)[B
    .registers 4
    .parameter "portId"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    move-result v0

    if-nez v0, :cond_a

    .line 319
    const/4 v0, 0x0

    .line 322
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->sppRead(B)[B
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    move-result-object v0

    goto :goto_8

    .line 318
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerEventhandler(Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    .line 334
    return-void
.end method

.method public setSerialPortStatus(BI)V
    .registers 4
    .parameter "portId"
    .parameter "status"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->setSerialPortStatus(BI)V

    .line 135
    return-void
.end method

.method public startReadData()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->start()V

    .line 101
    :cond_9
    return-void
.end method

.method public write(I[B)I
    .registers 5
    .parameter "length"
    .parameter "buffer"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1, p1, p2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->sppWrite(BI[B)I

    move-result v0

    return v0
.end method
