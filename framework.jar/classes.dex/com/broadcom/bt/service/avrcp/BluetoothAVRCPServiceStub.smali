.class public final Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;
.super Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;
.source "BluetoothAVRCPServiceStub.java"



# static fields
.field private static final D:Z = true

.field private static final DBG_REF_COUNT:Z = true

.field private static REF_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPServiceStub"

.field private static mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->REF_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const-string v2, "BluetoothAVRCPServiceStub"

    .line 47
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;-><init>()V

    .line 49
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v0, "BluetoothAVRCPServiceStub"

    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "BluetoothAVRCPServiceStub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference count  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->REF_COUNT:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->REF_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "bluetooth_avrcp"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    sput-object p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .registers 3

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .registers 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothAVRCPServiceStub"

    .line 60
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v0, "finalize"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "BluetoothAVRCPServiceStub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference count  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->REF_COUNT:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->REF_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    if-eqz v0, :cond_2e

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    .line 69
    :cond_2e
    invoke-super {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->finalize()V

    .line 70
    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
