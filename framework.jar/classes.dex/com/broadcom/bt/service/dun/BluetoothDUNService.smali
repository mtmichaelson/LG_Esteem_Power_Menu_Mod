.class public final Lcom/broadcom/bt/service/dun/BluetoothDUNService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothDUNService.java"



# static fields
.field private static final DUN_CONNECTED:I = 0x2

.field private static final DUN_DORMANT:I = 0x3

.field private static final DUN_END:I = 0x0

.field private static final DUN_INITIATED:I = 0x1

.field public static final INVALID_APP_ID:B = 0xft

.field private static final TAG:Ljava/lang/String; = "BluetoothDUNService"

.field private static mIsDunActive:Z



# instance fields
.field private mAppId:B

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddr:Ljava/lang/String;

.field private mDunAutoDisconnect:Z

.field private mIsDUNAvailable:Z

.field private mIsFinish:Z

.field private mNativeData:I

.field final mPortState:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;



# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 83
    invoke-static {}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->classInitNative()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    .line 89
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 108
    iput-boolean v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDUNAvailable:Z

    .line 116
    iput-boolean v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDunAutoDisconnect:Z

    .line 142
    new-instance v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;-><init>(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    sput-boolean v2, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDUNAvailable:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 136
    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 138
    return-void
.end method

.method private BtUiDunStateChanged(BBLjava/lang/String;)V
    .registers 8
    .parameter "appId"
    .parameter "portState"
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 429
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ADDR"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v1, "APPID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 432
    const-string v1, "PORTSTATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 435
    packed-switch p2, :pswitch_data_2c

    .line 463
    :goto_21
    :pswitch_21
    return-void

    .line 440
    :pswitch_22
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    goto :goto_21

    .line 448
    :pswitch_26
    sput-boolean v3, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    .line 452
    iput-boolean v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDunAutoDisconnect:Z

    goto :goto_21

    .line 435
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_21
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/broadcom/bt/service/dun/BluetoothDUNService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDUNAvailable:Z

    return p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    return v0
.end method

.method static synthetic access$402(Lcom/broadcom/bt/service/dun/BluetoothDUNService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDunAutoDisconnect:Z

    return p1
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative(B)V
.end method

.method private onDisableEvent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 280
    const-string v0, "BluetoothDUNService"

    const-string/jumbo v1, "onDisableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 282
    :try_start_c
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 283
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_21

    .line 285
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 290
    sget-boolean v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    if-eqz v0, :cond_20

    .line 292
    const/4 v0, 0x3

    const-string/jumbo v1, "null_address"

    invoke-direct {p0, v2, v0, v1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->BtUiDunStateChanged(BBLjava/lang/String;)V

    .line 296
    :cond_20
    return-void

    .line 283
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private onEnableEvent()V
    .registers 3

    .prologue
    .line 275
    const-string v0, "BluetoothDUNService"

    const-string/jumbo v1, "onEnableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 277
    return-void
.end method

.method private onPortStateChangeEvent(BBLjava/lang/String;)V
    .registers 15
    .parameter "appId"
    .parameter "portState"
    .parameter "address"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v10, "BluetoothDUNService"

    const-string v8, "android.permission.BLUETOOTH"

    .line 299
    iget-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 300
    :try_start_9
    iget-object v4, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_3a

    .line 305
    const/4 v3, 0x2

    if-ne p2, v3, :cond_8d

    .line 306
    iput-object p3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 307
    iput-byte p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 310
    iget-boolean v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDUNAvailable:Z

    if-nez v3, :cond_3d

    .line 312
    iget-byte v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->close(B)V

    .line 317
    sget-boolean v3, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    if-nez v3, :cond_39

    .line 321
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_REJECT_DUN_ACCESS:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 419
    .end local v1       #i:Landroid/content/Intent;,
    :cond_39
    :goto_39
    return-void

    .line 301
    :catchall_3a
    move-exception v4

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v4

    .line 332
    :cond_3d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 333
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 334
    .local v0, currentNetwork:I
    const-string v3, "BluetoothDUNService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BTUI] ### onPortStateChangeEvent : Current Network( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v3, 0x7

    if-eq v0, v3, :cond_af

    const/4 v3, 0x5

    if-eq v0, v3, :cond_af

    const/4 v3, 0x6

    if-eq v0, v3, :cond_af

    const/16 v3, 0xc

    if-eq v0, v3, :cond_af

    .line 340
    iput-boolean v9, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDUNAvailable:Z

    .line 341
    iget-byte v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->close(B)V

    .line 346
    sget-boolean v3, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    if-nez v3, :cond_8a

    .line 350
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_REJECT_DUN_ACCESS:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v1       #i:Landroid/content/Intent;,
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_39

    .line 357
    .end local v1       #i:Landroid/content/Intent;,
    :cond_8a
    iput-boolean v7, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDunAutoDisconnect:Z

    goto :goto_39

    .line 365
    .end local v0       #currentNetwork:I,
    .end local v2       #telephony:Landroid/telephony/TelephonyManager;,
    :cond_8d
    const/4 v3, 0x3

    if-ne p2, v3, :cond_af

    .line 366
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 367
    const/16 v3, 0xf

    iput-byte v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 371
    iget-boolean v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDunAutoDisconnect:Z

    if-ne v3, v7, :cond_af

    sget-boolean v3, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsDunActive:Z

    if-ne v3, v7, :cond_af

    .line 373
    iput-boolean v9, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDunAutoDisconnect:Z

    .line 376
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_DUN_AUTO_DISCONNECT:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v1       #i:Landroid/content/Intent;,
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 388
    .end local v1       #i:Landroid/content/Intent;,
    :cond_af
    const-string v3, "BluetoothDUNService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### DUN : onPortStateChangeEvent : Send Broadcast Intent #####"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PortID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->BtUiDunStateChanged(BBLjava/lang/String;)V

    goto/16 :goto_39
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public close(B)V
    .registers 2
    .parameter "appId"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->closeNative(B)V

    .line 258
    return-void
.end method

.method public native disableNative()V
.end method

.method public native enableNative()V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->finish()V

    .line 234
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 236
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 218
    :try_start_5
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->cleanupNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 228
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 230
    :cond_b
    monitor-exit p0

    return-void

    .line 225
    :catch_d
    move-exception v0

    .line 226
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothDUNService"

    const-string v2, "Unable to cleanup DUN service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 216
    .end local v0       #t:Ljava/lang/Throwable;,
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllPortStatus()Landroid/os/Bundle;
    .registers 9

    .prologue
    .line 239
    const/4 v4, 0x0

    .line 240
    .local v4, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    iget-object v7, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v7

    .line 241
    :try_start_4
    iget-object v6, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v4, v0

    .line 242
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_3d

    .line 244
    new-instance v1, Landroid/os/Bundle;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 245
    .local v1, b:Landroid/os/Bundle;
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 246
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    .line 248
    .local v3, key:Ljava/lang/Byte;
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .line 249
    .local v5, val:Ljava/lang/Byte;
    if-eqz v5, :cond_1d

    .line 250
    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1d

    .line 242
    .end local v1       #b:Landroid/os/Bundle;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Byte;>;"
    .end local v3       #key:Ljava/lang/Byte;,
    .end local v5       #val:Ljava/lang/Byte;,
    :catchall_3d
    move-exception v6

    :try_start_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v6

    .line 253
    .restart local v1       #b:Landroid/os/Bundle;,
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_40
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    const-string v0, "bluetooth_dun"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->initNative()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 191
    monitor-exit p0

    return-void

    .line 189
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 263
    if-eqz p1, :cond_7

    .line 264
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 266
    :cond_7
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->enableNative()V

    .line 195
    const-string v1, "BluetoothDUNService"

    const-string v2, "[BTUI] ###DUN START###"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->disableNative()V

    .line 206
    const-string v0, "BluetoothDUNService"

    const-string v1, "[BTUI] ###DUN STOP###"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 210
    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 211
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 269
    if-eqz p1, :cond_7

    .line 270
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 272
    :cond_7
    return-void
.end method
