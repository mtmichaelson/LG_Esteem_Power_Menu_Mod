.class public abstract Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHID.java"


# interfaces
.implements Lcom/broadcom/bt/service/hid/IBluetoothHID;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/hid/IBluetoothHID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.hid.IBluetoothHID"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getAttrMask:I = 0x5

.field static final TRANSACTION_getConnectedDevices:I = 0x8

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getProtocolMode:I = 0x9

.field static final TRANSACTION_getReport:I = 0xb

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_sendData:I = 0xd

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_setProtocolMode:I = 0xa

.field static final TRANSACTION_setReport:I = 0xc

.field static final TRANSACTION_virtualUnplug:I = 0x3



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/hid/IBluetoothHID;
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
    const-string v1, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/hid/IBluetoothHID;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/broadcom/bt/service/hid/IBluetoothHID;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "com.broadcom.bt.service.hid.IBluetoothHID"

    .line 43
    sparse-switch p1, :sswitch_data_1c8

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 47
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 55
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_26
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 61
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v4, :cond_37

    move v5, v6

    :goto_30
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 63
    goto :goto_b

    .line 58
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v4       #_result:Z,
    :cond_35
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_26

    .restart local v4       #_result:Z,
    :cond_37
    move v5, v8

    .line 62
    goto :goto_30

    .line 67
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v4       #_result:Z,
    :sswitch_39
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_54

    .line 70
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_4c
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 77
    goto :goto_b

    .line 73
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :cond_54
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_4c

    .line 81
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_56
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_71

    .line 84
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_69
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 91
    goto :goto_b

    .line 87
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :cond_71
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_69

    .line 95
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_73
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_93

    .line 98
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_86
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 104
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 106
    goto/16 :goto_b

    .line 101
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v4       #_result:I,
    :cond_93
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_86

    .line 110
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_95
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b5

    .line 113
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_a8
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->getAttrMask(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 119
    .restart local v4       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 121
    goto/16 :goto_b

    .line 116
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v4       #_result:I,
    :cond_b5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_a8

    .line 125
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_b7
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_de

    .line 128
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 136
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_e0

    move v5, v6

    :goto_d8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 138
    goto/16 :goto_b

    .line 131
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:I,
    .end local v4       #_result:Z,
    :cond_de
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_ca

    .restart local v1       #_arg1:I,
    .restart local v4       #_result:Z,
    :cond_e0
    move v5, v8

    .line 137
    goto :goto_d8

    .line 142
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:I,
    .end local v4       #_result:Z,
    :sswitch_e2
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_102

    .line 145
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 150
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_f5
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 151
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 153
    goto/16 :goto_b

    .line 148
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v4       #_result:I,
    :cond_102
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_f5

    .line 157
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_104
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 159
    .local v4, _result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v5, v6

    .line 161
    goto/16 :goto_b

    .line 165
    .end local v4       #_result:[Landroid/bluetooth/BluetoothDevice;,
    :sswitch_116
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_132

    .line 168
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 173
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_129
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 175
    goto/16 :goto_b

    .line 171
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :cond_132
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_129

    .line 179
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_134
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_154

    .line 182
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 188
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 189
    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 191
    goto/16 :goto_b

    .line 185
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:B,
    :cond_154
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_147

    .line 195
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_156
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17e

    .line 198
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 204
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 206
    .restart local v1       #_arg1:B,
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 208
    .local v2, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 211
    goto/16 :goto_b

    .line 201
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:B,
    .end local v2       #_arg2:B,
    .end local v3       #_arg3:I,
    :cond_17e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_169

    .line 215
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_180
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a4

    .line 218
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 224
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 226
    .restart local v1       #_arg1:B,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 229
    goto/16 :goto_b

    .line 221
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:B,
    .end local v2       #_arg2:Ljava/lang/String;,
    :cond_1a4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_193

    .line 233
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_1a6
    const-string v5, "com.broadcom.bt.service.hid.IBluetoothHID"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c6

    .line 236
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 242
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_1b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 245
    goto/16 :goto_b

    .line 239
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:Ljava/lang/String;,
    :cond_1c6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_1b9

    .line 43
    :sswitch_data_1c8
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_39
        0x3 -> :sswitch_56
        0x4 -> :sswitch_73
        0x5 -> :sswitch_95
        0x6 -> :sswitch_b7
        0x7 -> :sswitch_e2
        0x8 -> :sswitch_104
        0x9 -> :sswitch_116
        0xa -> :sswitch_134
        0xb -> :sswitch_156
        0xc -> :sswitch_180
        0xd -> :sswitch_1a6
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
