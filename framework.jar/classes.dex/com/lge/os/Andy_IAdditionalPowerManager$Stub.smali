.class public abstract Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;
.super Landroid/os/Binder;
.source "Andy_IAdditionalPowerManager.java"


# interfaces
.implements Lcom/lge/os/Andy_IAdditionalPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/os/Andy_IAdditionalPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/os/Andy_IAdditionalPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.os.Andy_IAdditionalPowerManager"

.field static final TRANSACTION_reboot:I = 0x2

.field static final TRANSACTION_shutdown:I = 0x1



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.os.Andy_IAdditionalPowerManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/os/Andy_IAdditionalPowerManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "com.lge.os.Andy_IAdditionalPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/os/Andy_IAdditionalPowerManager;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcom/lge/os/Andy_IAdditionalPowerManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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

    const-string v3, "com.lge.os.Andy_IAdditionalPowerManager"

    .line 39
    sparse-switch p1, :sswitch_data_30

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 43
    :sswitch_b
    const-string v1, "com.lge.os.Andy_IAdditionalPowerManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 44
    goto :goto_a

    .line 48
    :sswitch_12
    const-string v1, "com.lge.os.Andy_IAdditionalPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;->shutdown()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 51
    goto :goto_a

    .line 55
    :sswitch_1f
    const-string v1, "com.lge.os.Andy_IAdditionalPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/os/Andy_IAdditionalPowerManager$Stub;->reboot(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 60
    goto :goto_a

    .line 39
    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
