.class public interface abstract Lcom/lge/app/Andy_ILockScreenService;
.super Ljava/lang/Object;
.source "Andy_ILockScreenService.java"


# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/Andy_ILockScreenService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDrmLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract getHeightHint()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract getLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract getWidthHint()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract setDimensionHints(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract setLockScreenImage()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method
