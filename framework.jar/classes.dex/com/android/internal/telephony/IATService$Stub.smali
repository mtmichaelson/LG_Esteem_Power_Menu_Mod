.class public abstract Lcom/android/internal/telephony/IATService$Stub;
.super Landroid/os/Binder;
.source "IATService.java"


# interfaces
.implements Lcom/android/internal/telephony/IATService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IATService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IATService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IATService"

.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_read:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x6

.field static final TRANSACTION_write:I = 0x2



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.IATService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IATService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IATService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.android.internal.telephony.IATService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IATService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/android/internal/telephony/IATService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IATService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IATService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "com.android.internal.telephony.IATService"

    .line 38
    sparse-switch p1, :sswitch_data_90

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 42
    :sswitch_c
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IATService$Stub;->open(Ljava/lang/String;)Z

    move-result v1

    .line 51
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_2b

    move v2, v3

    :goto_26
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 53
    goto :goto_b

    :cond_2b
    move v2, v5

    .line 52
    goto :goto_26

    .line 57
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_result:Z,
    :sswitch_2d
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IATService$Stub;->write(Ljava/lang/String;)Z

    move-result v1

    .line 61
    .restart local v1       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_45

    move v2, v3

    :goto_40
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 63
    goto :goto_b

    :cond_45
    move v2, v5

    .line 62
    goto :goto_40

    .line 67
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_result:Z,
    :sswitch_47
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/telephony/IATService$Stub;->read()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 71
    goto :goto_b

    .line 75
    .end local v1       #_result:Ljava/lang/String;,
    :sswitch_58
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/IATService$Stub;->close()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 78
    goto :goto_b

    .line 82
    :sswitch_65
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallback;

    move-result-object v0

    .line 85
    .local v0, _arg0:Lcom/android/internal/telephony/ICallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IATService$Stub;->registerCallback(Lcom/android/internal/telephony/ICallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 87
    goto :goto_b

    .line 91
    .end local v0       #_arg0:Lcom/android/internal/telephony/ICallback;,
    :sswitch_7a
    const-string v2, "com.android.internal.telephony.IATService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallback;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Lcom/android/internal/telephony/ICallback;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IATService$Stub;->unregisterCallback(Lcom/android/internal/telephony/ICallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 96
    goto/16 :goto_b

    .line 38
    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_47
        0x4 -> :sswitch_58
        0x5 -> :sswitch_65
        0x6 -> :sswitch_7a
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
