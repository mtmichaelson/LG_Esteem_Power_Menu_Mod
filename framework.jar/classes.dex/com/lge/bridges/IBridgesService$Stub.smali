.class public abstract Lcom/lge/bridges/IBridgesService$Stub;
.super Landroid/os/Binder;
.source "IBridgesService.java"


# interfaces
.implements Lcom/lge/bridges/IBridgesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bridges/IBridgesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bridges/IBridgesService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bridges.IBridgesService"

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendNativeCommand:I = 0x2



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.bridges.IBridgesService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bridges/IBridgesService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bridges/IBridgesService;
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
    const-string v1, "com.lge.bridges.IBridgesService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/bridges/IBridgesService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/lge/bridges/IBridgesService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/lge/bridges/IBridgesService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/bridges/IBridgesService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    const-string v4, "com.lge.bridges.IBridgesService"

    .line 41
    sparse-switch p1, :sswitch_data_3c

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 45
    :sswitch_b
    const-string v2, "com.lge.bridges.IBridgesService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v2, "com.lge.bridges.IBridgesService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/bridges/IBridgesService$Stub;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 56
    goto :goto_a

    .line 60
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_result:Ljava/lang/String;,
    :sswitch_27
    const-string v2, "com.lge.bridges.IBridgesService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/lge/bridges/IBridgesService$Stub;->sendNativeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 66
    goto :goto_a

    .line 41
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
