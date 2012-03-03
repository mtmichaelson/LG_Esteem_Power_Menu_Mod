.class public Lcom/lge/server/Andy_AdditionalPowerManagerService;
.super Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;
.source "Andy_AdditionalPowerManagerService.java"


# interfaces
.implements Lcom/lge/os/Andy_IAdditionalPowerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "LGPowerManagerService"



# instance fields
.field private mContext:Landroid/content/Context;



# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lge/server/Andy_AdditionalPowerManagerService;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public reboot(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lge/server/Andy_AdditionalPowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_8
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 57
    :goto_b
    return-void

    .line 54
    :catch_c
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LGPowerManagerService"

    const-string v2, "Reboot failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/server/Andy_AdditionalPowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 44
    return-void
.end method
