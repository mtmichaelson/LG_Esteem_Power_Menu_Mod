.class public Lcom/lge/app/Andy_ServiceFactory;
.super Ljava/lang/Object;
.source "Andy_ServiceFactory.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "Andy_ServiceFactory"

.field private static mPowerManager:Lcom/lge/os/Andy_PowerManager;

.field private static final mSync:Ljava/lang/Object;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/app/Andy_ServiceFactory;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLockScreen(Landroid/content/Context;)Lcom/lge/app/Andy_LockScreenManager;
    .registers 5
    .parameter "context"

    .prologue
    .line 55
    sget-object v2, Lcom/lge/app/Andy_ServiceFactory;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_3
    const-string v3, "lge_lockscreen"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/Andy_ILockScreenService;

    move-result-object v1

    .line 59
    .local v1, service:Lcom/lge/app/Andy_ILockScreenService;
    new-instance v3, Lcom/lge/app/Andy_LockScreenManager;

    invoke-direct {v3, p0, v1}, Lcom/lge/app/Andy_LockScreenManager;-><init>(Landroid/content/Context;Lcom/lge/app/Andy_ILockScreenService;)V

    monitor-exit v2

    return-object v3

    .line 60
    .end local v0       #b:Landroid/os/IBinder;,
    .end local v1       #service:Lcom/lge/app/Andy_ILockScreenService;,
    :catchall_14
    move-exception v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v3
.end method

.method public static createPower()Lcom/lge/os/Andy_PowerManager;
    .registers 3

    .prologue
    .line 41
    sget-object v2, Lcom/lge/app/Andy_ServiceFactory;->mPowerManager:Lcom/lge/os/Andy_PowerManager;

    if-nez v2, :cond_15

    .line 42
    const-string v2, "lge_additional_power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/os/Andy_IAdditionalPowerManager;

    move-result-object v1

    .line 44
    .local v1, service:Lcom/lge/os/Andy_IAdditionalPowerManager;
    new-instance v2, Lcom/lge/os/Andy_PowerManager;

    invoke-direct {v2, v1}, Lcom/lge/os/Andy_PowerManager;-><init>(Lcom/lge/os/Andy_IAdditionalPowerManager;)V

    sput-object v2, Lcom/lge/app/Andy_ServiceFactory;->mPowerManager:Lcom/lge/os/Andy_PowerManager;

    .line 46
    .end local v0       #b:Landroid/os/IBinder;,
    .end local v1       #service:Lcom/lge/os/Andy_IAdditionalPowerManager;,
    :cond_15
    sget-object v2, Lcom/lge/app/Andy_ServiceFactory;->mPowerManager:Lcom/lge/os/Andy_PowerManager;

    return-object v2
.end method
