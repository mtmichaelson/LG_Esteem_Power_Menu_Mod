.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"


# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x27

.field static final TRANSACTION_authorizeService:I = 0x22

.field static final TRANSACTION_cancelBondProcess:I = 0x12

.field static final TRANSACTION_cancelDiscovery:I = 0xd

.field static final TRANSACTION_cancelPairingUserInput:I = 0x21

.field static final TRANSACTION_connectHeadset:I = 0x29

.field static final TRANSACTION_createBond:I = 0x10

.field static final TRANSACTION_createBondOutOfBand:I = 0x11

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disconnectHeadset:I = 0x2a

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enterBluetoothDUTMode:I = 0x31

.field static final TRANSACTION_exitBluetoothDUTMode:I = 0x32

.field static final TRANSACTION_fetchRemoteDiInfo:I = 0x2d

.field static final TRANSACTION_fetchRemoteUuids:I = 0x1b

.field static final TRANSACTION_generateOobKeys:I = 0x2e

.field static final TRANSACTION_getAddress:I = 0x5

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x15

.field static final TRANSACTION_getDeviceBlockedState:I = 0x30

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xa

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getRemoteClass:I = 0x19

.field static final TRANSACTION_getRemoteName:I = 0x17

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x1c

.field static final TRANSACTION_getRemoteServices:I = 0x2c

.field static final TRANSACTION_getRemoteUuids:I = 0x1a

.field static final TRANSACTION_getScanMode:I = 0x8

.field static final TRANSACTION_getTrustState:I = 0x25

.field static final TRANSACTION_isBluetoothDock:I = 0x26

.field static final TRANSACTION_isDiscovering:I = 0xe

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_listBonds:I = 0x14

.field static final TRANSACTION_notifyIncomingConnection:I = 0x2b

.field static final TRANSACTION_readOutOfBandData:I = 0xf

.field static final TRANSACTION_removeBond:I = 0x13

.field static final TRANSACTION_removeServiceRecord:I = 0x28

.field static final TRANSACTION_setDeviceBlockedState:I = 0x2f

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x16

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xb

.field static final TRANSACTION_setName:I = 0x7

.field static final TRANSACTION_setPairingConfirmation:I = 0x1f

.field static final TRANSACTION_setPasskey:I = 0x1e

.field static final TRANSACTION_setPin:I = 0x1d

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x20

.field static final TRANSACTION_setScanMode:I = 0x9

.field static final TRANSACTION_setServiceTrust:I = 0x24

.field static final TRANSACTION_setTrust:I = 0x23

.field static final TRANSACTION_startDiscovery:I = 0xc

.field static final TRANSACTION_updateRemoteName:I = 0x18



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
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
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.bluetooth.IBluetooth"

    .line 43
    sparse-switch p1, :sswitch_data_536

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 47
    :sswitch_c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v4

    .line 54
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_27

    move v5, v6

    :goto_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 56
    goto :goto_b

    :cond_27
    move v5, v8

    .line 55
    goto :goto_22

    .line 60
    .end local v4       #_result:Z,
    :sswitch_29
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v4

    .line 62
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 64
    goto :goto_b

    .line 68
    .end local v4       #_result:I,
    :sswitch_3a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v4

    .line 70
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_4e

    move v5, v6

    :goto_49
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_b

    :cond_4e
    move v5, v8

    .line 71
    goto :goto_49

    .line 76
    .end local v4       #_result:Z,
    :sswitch_50
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6b

    move v0, v6

    .line 79
    .local v0, _arg0:Z
    :goto_5c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v4

    .line 80
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_6d

    move v5, v6

    :goto_66
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 82
    goto :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_6b
    move v0, v8

    .line 78
    goto :goto_5c

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_6d
    move v5, v8

    .line 81
    goto :goto_66

    .line 86
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_6f
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 90
    goto :goto_b

    .line 94
    .end local v4       #_result:Ljava/lang/String;,
    :sswitch_80
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 98
    goto/16 :goto_b

    .line 102
    .end local v4       #_result:Ljava/lang/String;,
    :sswitch_92
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v4

    .line 106
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_ab

    move v5, v6

    :goto_a5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 108
    goto/16 :goto_b

    :cond_ab
    move v5, v8

    .line 107
    goto :goto_a5

    .line 112
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_ad
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v4

    .line 114
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 116
    goto/16 :goto_b

    .line 120
    .end local v4       #_result:I,
    :sswitch_bf
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v4

    .line 126
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v4, :cond_dc

    move v5, v6

    :goto_d6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 128
    goto/16 :goto_b

    :cond_dc
    move v5, v8

    .line 127
    goto :goto_d6

    .line 132
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    .end local v4       #_result:Z,
    :sswitch_de
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v4

    .line 134
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 136
    goto/16 :goto_b

    .line 140
    .end local v4       #_result:I,
    :sswitch_f0
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v4

    .line 144
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v4, :cond_109

    move v5, v6

    :goto_103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 146
    goto/16 :goto_b

    :cond_109
    move v5, v8

    .line 145
    goto :goto_103

    .line 150
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_10b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v4

    .line 152
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_120

    move v5, v6

    :goto_11a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 154
    goto/16 :goto_b

    :cond_120
    move v5, v8

    .line 153
    goto :goto_11a

    .line 158
    .end local v4       #_result:Z,
    :sswitch_122
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v4

    .line 160
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v4, :cond_137

    move v5, v6

    :goto_131
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 162
    goto/16 :goto_b

    :cond_137
    move v5, v8

    .line 161
    goto :goto_131

    .line 166
    .end local v4       #_result:Z,
    :sswitch_139
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v4

    .line 168
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_14e

    move v5, v6

    :goto_148
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 170
    goto/16 :goto_b

    :cond_14e
    move v5, v8

    .line 169
    goto :goto_148

    .line 174
    .end local v4       #_result:Z,
    :sswitch_150
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v4

    .line 176
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 178
    goto/16 :goto_b

    .line 182
    .end local v4       #_result:[B,
    :sswitch_162
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v4

    .line 186
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_17b

    move v5, v6

    :goto_175
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 188
    goto/16 :goto_b

    :cond_17b
    move v5, v8

    .line 187
    goto :goto_175

    .line 192
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_17d
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 198
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 199
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 200
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v4, :cond_19e

    move v5, v6

    :goto_198
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 202
    goto/16 :goto_b

    :cond_19e
    move v5, v8

    .line 201
    goto :goto_198

    .line 206
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:[B,
    .end local v2       #_arg2:[B,
    .end local v4       #_result:Z,
    :sswitch_1a0
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v4

    .line 210
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v4, :cond_1b9

    move v5, v6

    :goto_1b3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 212
    goto/16 :goto_b

    :cond_1b9
    move v5, v8

    .line 211
    goto :goto_1b3

    .line 216
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_1bb
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v4

    .line 220
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v4, :cond_1d4

    move v5, v6

    :goto_1ce
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 222
    goto/16 :goto_b

    :cond_1d4
    move v5, v8

    .line 221
    goto :goto_1ce

    .line 226
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_1d6
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 230
    goto/16 :goto_b

    .line 234
    .end local v4       #_result:[Ljava/lang/String;,
    :sswitch_1e8
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v4

    .line 238
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 240
    goto/16 :goto_b

    .line 244
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:I,
    :sswitch_1fe
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 250
    .restart local v1       #_arg1:[B,
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 251
    .restart local v2       #_arg2:[B,
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 252
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v4, :cond_21f

    move v5, v6

    :goto_219
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 254
    goto/16 :goto_b

    :cond_21f
    move v5, v8

    .line 253
    goto :goto_219

    .line 258
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:[B,
    .end local v2       #_arg2:[B,
    .end local v4       #_result:Z,
    :sswitch_221
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 264
    goto/16 :goto_b

    .line 268
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Ljava/lang/String;,
    :sswitch_237
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->updateRemoteName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 273
    goto/16 :goto_b

    .line 277
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_249
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    .line 281
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 283
    goto/16 :goto_b

    .line 287
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:I,
    :sswitch_25f
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 291
    .local v4, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v5, v6

    .line 293
    goto/16 :goto_b

    .line 297
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:[Landroid/os/ParcelUuid;,
    :sswitch_275
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a4

    .line 302
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 308
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v2

    .line 309
    .local v2, _arg2:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v4

    .line 310
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v4, :cond_2a6

    move v5, v6

    :goto_29e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 312
    goto/16 :goto_b

    .line 305
    .end local v1       #_arg1:Landroid/os/ParcelUuid;,
    .end local v2       #_arg2:Landroid/bluetooth/IBluetoothCallback;,
    .end local v4       #_result:Z,
    :cond_2a4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;,
    goto :goto_28c

    .restart local v2       #_arg2:Landroid/bluetooth/IBluetoothCallback;,
    .restart local v4       #_result:Z,
    :cond_2a6
    move v5, v8

    .line 311
    goto :goto_29e

    .line 316
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Landroid/os/ParcelUuid;,
    .end local v2       #_arg2:Landroid/bluetooth/IBluetoothCallback;,
    .end local v4       #_result:Z,
    :sswitch_2a8
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2cc

    .line 321
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 326
    .restart local v1       #_arg1:Landroid/os/ParcelUuid;,
    :goto_2bf
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v4

    .line 327
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 329
    goto/16 :goto_b

    .line 324
    .end local v1       #_arg1:Landroid/os/ParcelUuid;,
    .end local v4       #_result:I,
    :cond_2cc
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;,
    goto :goto_2bf

    .line 333
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Landroid/os/ParcelUuid;,
    :sswitch_2ce
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 338
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v4

    .line 339
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v4, :cond_2eb

    move v5, v6

    :goto_2e5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 341
    goto/16 :goto_b

    :cond_2eb
    move v5, v8

    .line 340
    goto :goto_2e5

    .line 345
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:[B,
    .end local v4       #_result:Z,
    :sswitch_2ed
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v4

    .line 351
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v4, :cond_30a

    move v5, v6

    :goto_304
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 353
    goto/16 :goto_b

    :cond_30a
    move v5, v8

    .line 352
    goto :goto_304

    .line 357
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:I,
    .end local v4       #_result:Z,
    :sswitch_30c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32c

    move v1, v6

    .line 362
    .local v1, _arg1:Z
    :goto_31c
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v4

    .line 363
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v4, :cond_32e

    move v5, v6

    :goto_326
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 365
    goto/16 :goto_b

    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :cond_32c
    move v1, v8

    .line 361
    goto :goto_31c

    .restart local v1       #_arg1:Z,
    .restart local v4       #_result:Z,
    :cond_32e
    move v5, v8

    .line 364
    goto :goto_326

    .line 369
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :sswitch_330
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v4

    .line 373
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v4, :cond_349

    move v5, v6

    :goto_343
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 375
    goto/16 :goto_b

    :cond_349
    move v5, v8

    .line 374
    goto :goto_343

    .line 379
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_34b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v4

    .line 383
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v4, :cond_364

    move v5, v6

    :goto_35e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 385
    goto/16 :goto_b

    :cond_364
    move v5, v8

    .line 384
    goto :goto_35e

    .line 389
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_366
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38d

    move v1, v6

    .line 395
    .restart local v1       #_arg1:Z,
    :goto_376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38f

    move v2, v6

    .line 396
    .local v2, _arg2:Z
    :goto_37d
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->authorizeService(Ljava/lang/String;ZZ)Z

    move-result v4

    .line 397
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v4, :cond_391

    move v5, v6

    :goto_387
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 399
    goto/16 :goto_b

    .end local v1       #_arg1:Z,
    .end local v2       #_arg2:Z,
    .end local v4       #_result:Z,
    :cond_38d
    move v1, v8

    .line 393
    goto :goto_376

    .restart local v1       #_arg1:Z,
    :cond_38f
    move v2, v8

    .line 395
    goto :goto_37d

    .restart local v2       #_arg2:Z,
    .restart local v4       #_result:Z,
    :cond_391
    move v5, v8

    .line 398
    goto :goto_387

    .line 403
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Z,
    .end local v2       #_arg2:Z,
    .end local v4       #_result:Z,
    :sswitch_393
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b3

    move v1, v6

    .line 408
    .restart local v1       #_arg1:Z,
    :goto_3a3
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v4

    .line 409
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v4, :cond_3b5

    move v5, v6

    :goto_3ad
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 411
    goto/16 :goto_b

    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :cond_3b3
    move v1, v8

    .line 407
    goto :goto_3a3

    .restart local v1       #_arg1:Z,
    .restart local v4       #_result:Z,
    :cond_3b5
    move v5, v8

    .line 410
    goto :goto_3ad

    .line 415
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :sswitch_3b7
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3db

    move v2, v6

    .line 422
    .restart local v2       #_arg2:Z,
    :goto_3cb
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setServiceTrust(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 423
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v4, :cond_3dd

    move v5, v6

    :goto_3d5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 425
    goto/16 :goto_b

    .end local v2       #_arg2:Z,
    .end local v4       #_result:Z,
    :cond_3db
    move v2, v8

    .line 421
    goto :goto_3cb

    .restart local v2       #_arg2:Z,
    .restart local v4       #_result:Z,
    :cond_3dd
    move v5, v8

    .line 424
    goto :goto_3d5

    .line 429
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v2       #_arg2:Z,
    .end local v4       #_result:Z,
    :sswitch_3df
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v4

    .line 433
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v4, :cond_3f8

    move v5, v6

    :goto_3f2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 435
    goto/16 :goto_b

    :cond_3f8
    move v5, v8

    .line 434
    goto :goto_3f2

    .line 439
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_3fa
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v4

    .line 443
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v4, :cond_413

    move v5, v6

    :goto_40d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 445
    goto/16 :goto_b

    :cond_413
    move v5, v8

    .line 444
    goto :goto_40d

    .line 449
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_415
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_441

    .line 454
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 460
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_42c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 463
    .local v3, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v4

    .line 464
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 466
    goto/16 :goto_b

    .line 457
    .end local v1       #_arg1:Landroid/os/ParcelUuid;,
    .end local v2       #_arg2:I,
    .end local v3       #_arg3:Landroid/os/IBinder;,
    .end local v4       #_result:I,
    :cond_441
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;,
    goto :goto_42c

    .line 470
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Landroid/os/ParcelUuid;,
    :sswitch_443
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 475
    goto/16 :goto_b

    .line 479
    .end local v0       #_arg0:I,
    :sswitch_455
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 483
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v4, :cond_46e

    move v5, v6

    :goto_468
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 485
    goto/16 :goto_b

    :cond_46e
    move v5, v8

    .line 484
    goto :goto_468

    .line 489
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_470
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 493
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v4, :cond_489

    move v5, v6

    :goto_483
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 495
    goto/16 :goto_b

    :cond_489
    move v5, v8

    .line 494
    goto :goto_483

    .line 499
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_48b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;)Z

    move-result v4

    .line 503
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v4, :cond_4a4

    move v5, v6

    :goto_49e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 505
    goto/16 :goto_b

    :cond_4a4
    move v5, v8

    .line 504
    goto :goto_49e

    .line 509
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_4a6
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServices(Ljava/lang/String;)Z

    move-result v4

    .line 513
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_4bf

    move v5, v6

    :goto_4b9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 515
    goto/16 :goto_b

    :cond_4bf
    move v5, v8

    .line 514
    goto :goto_4b9

    .line 519
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_4c1
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteDiInfo(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 524
    goto/16 :goto_b

    .line 528
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_4d3
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->generateOobKeys()V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 531
    goto/16 :goto_b

    .line 535
    :sswitch_4e1
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceBlockedState(Ljava/lang/String;I)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 542
    goto/16 :goto_b

    .line 546
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:I,
    :sswitch_4f7
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getDeviceBlockedState(Ljava/lang/String;)Z

    move-result v4

    .line 550
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v4, :cond_510

    move v5, v6

    :goto_50a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 552
    goto/16 :goto_b

    :cond_510
    move v5, v8

    .line 551
    goto :goto_50a

    .line 556
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_512
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enterBluetoothDUTMode()I

    move-result v4

    .line 558
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 560
    goto/16 :goto_b

    .line 564
    .end local v4       #_result:I,
    :sswitch_524
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->exitBluetoothDUTMode()I

    move-result v4

    .line 566
    .restart local v4       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 568
    goto/16 :goto_b

    .line 43
    :sswitch_data_536
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_50
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_80
        0x7 -> :sswitch_92
        0x8 -> :sswitch_ad
        0x9 -> :sswitch_bf
        0xa -> :sswitch_de
        0xb -> :sswitch_f0
        0xc -> :sswitch_10b
        0xd -> :sswitch_122
        0xe -> :sswitch_139
        0xf -> :sswitch_150
        0x10 -> :sswitch_162
        0x11 -> :sswitch_17d
        0x12 -> :sswitch_1a0
        0x13 -> :sswitch_1bb
        0x14 -> :sswitch_1d6
        0x15 -> :sswitch_1e8
        0x16 -> :sswitch_1fe
        0x17 -> :sswitch_221
        0x18 -> :sswitch_237
        0x19 -> :sswitch_249
        0x1a -> :sswitch_25f
        0x1b -> :sswitch_275
        0x1c -> :sswitch_2a8
        0x1d -> :sswitch_2ce
        0x1e -> :sswitch_2ed
        0x1f -> :sswitch_30c
        0x20 -> :sswitch_330
        0x21 -> :sswitch_34b
        0x22 -> :sswitch_366
        0x23 -> :sswitch_393
        0x24 -> :sswitch_3b7
        0x25 -> :sswitch_3df
        0x26 -> :sswitch_3fa
        0x27 -> :sswitch_415
        0x28 -> :sswitch_443
        0x29 -> :sswitch_455
        0x2a -> :sswitch_470
        0x2b -> :sswitch_48b
        0x2c -> :sswitch_4a6
        0x2d -> :sswitch_4c1
        0x2e -> :sswitch_4d3
        0x2f -> :sswitch_4e1
        0x30 -> :sswitch_4f7
        0x31 -> :sswitch_512
        0x32 -> :sswitch_524
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
