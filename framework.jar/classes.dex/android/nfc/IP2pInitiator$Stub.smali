.class public abstract Landroid/nfc/IP2pInitiator$Stub;
.super Landroid/os/Binder;
.source "IP2pInitiator.java"


# interfaces
.implements Landroid/nfc/IP2pInitiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IP2pInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IP2pInitiator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.IP2pInitiator"

.field static final TRANSACTION_getGeneralBytes:I = 0x1

.field static final TRANSACTION_getMode:I = 0x2

.field static final TRANSACTION_receive:I = 0x3

.field static final TRANSACTION_send:I = 0x4



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.IP2pInitiator"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/IP2pInitiator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/IP2pInitiator;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "android.nfc.IP2pInitiator"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/IP2pInitiator;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/nfc/IP2pInitiator;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/nfc/IP2pInitiator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/IP2pInitiator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v4, 0x1

    const-string v5, "android.nfc.IP2pInitiator"

    .line 41
    sparse-switch p1, :sswitch_data_70

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 45
    :sswitch_b
    const-string v3, "android.nfc.IP2pInitiator"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v3, "android.nfc.IP2pInitiator"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pInitiator$Stub;->getGeneralBytes(I)[B

    move-result-object v2

    .line 54
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 56
    goto :goto_a

    .line 60
    .end local v0       #_arg0:I,
    .end local v2       #_result:[B,
    :sswitch_27
    const-string v3, "android.nfc.IP2pInitiator"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pInitiator$Stub;->getMode(I)I

    move-result v2

    .line 64
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 66
    goto :goto_a

    .line 70
    .end local v0       #_arg0:I,
    .end local v2       #_result:I,
    :sswitch_3c
    const-string v3, "android.nfc.IP2pInitiator"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pInitiator$Stub;->receive(I)[B

    move-result-object v2

    .line 74
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 76
    goto :goto_a

    .line 80
    .end local v0       #_arg0:I,
    .end local v2       #_result:[B,
    :sswitch_51
    const-string v3, "android.nfc.IP2pInitiator"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 85
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/IP2pInitiator$Stub;->send(I[B)Z

    move-result v2

    .line 86
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_6d

    move v3, v4

    :goto_68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 88
    goto :goto_a

    .line 87
    :cond_6d
    const/4 v3, 0x0

    goto :goto_68

    .line 41
    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_51
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
