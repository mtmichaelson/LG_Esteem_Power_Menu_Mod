.class public interface abstract Lcom/lge/os/Andy_IAdditionalPowerManager;
.super Ljava/lang/Object;
.source "Andy_IAdditionalPowerManager.java"


# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract reboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method
