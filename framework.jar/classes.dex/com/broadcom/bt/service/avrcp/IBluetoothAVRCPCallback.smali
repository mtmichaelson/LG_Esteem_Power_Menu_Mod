.class public interface abstract Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;
.super Ljava/lang/Object;
.source "IBluetoothAVRCPCallback.java"


# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method

.method public abstract onDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation.end method
