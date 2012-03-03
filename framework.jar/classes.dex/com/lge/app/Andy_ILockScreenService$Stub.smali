.class public abstract Lcom/lge/app/Andy_ILockScreenService$Stub;
.super Landroid/os/Binder;
.source "Andy_ILockScreenService.java"


# interfaces
.implements Lcom/lge/app/Andy_ILockScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/Andy_ILockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/Andy_ILockScreenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.app.Andy_ILockScreenService"

.field static final TRANSACTION_getDrmLockScreenImage:I = 0x3

.field static final TRANSACTION_getHeightHint:I = 0x6

.field static final TRANSACTION_getLockScreenImage:I = 0x2

.field static final TRANSACTION_getWidthHint:I = 0x5

.field static final TRANSACTION_setDimensionHints:I = 0x4

.field static final TRANSACTION_setLockScreenImage:I = 0x1



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/app/Andy_ILockScreenService;
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
    const-string v1, "com.lge.app.Andy_ILockScreenService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/app/Andy_ILockScreenService;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/lge/app/Andy_ILockScreenService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/lge/app/Andy_ILockScreenService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/app/Andy_ILockScreenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "com.lge.app.Andy_ILockScreenService"

    .line 43
    sparse-switch p1, :sswitch_data_a2

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 47
    :sswitch_c
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->setLockScreenImage()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 54
    .local v2, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_29

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_27
    move v3, v4

    .line 62
    goto :goto_b

    .line 60
    :cond_29
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 66
    .end local v2       #_result:Landroid/os/ParcelFileDescriptor;,
    :sswitch_2d
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/Andy_ILockScreenServiceCallback;

    move-result-object v0

    .line 69
    .local v0, _arg0:Lcom/lge/app/Andy_ILockScreenServiceCallback;
    invoke-virtual {p0, v0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->getLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 70
    .restart local v2       #_result:Landroid/os/ParcelFileDescriptor;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_4b

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_49
    move v3, v4

    .line 78
    goto :goto_b

    .line 76
    :cond_4b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 82
    .end local v0       #_arg0:Lcom/lge/app/Andy_ILockScreenServiceCallback;,
    .end local v2       #_result:Landroid/os/ParcelFileDescriptor;,
    :sswitch_4f
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/Andy_ILockScreenServiceCallback;

    move-result-object v0

    .line 85
    .restart local v0       #_arg0:Lcom/lge/app/Andy_ILockScreenServiceCallback;,
    invoke-virtual {p0, v0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->getDrmLockScreenImage(Lcom/lge/app/Andy_ILockScreenServiceCallback;)[B

    move-result-object v2

    .line 86
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 88
    goto :goto_b

    .line 92
    .end local v0       #_arg0:Lcom/lge/app/Andy_ILockScreenServiceCallback;,
    .end local v2       #_result:[B,
    :sswitch_68
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/lge/app/Andy_ILockScreenService$Stub;->setDimensionHints(II)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 99
    goto :goto_b

    .line 103
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    :sswitch_7d
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->getWidthHint()I

    move-result v2

    .line 105
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 107
    goto/16 :goto_b

    .line 111
    .end local v2       #_result:I,
    :sswitch_8f
    const-string v3, "com.lge.app.Andy_ILockScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/app/Andy_ILockScreenService$Stub;->getHeightHint()I

    move-result v2

    .line 113
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 115
    goto/16 :goto_b

    .line 43
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_68
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_8f
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
