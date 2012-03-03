.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"



# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2328

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSFS_MDM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/sync_sts"

.field private static final SYSFS_MDM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/force_sync"

.field private static final SYSFS_MSM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/sync_sts"

.field private static final SYSFS_MSM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/force_sync"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mIsProgrssingExit:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;



# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRilShutdown:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 94
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 103
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 121
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->mIsProgrssingExit:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 117
    const-string/jumbo v0, "ro.ril.shutdown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mRilShutdown:Z

    .line 126
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const-string v8, "ShutdownThread"

    .line 201
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 202
    :try_start_7
    sget-boolean v5, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_14

    .line 203
    const-string v5, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v4

    .line 261
    :goto_13
    return-void

    .line 206
    :cond_14
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 207
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_ae

    .line 213
    sget-boolean v4, Lcom/lge/config/Andy_CappuccinoConfig;->LGPOWEROFF:Z

    if-nez v4, :cond_b1

    .line 214
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 215
    .local v3, pd:Landroid/app/ProgressDialog;
    const v4, 0x1040119

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    const v4, 0x104011a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 218
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 219
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 222
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 225
    :cond_5a
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 235
    .end local v3       #pd:Landroid/app/ProgressDialog;,
    :goto_5d
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 236
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 237
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 238
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 240
    :try_start_7c
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "Shutdown"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 242
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_93
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_93} :catch_d2

    .line 250
    :cond_93
    :goto_93
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v5, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v5}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 253
    const/4 v2, 0x0

    .line 256
    .local v2, nHopper:I
    :try_start_9d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lg_hopper_test_settings"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a6} :catch_e0

    move-result v2

    .line 260
    :goto_a7
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_13

    .line 207
    .end local v2       #nHopper:I,
    :catchall_ae
    move-exception v5

    :try_start_af
    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v5

    .line 226
    :cond_b1
    sget-boolean v4, Lcom/lge/config/Andy_CappuccinoConfig;->LGPOWEROFF:Z

    if-ne v4, v6, :cond_ca

    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.lge.poweroff"

    const-string v5, "com.lge.poweroff.PowerOff"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5d

    .line 232
    .end local v1       #intent:Landroid/content/Intent;,
    :cond_ca
    const-string v4, "ShutdownThread"

    const-string v4, "LG PowerOFF Animation setting is failed"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 243
    :catch_d2
    move-exception v4

    move-object v0, v4

    .line 244
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v8, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_93

    .line 257
    .end local v0       #e:Ljava/lang/SecurityException;,
    .restart local v2       #nHopper:I,
    :catch_e0
    move-exception v4

    goto :goto_a7
.end method

.method public static isProgrssingExit()Z
    .registers 1

    .prologue
    .line 583
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsProgrssingExit:Z

    return v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 196
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 197
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 198
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 8
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v5, "ShutdownThread"

    .line 538
    if-eqz p0, :cond_37

    .line 539
    const-string v3, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :try_start_1c
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_2e

    .line 563
    :goto_1f
    const-string v3, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-boolean v3, Lcom/lge/config/Andy_CappuccinoConfig;->LGPOWEROFF:Z

    if-nez v3, :cond_52

    .line 567
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 577
    :goto_2d
    return-void

    .line 542
    :catch_2e
    move-exception v0

    .line 543
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 547
    .end local v0       #e:Ljava/lang/Exception;,
    :cond_37
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    .line 549
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    :try_start_3e
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_49

    .line 557
    :goto_41
    const-wide/16 v3, 0x1f4

    :try_start_43
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_1f

    .line 558
    :catch_47
    move-exception v3

    goto :goto_1f

    .line 550
    :catch_49
    move-exception v0

    .line 552
    .restart local v0       #e:Ljava/lang/Exception;,
    const-string v3, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 569
    .end local v0       #e:Ljava/lang/Exception;,
    .end local v2       #vibrator:Landroid/os/Vibrator;,
    :cond_52
    sget-boolean v3, Lcom/lge/config/Andy_CappuccinoConfig;->LGPOWEROFF:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_66

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.cappuccino.POWEROFF2"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v1, off:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2d

    .line 573
    .end local v1       #off:Landroid/content/Intent;,
    :cond_66
    const-string v3, "ShutdownThread"

    const-string v3, "LG PowerOFF Animation setting is failed"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v5, 0x0

    const-string v4, "ShutdownThread"

    .line 139
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_6
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_13

    .line 141
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v2

    .line 183
    :goto_12
    return-void

    .line 144
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_25

    .line 146
    const-string/jumbo v2, "ro.monkey"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 148
    .local v1, isDebuggableMonkeyBuild:Z
    if-eqz v1, :cond_28

    .line 149
    const-string v2, "ShutdownThread"

    const-string v2, "Rejected shutdown as monkey is detected to be running."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 144
    .end local v1       #isDebuggableMonkeyBuild:Z,
    :catchall_25
    move-exception v3

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v3

    .line 153
    .restart local v1       #isDebuggableMonkeyBuild:Z,
    :cond_28
    const-string v2, "ShutdownThread"

    const-string v2, "Notifying thread to start radio shutdown"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p1, :cond_87

    .line 159
    sput-boolean v5, Lcom/android/internal/app/ShutdownThread;->mIsProgrssingExit:Z

    .line 163
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040119

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104011b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 174
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_83

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 179
    :cond_83
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_12

    .line 181
    .end local v0       #dialog:Landroid/app/AlertDialog;,
    :cond_87
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_12
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 266
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 34

    .prologue
    .line 281
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->mIsProgrssingExit:Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    if-eqz v3, :cond_22

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    .line 289
    .local v12, audioManager:Landroid/media/AudioManager;
    if-eqz v12, :cond_22

    .line 290
    invoke-virtual {v12}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 292
    invoke-static {}, Landroid/media/AudioSystem;->setAudioOff()I

    .line 298
    .end local v12       #audioManager:Landroid/media/AudioManager;,
    :cond_22
    new-instance v6, Lcom/android/internal/app/ShutdownThread$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 308
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v32, Ljava/lang/String;

    const-string v3, "/sys/devices/platform/testmode/sync_cmd"

    move-object/from16 v0, v32

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 310
    .local v32, syn_cmd_path:Ljava/lang/String;
    :try_start_34
    new-instance v28, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 311
    .local v28, outFlagFile:Ljava/io/BufferedWriter;
    const-string v3, "1"

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedWriter;->close()V

    .line 313
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "request sync"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_57} :catch_1c0

    .line 325
    .end local v28       #outFlagFile:Ljava/io/BufferedWriter;,
    :goto_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_1e0

    const-string v4, "1"

    :goto_62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_1e4

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 326
    .local v31, reason:Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2328

    add-long v20, v3, v5

    .line 337
    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 338
    :goto_b0
    :try_start_b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_ca

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v15, v20, v4

    .line 340
    .local v15, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-gtz v4, :cond_1e8

    .line 341
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v15       #delay:J,
    :cond_ca
    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_b0 .. :try_end_cb} :catchall_1f7

    .line 351
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 355
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_e3

    .line 357
    const/16 v3, 0x2328

    :try_start_e0
    invoke-interface {v11, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_e3} :catch_282

    .line 362
    :cond_e3
    :goto_e3
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 364
    .local v29, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .line 368
    .local v13, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v25

    .line 373
    .local v25, mount:Landroid/os/storage/IMountService;
    if-eqz v13, :cond_10c

    :try_start_104
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1fa

    :cond_10c
    const/4 v3, 0x1

    move v14, v3

    .line 375
    .local v14, bluetoothOff:Z
    :goto_10e
    if-nez v14, :cond_11b

    .line 376
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_11b} :catch_1fe

    .line 385
    :cond_11b
    :goto_11b
    if-eqz v29, :cond_123

    :try_start_11d
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_20f

    :cond_123
    const/4 v3, 0x1

    move/from16 v30, v3

    .line 386
    .local v30, radioOff:Z
    :goto_126
    if-nez v30, :cond_136

    .line 387
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move v1, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_136} :catch_214

    .line 426
    :cond_136
    :goto_136
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/16 v23, 0x0

    .local v23, i:I
    :goto_13f
    const/16 v3, 0x10

    move/from16 v0, v23

    move v1, v3

    if-ge v0, v1, :cond_170

    .line 430
    if-nez v14, :cond_152

    .line 432
    :try_start_148
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14b} :catch_22a

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_226

    const/4 v3, 0x1

    move v14, v3

    .line 439
    :cond_152
    :goto_152
    if-nez v30, :cond_15d

    .line 441
    :try_start_154
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_157} :catch_23e

    move-result v3

    if-nez v3, :cond_239

    const/4 v3, 0x1

    move/from16 v30, v3

    .line 451
    :cond_15d
    :goto_15d
    const/16 v26, 0x1

    .line 452
    .local v26, msmEfsSyncDone:Z
    const/16 v24, 0x1

    .line 485
    .local v24, mdmEfsSyncDone:Z
    if-eqz v30, :cond_24e

    if-eqz v14, :cond_24e

    if-eqz v26, :cond_24e

    if-eqz v24, :cond_24e

    .line 486
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v24       #mdmEfsSyncDone:Z,
    .end local v26       #msmEfsSyncDone:Z,
    :cond_170
    new-instance v27, Lcom/android/internal/app/ShutdownThread$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 500
    .local v27, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long v18, v3, v5

    .line 504
    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 506
    if-eqz v25, :cond_257

    .line 507
    :try_start_196
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_19d
    .catchall {:try_start_196 .. :try_end_19d} :catchall_270
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_19d} :catch_260

    .line 514
    :goto_19d
    :try_start_19d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_1b7

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v15, v18, v4

    .line 516
    .restart local v15       #delay:J,
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-gtz v4, :cond_273

    .line 517
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v15       #delay:J,
    :cond_1b7
    monitor-exit v3
    :try_end_1b8
    .catchall {:try_start_19d .. :try_end_1b8} :catchall_270

    .line 527
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 528
    return-void

    .line 314
    .end local v11       #am:Landroid/app/IActivityManager;,
    .end local v13       #bluetooth:Landroid/bluetooth/IBluetooth;,
    .end local v14       #bluetoothOff:Z,
    .end local v18       #endShutTime:J,
    .end local v20       #endTime:J,
    .end local v23       #i:I,
    .end local v25       #mount:Landroid/os/storage/IMountService;,
    .end local v27       #observer:Landroid/os/storage/IMountShutdownObserver;,
    .end local v29       #phone:Lcom/android/internal/telephony/ITelephony;,
    .end local v30       #radioOff:Z,
    .end local v31       #reason:Ljava/lang/String;,
    :catch_1c0
    move-exception v3

    move-object/from16 v17, v3

    .line 315
    .local v17, e:Ljava/lang/Exception;
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to request sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 325
    .end local v17       #e:Ljava/lang/Exception;,
    :cond_1e0
    const-string v4, "0"

    goto/16 :goto_62

    :cond_1e4
    const-string v4, ""

    goto/16 :goto_6c

    .line 345
    .restart local v15       #delay:J,
    .restart local v20       #endTime:J,
    .restart local v31       #reason:Ljava/lang/String;,
    :cond_1e8
    :try_start_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1f2
    .catchall {:try_start_1e8 .. :try_end_1f2} :catchall_1f7
    .catch Ljava/lang/InterruptedException; {:try_start_1e8 .. :try_end_1f2} :catch_1f4

    goto/16 :goto_b0

    .line 346
    :catch_1f4
    move-exception v4

    goto/16 :goto_b0

    .line 349
    .end local v15       #delay:J,
    :catchall_1f7
    move-exception v4

    :try_start_1f8
    monitor-exit v3
    :try_end_1f9
    .catchall {:try_start_1f8 .. :try_end_1f9} :catchall_1f7

    throw v4

    .line 373
    .restart local v11       #am:Landroid/app/IActivityManager;,
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;,
    .restart local v25       #mount:Landroid/os/storage/IMountService;,
    .restart local v29       #phone:Lcom/android/internal/telephony/ITelephony;,
    :cond_1fa
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_10e

    .line 379
    :catch_1fe
    move-exception v3

    move-object/from16 v22, v3

    .line 380
    .local v22, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    const/4 v14, 0x1

    .restart local v14       #bluetoothOff:Z,
    goto/16 :goto_11b

    .line 385
    .end local v22       #ex:Landroid/os/RemoteException;,
    :cond_20f
    const/4 v3, 0x0

    move/from16 v30, v3

    goto/16 :goto_126

    .line 390
    :catch_214
    move-exception v3

    move-object/from16 v22, v3

    .line 391
    .restart local v22       #ex:Landroid/os/RemoteException;,
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/16 v30, 0x1

    .restart local v30       #radioOff:Z,
    goto/16 :goto_136

    .line 432
    .end local v22       #ex:Landroid/os/RemoteException;,
    .restart local v23       #i:I,
    :cond_226
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_152

    .line 434
    :catch_22a
    move-exception v22

    .line 435
    .restart local v22       #ex:Landroid/os/RemoteException;,
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const/4 v14, 0x1

    goto/16 :goto_152

    .line 441
    .end local v22       #ex:Landroid/os/RemoteException;,
    :cond_239
    const/4 v3, 0x0

    move/from16 v30, v3

    goto/16 :goto_15d

    .line 442
    :catch_23e
    move-exception v22

    .line 443
    .restart local v22       #ex:Landroid/os/RemoteException;,
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    const/16 v30, 0x1

    goto/16 :goto_15d

    .line 489
    .end local v22       #ex:Landroid/os/RemoteException;,
    .restart local v24       #mdmEfsSyncDone:Z,
    .restart local v26       #msmEfsSyncDone:Z,
    :cond_24e
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 429
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_13f

    .line 509
    .end local v24       #mdmEfsSyncDone:Z,
    .end local v26       #msmEfsSyncDone:Z,
    .restart local v18       #endShutTime:J,
    .restart local v27       #observer:Landroid/os/storage/IMountShutdownObserver;,
    :cond_257
    :try_start_257
    const-string v4, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25e
    .catchall {:try_start_257 .. :try_end_25e} :catchall_270
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_25e} :catch_260

    goto/16 :goto_19d

    .line 511
    :catch_260
    move-exception v4

    move-object/from16 v17, v4

    .line 512
    .restart local v17       #e:Ljava/lang/Exception;,
    :try_start_263
    const-string v4, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19d

    .line 525
    .end local v17       #e:Ljava/lang/Exception;,
    :catchall_270
    move-exception v4

    monitor-exit v3
    :try_end_272
    .catchall {:try_start_263 .. :try_end_272} :catchall_270

    throw v4

    .line 521
    .restart local v15       #delay:J,
    :cond_273
    :try_start_273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_27d
    .catchall {:try_start_273 .. :try_end_27d} :catchall_270
    .catch Ljava/lang/InterruptedException; {:try_start_273 .. :try_end_27d} :catch_27f

    goto/16 :goto_19d

    .line 522
    :catch_27f
    move-exception v4

    goto/16 :goto_19d

    .line 358
    .end local v13       #bluetooth:Landroid/bluetooth/IBluetooth;,
    .end local v14       #bluetoothOff:Z,
    .end local v15       #delay:J,
    .end local v18       #endShutTime:J,
    .end local v23       #i:I,
    .end local v25       #mount:Landroid/os/storage/IMountService;,
    .end local v27       #observer:Landroid/os/storage/IMountShutdownObserver;,
    .end local v29       #phone:Lcom/android/internal/telephony/ITelephony;,
    .end local v30       #radioOff:Z,
    :catch_282
    move-exception v3

    goto/16 :goto_e3
.end method
