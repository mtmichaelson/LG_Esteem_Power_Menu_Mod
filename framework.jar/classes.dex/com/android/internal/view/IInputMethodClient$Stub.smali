.class public abstract Lcom/android/internal/view/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"


# interfaces
.implements Lcom/android/internal/view/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodClient"

.field static final TRANSACTION_onBindMethod:I = 0x2

.field static final TRANSACTION_onUnbindMethod:I = 0x3

.field static final TRANSACTION_setActive:I = 0x4

.field static final TRANSACTION_setUsingInputMethod:I = 0x1



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "com.android.internal.view.IInputMethodClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "com.android.internal.view.IInputMethodClient"

    .line 42
    sparse-switch p1, :sswitch_data_62

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_b
    return v1

    .line 46
    :sswitch_c
    const-string v1, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 47
    goto :goto_b

    .line 51
    :sswitch_13
    const-string v1, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v0, v2

    .line 54
    .local v0, _arg0:Z
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->setUsingInputMethod(Z)V

    move v1, v2

    .line 55
    goto :goto_b

    .end local v0       #_arg0:Z,
    :cond_24
    move v0, v4

    .line 53
    goto :goto_1f

    .line 59
    :sswitch_26
    const-string v1, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 62
    sget-object v1, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/InputBindResult;

    .line 67
    .local v0, _arg0:Lcom/android/internal/view/InputBindResult;
    :goto_39
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V

    move v1, v2

    .line 68
    goto :goto_b

    .line 65
    .end local v0       #_arg0:Lcom/android/internal/view/InputBindResult;,
    :cond_3e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/view/InputBindResult;,
    goto :goto_39

    .line 72
    .end local v0       #_arg0:Lcom/android/internal/view/InputBindResult;,
    :sswitch_40
    const-string v1, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->onUnbindMethod(I)V

    move v1, v2

    .line 76
    goto :goto_b

    .line 80
    .end local v0       #_arg0:I,
    :sswitch_4e
    const-string v1, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    move v0, v2

    .line 83
    .local v0, _arg0:Z
    :goto_5a
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->setActive(Z)V

    move v1, v2

    .line 84
    goto :goto_b

    .end local v0       #_arg0:Z,
    :cond_5f
    move v0, v4

    .line 82
    goto :goto_5a

    .line 42
    nop

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_26
        0x3 -> :sswitch_40
        0x4 -> :sswitch_4e
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
