.class Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"


# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;



# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 4
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 229
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onServiceDisconnected()V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
