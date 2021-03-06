.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"


# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addDstRoute:I = 0x27

.field static final TRANSACTION_attachPppd:I = 0x14

.field static final TRANSACTION_delDstRoute:I = 0x28

.field static final TRANSACTION_delV4SrcRoute:I = 0x23

.field static final TRANSACTION_delV6SrcRoute:I = 0x24

.field static final TRANSACTION_detachPppd:I = 0x15

.field static final TRANSACTION_disableNat:I = 0x12

.field static final TRANSACTION_enableNat:I = 0x11

.field static final TRANSACTION_getDnsForwarders:I = 0x10

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getInterfaceRxCounter:I = 0x1d

.field static final TRANSACTION_getInterfaceRxThrottle:I = 0x1f

.field static final TRANSACTION_getInterfaceTxCounter:I = 0x1c

.field static final TRANSACTION_getInterfaceTxThrottle:I = 0x20

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x7

.field static final TRANSACTION_isTetheringStarted:I = 0xb

.field static final TRANSACTION_isUsbRNDISStarted:I = 0x18

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0xe

.field static final TRANSACTION_listTtys:I = 0x13

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_replaceV4DefaultRoute:I = 0x25

.field static final TRANSACTION_replaceV4SrcRoute:I = 0x21

.field static final TRANSACTION_replaceV6DefaultRoute:I = 0x26

.field static final TRANSACTION_replaceV6SrcRoute:I = 0x22

.field static final TRANSACTION_setAccessPoint:I = 0x1b

.field static final TRANSACTION_setDnsForwarders:I = 0xf

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceThrottle:I = 0x1e

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x8

.field static final TRANSACTION_shutdown:I = 0x6

.field static final TRANSACTION_startAccessPoint:I = 0x19

.field static final TRANSACTION_startTethering:I = 0x9

.field static final TRANSACTION_startUsbRNDIS:I = 0x16

.field static final TRANSACTION_stopAccessPoint:I = 0x1a

.field static final TRANSACTION_stopTethering:I = 0xa

.field static final TRANSACTION_stopUsbRNDIS:I = 0x17

.field static final TRANSACTION_tetherInterface:I = 0xc

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0xd



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
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
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.os.INetworkManagementService"

    .line 41
    sparse-switch p1, :sswitch_data_3cc

    .line 472
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_b
    return v0

    .line 45
    :sswitch_c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 46
    goto :goto_b

    .line 50
    :sswitch_13
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 53
    .local v1, _arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 55
    goto :goto_b

    .line 59
    .end local v1       #_arg0:Landroid/net/INetworkManagementEventObserver;,
    :sswitch_28
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 62
    .restart local v1       #_arg0:Landroid/net/INetworkManagementEventObserver;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 64
    goto :goto_b

    .line 68
    .end local v1       #_arg0:Landroid/net/INetworkManagementEventObserver;,
    :sswitch_3d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 72
    goto :goto_b

    .line 76
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_4e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 80
    .local v6, _result:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_68

    .line 82
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v6, p3, v8}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_66
    move v0, v8

    .line 88
    goto :goto_b

    .line 86
    :cond_68
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66

    .line 92
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:Landroid/net/InterfaceConfiguration;,
    :sswitch_6c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8b

    .line 97
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 102
    .local v2, _arg1:Landroid/net/InterfaceConfiguration;
    :goto_83
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 104
    goto :goto_b

    .line 100
    .end local v2       #_arg1:Landroid/net/InterfaceConfiguration;,
    :cond_8b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/InterfaceConfiguration;,
    goto :goto_83

    .line 108
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Landroid/net/InterfaceConfiguration;,
    :sswitch_8d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 111
    goto/16 :goto_b

    .line 115
    :sswitch_9b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v6

    .line 117
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v6, :cond_b0

    move v0, v8

    :goto_aa
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 119
    goto/16 :goto_b

    :cond_b0
    move v0, v10

    .line 118
    goto :goto_aa

    .line 123
    .end local v6       #_result:Z,
    :sswitch_b2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c7

    move v1, v8

    .line 126
    .local v1, _arg0:Z
    :goto_be
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 128
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    :cond_c7
    move v1, v10

    .line 125
    goto :goto_be

    .line 132
    :sswitch_c9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 137
    goto/16 :goto_b

    .line 141
    .end local v1       #_arg0:[Ljava/lang/String;,
    :sswitch_db
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 144
    goto/16 :goto_b

    .line 148
    :sswitch_e9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v6

    .line 150
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v6, :cond_fe

    move v0, v8

    :goto_f8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 152
    goto/16 :goto_b

    :cond_fe
    move v0, v10

    .line 151
    goto :goto_f8

    .line 156
    .end local v6       #_result:Z,
    :sswitch_100
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 161
    goto/16 :goto_b

    .line 165
    .end local v1       #_arg0:Ljava/lang/String;,
    :sswitch_112
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 170
    goto/16 :goto_b

    .line 174
    .end local v1       #_arg0:Ljava/lang/String;,
    :sswitch_124
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 178
    goto/16 :goto_b

    .line 182
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_136
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders([Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 187
    goto/16 :goto_b

    .line 191
    .end local v1       #_arg0:[Ljava/lang/String;,
    :sswitch_148
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6       #_result:[Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 195
    goto/16 :goto_b

    .line 199
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_15a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 206
    goto/16 :goto_b

    .line 210
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_170
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 217
    goto/16 :goto_b

    .line 221
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_186
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v6

    .line 223
    .restart local v6       #_result:[Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 225
    goto/16 :goto_b

    .line 229
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_198
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 240
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 242
    goto/16 :goto_b

    .line 246
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:Ljava/lang/String;,
    .end local v5       #_arg4:Ljava/lang/String;,
    :sswitch_1bb
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 251
    goto/16 :goto_b

    .line 255
    .end local v1       #_arg0:Ljava/lang/String;,
    :sswitch_1cd
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->startUsbRNDIS()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 258
    goto/16 :goto_b

    .line 262
    :sswitch_1db
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopUsbRNDIS()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 265
    goto/16 :goto_b

    .line 269
    :sswitch_1e9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isUsbRNDISStarted()Z

    move-result v6

    .line 271
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v6, :cond_1fe

    move v0, v8

    :goto_1f8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 273
    goto/16 :goto_b

    :cond_1fe
    move v0, v10

    .line 272
    goto :goto_1f8

    .line 277
    .end local v6       #_result:Z,
    :sswitch_200
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_224

    .line 280
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 286
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .restart local v3       #_arg2:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 291
    goto/16 :goto_b

    .line 283
    .end local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    :cond_224
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    goto :goto_213

    .line 295
    .end local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    :sswitch_226
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint()V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 298
    goto/16 :goto_b

    .line 302
    :sswitch_234
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_258

    .line 305
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 311
    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    :goto_247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .restart local v3       #_arg2:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 316
    goto/16 :goto_b

    .line 308
    .end local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    :cond_258
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    goto :goto_247

    .line 320
    .end local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    :sswitch_25a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxCounter(Ljava/lang/String;)J

    move-result-wide v6

    .line 324
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 326
    goto/16 :goto_b

    .line 330
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:J,
    :sswitch_270
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxCounter(Ljava/lang/String;)J

    move-result-wide v6

    .line 334
    .restart local v6       #_result:J,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 336
    goto/16 :goto_b

    .line 340
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:J,
    :sswitch_286
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 344
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 349
    goto/16 :goto_b

    .line 353
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:I,
    :sswitch_2a0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxThrottle(Ljava/lang/String;)I

    move-result v6

    .line 357
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 359
    goto/16 :goto_b

    .line 363
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_2b6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxThrottle(Ljava/lang/String;)I

    move-result v6

    .line 367
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 369
    goto/16 :goto_b

    .line 373
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_2cc
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 382
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->replaceV4SrcRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 383
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v6, :cond_2f1

    move v0, v8

    :goto_2eb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 385
    goto/16 :goto_b

    :cond_2f1
    move v0, v10

    .line 384
    goto :goto_2eb

    .line 389
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:I,
    .end local v6       #_result:Z,
    :sswitch_2f3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .restart local v3       #_arg2:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 398
    .restart local v4       #_arg3:I,
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->replaceV6SrcRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 399
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v6, :cond_318

    move v0, v8

    :goto_312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 401
    goto/16 :goto_b

    :cond_318
    move v0, v10

    .line 400
    goto :goto_312

    .line 405
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:I,
    .end local v6       #_result:Z,
    :sswitch_31a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->delV4SrcRoute(I)Z

    move-result v6

    .line 409
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v6, :cond_333

    move v0, v8

    :goto_32d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 411
    goto/16 :goto_b

    :cond_333
    move v0, v10

    .line 410
    goto :goto_32d

    .line 415
    .end local v1       #_arg0:I,
    .end local v6       #_result:Z,
    :sswitch_335
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 418
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->delV6SrcRoute(I)Z

    move-result v6

    .line 419
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v6, :cond_34e

    move v0, v8

    :goto_348
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 421
    goto/16 :goto_b

    :cond_34e
    move v0, v10

    .line 420
    goto :goto_348

    .line 425
    .end local v1       #_arg0:I,
    .end local v6       #_result:Z,
    :sswitch_350
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->replaceV4DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 431
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v6, :cond_36d

    move v0, v8

    :goto_367
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 433
    goto/16 :goto_b

    :cond_36d
    move v0, v10

    .line 432
    goto :goto_367

    .line 437
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_36f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->replaceV6DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 443
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v6, :cond_38c

    move v0, v8

    :goto_386
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 445
    goto/16 :goto_b

    :cond_38c
    move v0, v10

    .line 444
    goto :goto_386

    .line 449
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_38e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 456
    .restart local v3       #_arg2:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 457
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v6, :cond_3af

    move v0, v8

    :goto_3a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 459
    goto/16 :goto_b

    :cond_3af
    move v0, v10

    .line 458
    goto :goto_3a9

    .line 463
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_3b1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->delDstRoute(Ljava/lang/String;)Z

    move-result v6

    .line 467
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    if-eqz v6, :cond_3ca

    move v0, v8

    :goto_3c4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 469
    goto/16 :goto_b

    :cond_3ca
    move v0, v10

    .line 468
    goto :goto_3c4

    .line 41
    :sswitch_data_3cc
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_28
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_b2
        0x9 -> :sswitch_c9
        0xa -> :sswitch_db
        0xb -> :sswitch_e9
        0xc -> :sswitch_100
        0xd -> :sswitch_112
        0xe -> :sswitch_124
        0xf -> :sswitch_136
        0x10 -> :sswitch_148
        0x11 -> :sswitch_15a
        0x12 -> :sswitch_170
        0x13 -> :sswitch_186
        0x14 -> :sswitch_198
        0x15 -> :sswitch_1bb
        0x16 -> :sswitch_1cd
        0x17 -> :sswitch_1db
        0x18 -> :sswitch_1e9
        0x19 -> :sswitch_200
        0x1a -> :sswitch_226
        0x1b -> :sswitch_234
        0x1c -> :sswitch_25a
        0x1d -> :sswitch_270
        0x1e -> :sswitch_286
        0x1f -> :sswitch_2a0
        0x20 -> :sswitch_2b6
        0x21 -> :sswitch_2cc
        0x22 -> :sswitch_2f3
        0x23 -> :sswitch_31a
        0x24 -> :sswitch_335
        0x25 -> :sswitch_350
        0x26 -> :sswitch_36f
        0x27 -> :sswitch_38e
        0x28 -> :sswitch_3b1
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
