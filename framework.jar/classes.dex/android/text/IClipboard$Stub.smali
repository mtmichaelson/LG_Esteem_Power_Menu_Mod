.class public abstract Landroid/text/IClipboard$Stub;
.super Landroid/os/Binder;
.source "IClipboard.java"


# interfaces
.implements Landroid/text/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/IClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/IClipboard$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.text.IClipboard"

.field static final TRANSACTION_getClipboardText:I = 0x1

.field static final TRANSACTION_hasClipboardText:I = 0x3

.field static final TRANSACTION_setClipboardText:I = 0x2



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.text.IClipboard"

    invoke-virtual {p0, p0, v0}, Landroid/text/IClipboard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;
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
    const-string v1, "android.text.IClipboard"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/text/IClipboard;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/text/IClipboard;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/text/IClipboard$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/text/IClipboard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "android.text.IClipboard"

    .line 43
    sparse-switch p1, :sswitch_data_60

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 47
    :sswitch_c
    const-string v2, "android.text.IClipboard"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v2, "android.text.IClipboard"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/text/IClipboard$Stub;->getClipboardText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    .local v1, _result:Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_29

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-static {v1, p3, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_27
    move v2, v3

    .line 62
    goto :goto_b

    .line 60
    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 66
    .end local v1       #_result:Ljava/lang/CharSequence;,
    :sswitch_2d
    const-string v2, "android.text.IClipboard"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    .line 69
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 74
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_40
    invoke-virtual {p0, v0}, Landroid/text/IClipboard$Stub;->setClipboardText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 76
    goto :goto_b

    .line 72
    .end local v0       #_arg0:Ljava/lang/CharSequence;,
    :cond_48
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;,
    goto :goto_40

    .line 80
    .end local v0       #_arg0:Ljava/lang/CharSequence;,
    :sswitch_4a
    const-string v2, "android.text.IClipboard"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/text/IClipboard$Stub;->hasClipboardText()Z

    move-result v1

    .line 82
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_5e

    move v2, v3

    :goto_59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 84
    goto :goto_b

    :cond_5e
    move v2, v5

    .line 83
    goto :goto_59

    .line 43
    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_4a
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
