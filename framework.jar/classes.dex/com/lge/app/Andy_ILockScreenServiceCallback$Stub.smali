.class public abstract Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;
.super Landroid/os/Binder;
.source "Andy_ILockScreenServiceCallback.java"


# interfaces
.implements Lcom/lge/app/Andy_ILockScreenServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/Andy_ILockScreenServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.app.Andy_ILockScreenServiceCallback"

.field static final TRANSACTION_onLockScreenImageChanged:I = 0x1



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.lge.app.Andy_ILockScreenServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/app/Andy_ILockScreenServiceCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "com.lge.app.Andy_ILockScreenServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/app/Andy_ILockScreenServiceCallback;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Lcom/lge/app/Andy_ILockScreenServiceCallback;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-string v2, "com.lge.app.Andy_ILockScreenServiceCallback"

    .line 44
    sparse-switch p1, :sswitch_data_1c

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 48
    :sswitch_b
    const-string v0, "com.lge.app.Andy_ILockScreenServiceCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_a

    .line 53
    :sswitch_12
    const-string v0, "com.lge.app.Andy_ILockScreenServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;->onLockScreenImageChanged()V

    move v0, v1

    .line 55
    goto :goto_a

    .line 44
    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
