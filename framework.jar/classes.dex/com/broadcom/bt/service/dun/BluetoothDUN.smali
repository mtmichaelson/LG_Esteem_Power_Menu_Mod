.class public final Lcom/broadcom/bt/service/dun/BluetoothDUN;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDUN.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dun/BluetoothDUN$1;,
        Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;,
        Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNCallback;
    }
.end annotation


# static fields
.field public static final ACTION_DUN_AUTO_DISCONNECT:Ljava/lang/String; = null

.field public static final ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String; = null

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.dun.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final ACTION_REJECT_DUN_ACCESS:Ljava/lang/String; = null

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.broadcom.bt.service.dun.action.STATE_CHANGED"

.field public static final EXTRA_ADDR:Ljava/lang/String; = "ADDR"

.field public static final EXTRA_APPID:Ljava/lang/String; = "APPID"

.field public static final EXTRA_PORTSTATE:Ljava/lang/String; = "PORTSTATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.broadcom.bt.service.dun.extra.STATE"

.field public static final PORT_STATE_CLOSED:B = 0x3t

.field public static final PORT_STATE_LISTENING:B = 0x1t

.field public static final PORT_STATE_OPENED:B = 0x2t

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_dun"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothDUN"

.field private static final V:Z = true



# instance fields
.field private mCallback:Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

.field private mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 189
    const-string v0, "com.broadcom.bt.app.dun.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_PORT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "REJECT_DUN_ACCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_REJECT_DUN_ACCESS:Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DUN_AUTO_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_DUN_AUTO_DISCONNECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 280
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/dun/BluetoothDUN;)Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 528
    if-nez p0, :cond_7

    .line 529
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0       
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 531
    .restart local p0       
    :cond_7
    sget-object v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 268
    const-string v1, "bluetooth_dun"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 269
    const-string v1, "BluetoothDUN"

    const-string v2, "Unable to get BluetoothFTP proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    .line 274
    :goto_10
    return v1

    .line 273
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-direct {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUN;-><init>()V

    .line 274
    .local v0, p:Lcom/broadcom/bt/service/dun/BluetoothDUN;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.DUNService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 335
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    if-eqz v0, :cond_8

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 315
    :cond_8
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 316
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    :cond_16
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 330
    monitor-exit p0

    return-void

    .line 310
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPortStatus()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 575
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_14

    .line 577
    :try_start_4
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->getAllPortStatus()Landroid/os/Bundle;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 582
    :goto_a
    return-object v1

    .line 578
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 579
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string v2, "getAllPortStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v0       #t:Ljava/lang/Throwable;,
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 289
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 290
    const/4 v1, 0x1

    .line 293
    :goto_7
    return v1

    .line 291
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const/4 v1, 0x0

    goto :goto_7
.end method

.method registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 5
    .parameter "cb"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_9

    .line 595
    :try_start_4
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 600
    :cond_9
    :goto_9
    return-void

    .line 596
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 597
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string/jumbo v2, "registerCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 354
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_5
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    .line 356
    monitor-exit p0

    return-void

    .line 354
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 9
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 496
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2e

    if-nez v1, :cond_22

    .line 498
    if-nez p2, :cond_e

    .line 499
    const/4 v1, 0x0

    :try_start_a
    invoke-static {v1}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 501
    :cond_e
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 502
    new-instance v1, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN$DUNBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/dun/BluetoothDUN;Lcom/broadcom/bt/service/dun/BluetoothDUN$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_2e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    .line 519
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 505
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 506
    .local v0, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v1, "BluetoothDUN"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    goto :goto_22

    .line 491
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 6
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 420
    monitor-enter p0

    if-eqz p3, :cond_c

    :try_start_3
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_7
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->registerEventHandler(Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 426
    monitor-exit p0

    return-void

    .line 420
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
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 5
    .parameter "cb"

    .prologue
    .line 610
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_9

    .line 612
    :try_start_4
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 617
    :cond_9
    :goto_9
    return-void

    .line 613
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 614
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDUN"

    const-string/jumbo v2, "registerCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 3

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothDUN"

    const-string/jumbo v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mEventHandler:Lcom/broadcom/bt/service/dun/IBluetoothDUNEventHandler;

    .line 556
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 557
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 567
    :cond_1a
    monitor-exit p0

    return-void

    .line 551
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
