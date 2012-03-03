.class public Lcom/lge/os/Andy_PowerManager;
.super Ljava/lang/Object;
.source "Andy_PowerManager.java"


# interfaces
.implements Lcom/lge/os/Andy_IAdditionalPowerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "LGPowerManager"



# instance fields
.field private mService:Lcom/lge/os/Andy_IAdditionalPowerManager;



# direct methods
.method public constructor <init>(Lcom/lge/os/Andy_IAdditionalPowerManager;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lge/os/Andy_PowerManager;->mService:Lcom/lge/os/Andy_IAdditionalPowerManager;

    .line 32
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class don\'t support the asBinder() method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/os/Andy_PowerManager;->mService:Lcom/lge/os/Andy_IAdditionalPowerManager;

    invoke-interface {v0, p1}, Lcom/lge/os/Andy_IAdditionalPowerManager;->reboot(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/os/Andy_PowerManager;->mService:Lcom/lge/os/Andy_IAdditionalPowerManager;

    invoke-interface {v0}, Lcom/lge/os/Andy_IAdditionalPowerManager;->shutdown()V

    .line 40
    return-void
.end method
