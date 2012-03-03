.class public interface abstract Lcom/lge/bridges/IBridgesService;
.super Ljava/lang/Object;
.source "IBridgesService.java"


# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bridges/IBridgesService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract sendNativeCommand(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method
