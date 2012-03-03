.class public Lcom/lge/server/Andy_ServiceLoader;
.super Ljava/lang/Object;
.source "Andy_ServiceLoader.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "LGServiceLoader"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const-string v7, "LGServiceLoader"

    .line 29
    invoke-static {}, Lcom/lge/server/Andy_ServiceLoader;->loadLibrary()V

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, lockscreen:Lcom/lge/server/Andy_LockScreenService;
    const/4 v3, 0x0

    .line 35
    .local v3, power:Lcom/lge/server/Andy_AdditionalPowerManagerService;
    :try_start_7
    const-string v5, "LGServiceLoader"

    const-string v6, "LockScreen Service(LG)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Lcom/lge/server/Andy_LockScreenService;

    invoke-direct {v2, p0}, Lcom/lge/server/Andy_LockScreenService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_2c

    .line 37
    .end local v1       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    .local v2, lockscreen:Lcom/lge/server/Andy_LockScreenService;
    :try_start_13
    const-string v5, "lge_lockscreen"

    invoke-static {v5, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_44

    move-object v1, v2

    .line 44
    .end local v2       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    .restart local v1       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    :goto_19
    :try_start_19
    const-string v5, "LGServiceLoader"

    const-string v6, "Additional Power Service(LG)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v4, Lcom/lge/server/Andy_AdditionalPowerManagerService;

    invoke-direct {v4, p0}, Lcom/lge/server/Andy_AdditionalPowerManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_25} :catch_36

    .line 46
    .end local v3       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    .local v4, power:Lcom/lge/server/Andy_AdditionalPowerManagerService;
    :try_start_25
    const-string v5, "lge_additional_power"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2a} :catch_40

    move-object v3, v4

    .line 51
    .end local v4       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    .restart local v3       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    :goto_2b
    return-void

    .line 39
    :catch_2c
    move-exception v5

    move-object v0, v5

    .line 40
    .local v0, e:Ljava/lang/Throwable;
    :goto_2e
    const-string v5, "LGServiceLoader"

    const-string v5, "Failure starting Accessibility Manager"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 48
    .end local v0       #e:Ljava/lang/Throwable;,
    :catch_36
    move-exception v5

    move-object v0, v5

    .line 49
    .restart local v0       #e:Ljava/lang/Throwable;,
    :goto_38
    const-string v5, "LGServiceLoader"

    const-string v5, "Failure starting Additional Power Service"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 48
    .end local v0       #e:Ljava/lang/Throwable;,
    .end local v3       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    .restart local v4       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    :catch_40
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    .restart local v3       #power:Lcom/lge/server/Andy_AdditionalPowerManagerService;,
    goto :goto_38

    .line 39
    .end local v1       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    .restart local v2       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    :catch_44
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    .restart local v1       #lockscreen:Lcom/lge/server/Andy_LockScreenService;,
    goto :goto_2e
.end method

.method private static loadLibrary()V
    .registers 0

    .prologue
    .line 55
    return-void
.end method
