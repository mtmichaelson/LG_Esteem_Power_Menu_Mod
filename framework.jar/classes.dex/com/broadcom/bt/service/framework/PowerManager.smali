.class public Lcom/broadcom/bt/service/framework/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "BTFMPowerManager"

.field private static mProxy:Lcom/broadcom/bt/service/framework/PowerManager;



# instance fields
.field private final mService:Lcom/broadcom/bt/service/framework/IPowerManager;



# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/IPowerManager;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_e

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_e
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    .line 41
    return-void
.end method

.method public static declared-synchronized getProxy()Lcom/broadcom/bt/service/framework/PowerManager;
    .registers 4

    .prologue
    .line 26
    const-class v2, Lcom/broadcom/bt/service/framework/PowerManager;

    monitor-enter v2

    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;

    if-nez v3, :cond_1a

    .line 27
    const-string v3, "bt_fm_radio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 29
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IPowerManager;

    move-result-object v1

    .line 30
    .local v1, service:Lcom/broadcom/bt/service/framework/IPowerManager;
    new-instance v3, Lcom/broadcom/bt/service/framework/PowerManager;

    invoke-direct {v3, v1}, Lcom/broadcom/bt/service/framework/PowerManager;-><init>(Lcom/broadcom/bt/service/framework/IPowerManager;)V

    sput-object v3, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;

    .line 33
    .end local v0       #b:Landroid/os/IBinder;,
    .end local v1       #service:Lcom/broadcom/bt/service/framework/IPowerManager;,
    :cond_1a
    sget-object v3, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v2

    return-object v3

    .line 26
    :catchall_1e
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public disableBt()Z
    .registers 4

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->disableFm()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 76
    :goto_6
    return v1

    .line 73
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableFm()Z
    .registers 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->disableFm()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 58
    :goto_6
    return v1

    .line 55
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableBt()Z
    .registers 4

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->enableBt()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 67
    :goto_6
    return v1

    .line 64
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableFm()Z
    .registers 4

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->enableFm()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 49
    :goto_6
    return v1

    .line 46
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 47
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isBtEnabled()Z
    .registers 4

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->isBtEnabled()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 86
    :goto_6
    return v1

    .line 83
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isfmEnabled()Z
    .registers 4

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->isfmEnabled()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 95
    :goto_6
    return v1

    .line 92
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_6
.end method
