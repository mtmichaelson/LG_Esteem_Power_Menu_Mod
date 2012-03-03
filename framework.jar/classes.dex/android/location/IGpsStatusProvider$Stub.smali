.class public abstract Landroid/location/IGpsStatusProvider$Stub;
.super Landroid/os/Binder;
.source "IGpsStatusProvider.java"


# interfaces
.implements Landroid/location/IGpsStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsStatusProvider"

.field static final TRANSACTION_addGpsStatusListener:I = 0x1

.field static final TRANSACTION_removeGpsStatusListener:I = 0x2



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.IGpsStatusProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsStatusProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusProvider;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.location.IGpsStatusProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/IGpsStatusProvider;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/location/IGpsStatusProvider;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/location/IGpsStatusProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGpsStatusProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    const-string v3, "android.location.IGpsStatusProvider"

    .line 43
    sparse-switch p1, :sswitch_data_3c

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 47
    :sswitch_b
    const-string v1, "android.location.IGpsStatusProvider"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 48
    goto :goto_a

    .line 52
    :sswitch_12
    const-string v1, "android.location.IGpsStatusProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v0

    .line 55
    .local v0, _arg0:Landroid/location/IGpsStatusListener;
    invoke-virtual {p0, v0}, Landroid/location/IGpsStatusProvider$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 57
    goto :goto_a

    .line 61
    .end local v0       #_arg0:Landroid/location/IGpsStatusListener;,
    :sswitch_27
    const-string v1, "android.location.IGpsStatusProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Landroid/location/IGpsStatusListener;,
    invoke-virtual {p0, v0}, Landroid/location/IGpsStatusProvider$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 66
    goto :goto_a

    .line 43
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
