.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFTPService.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPService"

.field private static final V:Z = true

.field private static isStateRunning:Z



# instance fields
.field private final mBtContext:Landroid/content/Context;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectState:Z

.field mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 74
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->classInitNative()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z

    .line 80
    new-instance v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$2;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    sput-boolean v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 121
    new-instance v0, Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 128
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBtContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupFtpNativeDataNative()V
.end method

.method private native closeFtpServerNative()V
.end method

.method private native disableFtpServerNative()V
.end method

.method private native enableDefaultFtpServerNative()V
.end method

.method private native enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
.end method

.method private native ftpServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native initFtpNativeDataNative()V
.end method

.method private static needAccessRequest()Z
    .registers 4

    .prologue
    .line 103
    :try_start_0
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "service.brcm.bt.secure_mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 107
    :goto_10
    return v1

    .line 105
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string/jumbo v2, "needAccessRequest()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .registers 23
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"

    .prologue
    .line 551
    const/4 v4, 0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_71

    .line 553
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 555
    .local v15, root:Ljava/lang/String;
    :try_start_e
    new-instance v16, Landroid/os/StatFs;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 556
    .local v16, stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v13, v4, v6

    .line 558
    .local v13, freeSpace:J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v4, v0

    cmp-long v4, v4, v13

    if-lez v4, :cond_71

    .line 559
    const-string v4, "BluetoothFTPService"

    const-string/jumbo v5, "onFtpServerAccessRequested - Not enough free space"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_46} :catch_47

    .line 578
    .end local v13       #freeSpace:J,
    .end local v15       #root:Ljava/lang/String;,
    .end local v16       #stat:Landroid/os/StatFs;,
    :goto_46
    return-void

    .line 564
    .restart local v15       #root:Ljava/lang/String;,
    :catch_47
    move-exception v4

    move-object v12, v4

    .line 565
    .local v12, eee:Ljava/lang/Exception;
    const-string v4, "BluetoothFTPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling statfs() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_46

    .line 570
    .end local v12       #eee:Ljava/lang/Exception;,
    .end local v15       #root:Ljava/lang/String;,
    :cond_71
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->needAccessRequest()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v4, 0x0

    const-string v5, "bluetooth_ftp"

    const/4 v9, -0x1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p4

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v4 .. v11}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_46

    .line 576
    :cond_94
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_46
.end method

.method private onFtpServerAuthen(Ljava/lang/String;BZ)V
    .registers 4
    .parameter "user_id"
    .parameter "userid_length"
    .parameter "userid_required"

    .prologue
    .line 547
    return-void
.end method

.method private onFtpServerClosed()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const-string v7, "android.permission.BLUETOOTH"

    const-string v5, "BluetoothFTPService"

    .line 480
    const-string v3, "BluetoothFTPService"

    const-string/jumbo v3, "onFtpServerClosed() called."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 485
    :try_start_15
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_4c

    .line 495
    :cond_1a
    :goto_1a
    iput-boolean v6, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z

    .line 499
    :try_start_1c
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_2a

    .line 501
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBtContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 502
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_56

    .line 514
    :cond_2a
    :goto_2a
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 537
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.service.ftp.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, ftpIntent:Landroid/content/Intent;
    const-string v3, "com.broadcom.bt.service.ftp.extra.STATE"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 541
    return-void

    .line 486
    .end local v1       #ftpIntent:Landroid/content/Intent;,
    :catch_4c
    move-exception v3

    move-object v2, v3

    .line 487
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 505
    .end local v2       #t:Ljava/lang/Throwable;,
    :catch_56
    move-exception v3

    move-object v0, v3

    .line 506
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "BluetoothFTPService"

    const-string v3, "[BTUI] onPause() : ### Exception handle ###"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private onFtpServerDelCompleted(Ljava/lang/String;B)V
    .registers 8
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 666
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerDelCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-nez p2, :cond_35

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 672
    :try_start_2f
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_35} :catch_4e

    .line 679
    :cond_35
    :goto_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 682
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 696
    return-void

    .line 673
    .end local v0       #i:Landroid/content/Intent;,
    :catch_4e
    move-exception v2

    move-object v1, v2

    .line 674
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method private onFtpServerDisabled()V
    .registers 3

    .prologue
    .line 397
    const-string v0, "BluetoothFTPService"

    const-string/jumbo v1, "onFtpServerDisabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 399
    return-void
.end method

.method private onFtpServerEnabled()V
    .registers 3

    .prologue
    .line 392
    const-string v0, "BluetoothFTPService"

    const-string/jumbo v1, "onFtpServerEnabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 394
    return-void
.end method

.method private onFtpServerFileTransferInProgress(II)V
    .registers 7
    .parameter "fileSize"
    .parameter "bytesTransferred"

    .prologue
    .line 582
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferring file via FTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, i:Landroid/content/Intent;
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method private onFtpServerGetCompleted(Ljava/lang/String;B)V
    .registers 7
    .parameter "filePath"
    .parameter "status"

    .prologue
    .line 642
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerGetCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 649
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private onFtpServerOpened(Ljava/lang/String;)V
    .registers 13
    .parameter "remoteAddress"

    .prologue
    const/4 v9, 0x1

    const-string v10, "BluetoothFTPService"

    const-string v8, "android.permission.BLUETOOTH"

    .line 402
    const-string v6, "BluetoothFTPService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onFtpServerOpened: remoteAddress = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sput-boolean v9, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 409
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 410
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServer()V

    .line 411
    const-string v0, "android.bluetooth.intent.action.AUTHORIZE_REJECTED"

    .line 412
    .local v0, FTP_AUTHORIZE_REJECTED:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.intent.SERVICE"

    const-string/jumbo v7, "service_ftp"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v6, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 477
    .end local v0       #FTP_AUTHORIZE_REJECTED:Ljava/lang/String;,
    .end local v4       #intent:Landroid/content/Intent;,
    :goto_4b
    return-void

    .line 423
    :cond_4c
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v6, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 430
    const-string v6, "*"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v6, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBtContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    iput-boolean v9, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z

    .line 438
    iget-object v6, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v6}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v6

    if-nez v6, :cond_8b

    .line 440
    :try_start_86
    iget-object v6, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v6}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_8b} :catch_b3

    .line 447
    :cond_8b
    :goto_8b
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v3, i:Landroid/content/Intent;
    const-string v6, "RMT_DEV_ADDR"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v6, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.broadcom.bt.service.ftp.action.STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, ftpIntent:Landroid/content/Intent;
    const-string v6, "com.broadcom.bt.service.ftp.extra.STATE"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    iget-object v6, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_4b

    .line 441
    .end local v2       #ftpIntent:Landroid/content/Intent;,
    .end local v3       #i:Landroid/content/Intent;,
    :catch_b3
    move-exception v6

    move-object v5, v6

    .line 442
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "BluetoothFTPService"

    const-string v6, "Unable to connect to media scanner"

    invoke-static {v10, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b
.end method

.method private onFtpServerPutCompleted(Ljava/lang/String;B)V
    .registers 8
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 608
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFtpServerPutCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-nez p2, :cond_35

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 615
    :try_start_2f
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_35} :catch_4e

    .line 622
    :cond_35
    :goto_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 625
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 638
    return-void

    .line 616
    .end local v0       #i:Landroid/content/Intent;,
    :catch_4e
    move-exception v2

    move-object v1, v2

    .line 617
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method


# virtual methods
.method public declared-synchronized closeFtpServer()V
    .registers 5

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 316
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v2

    if-eqz v2, :cond_10

    .line 318
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_15

    .line 325
    :cond_10
    :goto_10
    :try_start_10
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServerNative()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_22

    .line 329
    :goto_13
    monitor-exit p0

    return-void

    .line 319
    :catch_15
    move-exception v2

    move-object v1, v2

    .line 320
    .local v1, t:Ljava/lang/Throwable;
    :try_start_17
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_10

    .line 316
    .end local v1       #t:Ljava/lang/Throwable;,
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 326
    :catch_22
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    :try_start_23
    const-string v2, "BluetoothFTPService"

    const-string v3, "closeFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_1f

    goto :goto_13
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->finish()V

    .line 304
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 305
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 294
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->cleanupFtpNativeDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 298
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 300
    :cond_b
    monitor-exit p0

    return-void

    .line 295
    :catch_d
    move-exception v0

    .line 296
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to cleanup ftp service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 292
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .registers 7
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 360
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 364
    :goto_4
    monitor-exit p0

    return-void

    .line 361
    :catch_6
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 360
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 342
    :goto_4
    monitor-exit p0

    return-void

    .line 339
    :catch_6
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 338
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const-string v0, "bluetooth_ftp"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 4

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 183
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->initFtpNativeDataNative()V

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 193
    monitor-exit p0

    return-void

    .line 176
    .end local v0       #iFilter:Landroid/content/IntentFilter;,
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 367
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 368
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 370
    :cond_b
    return-void
.end method

.method public declared-synchronized start()V
    .registers 4

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServerNative()V

    .line 224
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    .line 234
    :goto_a
    monitor-exit p0

    return-void

    .line 231
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 232
    .local v0, e:Ljava/lang/Exception;
    :try_start_e
    const-string v1, "BluetoothFTPService"

    const-string v2, "enableDefaultFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_a

    .line 221
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 241
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_38

    .line 245
    :try_start_6
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServerNative()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2f

    .line 251
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_38

    move-result v2

    if-eqz v2, :cond_2d

    .line 253
    :try_start_11
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_38
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_45

    .line 256
    :try_start_16
    iget-boolean v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 258
    const-string v2, "BluetoothFTPService"

    const-string/jumbo v3, "onFtpServerOpened: unregisterReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBtContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mConnectState:Z
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_2d} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2d} :catch_45

    .line 286
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    .line 246
    :catch_2f
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    :try_start_30
    const-string v2, "BluetoothFTPService"

    const-string v3, "disableFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_9

    .line 241
    .end local v0       #e:Ljava/lang/Exception;,
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 265
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 266
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3d
    const-string v2, "BluetoothFTPService"

    const-string v3, "[BTUI] onPause() : ### Exception handle ###"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_38
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_44} :catch_45

    goto :goto_2d

    .line 269
    .end local v0       #e:Ljava/lang/IllegalArgumentException;,
    :catch_45
    move-exception v2

    move-object v1, v2

    .line 270
    .local v1, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_38

    goto :goto_2d
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 373
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 374
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 376
    :cond_b
    return-void
.end method
