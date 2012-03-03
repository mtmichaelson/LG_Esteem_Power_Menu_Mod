.class public final Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothFTP.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/BluetoothFTP$1;,
        Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;,
        Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;
    }
.end annotation


# static fields
.field public static final ACTION_FTP_OPERATION_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.service.ftp.action.STATE_CHANGED_COMPLETE"

.field public static final ACTION_ON_FTS_ACCESS_REQUEST:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

.field public static final ACTION_ON_FTS_CLOSED:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

.field public static final ACTION_ON_FTS_DEL_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

.field public static final ACTION_ON_FTS_GET_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

.field public static final ACTION_ON_FTS_OPENED:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

.field public static final ACTION_ON_FTS_PUT_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

.field public static final ACTION_ON_FTS_XFR_PROGRESS:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.broadcom.bt.service.ftp.action.STATE_CHANGED"

.field public static final BT_SERVICE_AUTHEN_ACTION:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.BT_FTPS_AUTHEN"

.field private static final D:Z = true

.field public static final EXTRA_BYTES_TRANSFERRED:Ljava/lang/String; = "BYTES_TRANSFERRED"

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "FILEPATH"

.field public static final EXTRA_OPERATION:Ljava/lang/String; = "OPERATION"

.field public static final EXTRA_RMT_DEV_ADDR:Ljava/lang/String; = "RMT_DEV_ADDR"

.field public static final EXTRA_RMT_DEV_NAME:Ljava/lang/String; = "RMT_DEV_NAME"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.broadcom.bt.service.ftp.extra.STATE"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "TOTAL_BYTES"

.field public static final FTPS_OPER_CHG_DIR:B = 0x5t

.field public static final FTPS_OPER_DEL_DIR:B = 0x4t

.field public static final FTPS_OPER_DEL_FILE:B = 0x3t

.field public static final FTPS_OPER_GET:B = 0x2t

.field public static final FTPS_OPER_MK_DIR:B = 0x6t

.field public static final FTPS_OPER_PUT:B = 0x1t

.field public static final FTPS_STATUS_FAIL:I = 0x1

.field public static final FTPS_STATUS_OK:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_ftp"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothFTP"

.field private static final V:Z = true



# instance fields
.field private mCallback:Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

.field private mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const-string v0, "com.broadcom.bt.app.ftp.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 512
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 734
    if-nez p0, :cond_7

    .line 735
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0       
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 737
    .restart local p0       
    :cond_7
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    return-object p0
.end method

.method public static createFilter_LegacyBroadcasts(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 757
    if-nez p0, :cond_7

    .line 758
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0       
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 760
    .restart local p0       
    :cond_7
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 495
    const-string v1, "bluetooth_ftp"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 496
    const-string v1, "BluetoothFTP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x0

    .line 500
    :goto_10
    return v1

    .line 499
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;-><init>()V

    .line 500
    .local v0, p:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FtpService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 888
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 889
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 3

    .prologue
    .line 805
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    if-eqz v0, :cond_8

    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    .line 810
    :cond_8
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 811
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 824
    :cond_16
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 825
    monitor-exit p0

    return-void

    .line 805
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ftpServerAccessRsp(BZLjava/lang/String;)V
    .registers 8
    .parameter "opcode"
    .parameter "access"
    .parameter "filepath"

    .prologue
    .line 857
    :try_start_0
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ftpServerAccessRsp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    .line 864
    :goto_37
    return-void

    .line 861
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 862
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTP"

    const-string v2, "Error calling ftpServerAccessRsp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method public ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 838
    :goto_5
    return-void

    .line 835
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 836
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTP"

    const-string v2, "Error calling ftpServerAuthenRsp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 521
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 522
    const/4 v1, 0x1

    .line 525
    :goto_7
    return v1

    .line 523
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 524
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 545
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_5
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    .line 547
    monitor-exit p0

    return-void

    .line 545
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 9
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    .line 688
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2e

    if-nez v1, :cond_22

    .line 690
    if-nez p2, :cond_e

    .line 691
    const/4 v1, 0x0

    :try_start_a
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 693
    :cond_e
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 694
    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;Lcom/broadcom/bt/service/ftp/BluetoothFTP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 695
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_2e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    .line 725
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 697
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 698
    .local v0, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v1, "BluetoothFTP"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    goto :goto_22

    .line 683
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 6
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 612
    monitor-enter p0

    if-eqz p3, :cond_c

    :try_start_3
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_7
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 618
    monitor-exit p0

    return-void

    .line 612
    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 872
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 5
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 881
    int-to-byte v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3       
    invoke-virtual {p0, v0, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 882
    return-void
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 3

    .prologue
    .line 780
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothFTP"

    const-string/jumbo v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    .line 786
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 787
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 797
    :cond_1a
    monitor-exit p0

    return-void

    .line 780
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
