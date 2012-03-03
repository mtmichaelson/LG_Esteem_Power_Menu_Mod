.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"


# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xc

.field static final TRANSACTION_cancelConnectThread:I = 0xe

.field static final TRANSACTION_connectHeadset:I = 0x3

.field static final TRANSACTION_connectHeadsetInternal:I = 0xf

.field static final TRANSACTION_createIncomingConnect:I = 0xb

.field static final TRANSACTION_disconnectHeadset:I = 0x4

.field static final TRANSACTION_disconnectHeadsetInternal:I = 0x10

.field static final TRANSACTION_getBatteryUsageHint:I = 0xa

.field static final TRANSACTION_getCurrentHeadset:I = 0x2

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_isSLCSetup:I = 0x13

.field static final TRANSACTION_isSupportVoiceReg:I = 0x14

.field static final TRANSACTION_rejectIncomingConnect:I = 0xd

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_startVirtualVoiceCall:I = 0x11

.field static final TRANSACTION_startVoiceRecognition:I = 0x6

.field static final TRANSACTION_stopVirtualVoiceCall:I = 0x12

.field static final TRANSACTION_stopVoiceRecognition:I = 0x7



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
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
    const-string v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.bluetooth.IBluetoothHeadset"

    .line 43
    sparse-switch p1, :sswitch_data_27c

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 47
    :sswitch_c
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 55
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_26
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 61
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 63
    goto :goto_b

    .line 58
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:I,
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_26

    .line 67
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_34
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 69
    .local v2, _result:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_4a

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v2, p3, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_48
    move v3, v4

    .line 77
    goto :goto_b

    .line 75
    :cond_4a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 81
    .end local v2       #_result:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_4e
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_70

    .line 84
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_61
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 90
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_72

    move v3, v4

    :goto_6b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 92
    goto :goto_b

    .line 87
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_70
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_61

    .restart local v2       #_result:Z,
    :cond_72
    move v3, v6

    .line 91
    goto :goto_6b

    .line 96
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_74
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_90

    .line 99
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 104
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_87
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 106
    goto/16 :goto_b

    .line 102
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :cond_90
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_87

    .line 110
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_92
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b5

    .line 113
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_a5
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 119
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v2, :cond_b7

    move v3, v4

    :goto_af
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 121
    goto/16 :goto_b

    .line 116
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_b5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_a5

    .restart local v2       #_result:Z,
    :cond_b7
    move v3, v6

    .line 120
    goto :goto_af

    .line 125
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_b9
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition()Z

    move-result v2

    .line 127
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_ce

    move v3, v4

    :goto_c8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 129
    goto/16 :goto_b

    :cond_ce
    move v3, v6

    .line 128
    goto :goto_c8

    .line 133
    .end local v2       #_result:Z,
    :sswitch_d0
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition()Z

    move-result v2

    .line 135
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_e5

    move v3, v4

    :goto_df
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 137
    goto/16 :goto_b

    :cond_e5
    move v3, v6

    .line 136
    goto :goto_df

    .line 141
    .end local v2       #_result:Z,
    :sswitch_e7
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10e

    .line 144
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 150
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 152
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v2, :cond_110

    move v3, v4

    :goto_108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 154
    goto/16 :goto_b

    .line 147
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:I,
    .end local v2       #_result:Z,
    :cond_10e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_fa

    .restart local v1       #_arg1:I,
    .restart local v2       #_result:Z,
    :cond_110
    move v3, v6

    .line 153
    goto :goto_108

    .line 158
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v1       #_arg1:I,
    .end local v2       #_result:Z,
    :sswitch_112
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_132

    .line 161
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 166
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_125
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 167
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 169
    goto/16 :goto_b

    .line 164
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:I,
    :cond_132
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_125

    .line 173
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :sswitch_134
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint()I

    move-result v2

    .line 175
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 177
    goto/16 :goto_b

    .line 181
    .end local v2       #_result:I,
    :sswitch_146
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_169

    .line 184
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 189
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_159
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 190
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_16b

    move v3, v4

    :goto_163
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 192
    goto/16 :goto_b

    .line 187
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_169
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_159

    .restart local v2       #_result:Z,
    :cond_16b
    move v3, v6

    .line 191
    goto :goto_163

    .line 196
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_16d
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_190

    .line 199
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 204
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_180
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 205
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v2, :cond_192

    move v3, v4

    :goto_18a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 207
    goto/16 :goto_b

    .line 202
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_190
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_180

    .restart local v2       #_result:Z,
    :cond_192
    move v3, v6

    .line 206
    goto :goto_18a

    .line 211
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_194
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b7

    .line 214
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 219
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_1a7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 220
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v2, :cond_1b9

    move v3, v4

    :goto_1b1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 222
    goto/16 :goto_b

    .line 217
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_1b7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_1a7

    .restart local v2       #_result:Z,
    :cond_1b9
    move v3, v6

    .line 221
    goto :goto_1b1

    .line 226
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_1bb
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->cancelConnectThread()Z

    move-result v2

    .line 228
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v2, :cond_1d0

    move v3, v4

    :goto_1ca
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 230
    goto/16 :goto_b

    :cond_1d0
    move v3, v6

    .line 229
    goto :goto_1ca

    .line 234
    .end local v2       #_result:Z,
    :sswitch_1d2
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f5

    .line 237
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 242
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_1e5
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 243
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v2, :cond_1f7

    move v3, v4

    :goto_1ef
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 245
    goto/16 :goto_b

    .line 240
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_1f5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_1e5

    .restart local v2       #_result:Z,
    :cond_1f7
    move v3, v6

    .line 244
    goto :goto_1ef

    .line 249
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_1f9
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21c

    .line 252
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 257
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    :goto_20c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 258
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v2, :cond_21e

    move v3, v4

    :goto_216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 260
    goto/16 :goto_b

    .line 255
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :cond_21c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    goto :goto_20c

    .restart local v2       #_result:Z,
    :cond_21e
    move v3, v6

    .line 259
    goto :goto_216

    .line 264
    .end local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;,
    .end local v2       #_result:Z,
    :sswitch_220
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVirtualVoiceCall()Z

    move-result v2

    .line 266
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v2, :cond_235

    move v3, v4

    :goto_22f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 268
    goto/16 :goto_b

    :cond_235
    move v3, v6

    .line 267
    goto :goto_22f

    .line 272
    .end local v2       #_result:Z,
    :sswitch_237
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVirtualVoiceCall()Z

    move-result v2

    .line 274
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v2, :cond_24c

    move v3, v4

    :goto_246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 276
    goto/16 :goto_b

    :cond_24c
    move v3, v6

    .line 275
    goto :goto_246

    .line 280
    .end local v2       #_result:Z,
    :sswitch_24e
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isSLCSetup()Z

    move-result v2

    .line 282
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v2, :cond_263

    move v3, v4

    :goto_25d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 284
    goto/16 :goto_b

    :cond_263
    move v3, v6

    .line 283
    goto :goto_25d

    .line 288
    .end local v2       #_result:Z,
    :sswitch_265
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isSupportVoiceReg()Z

    move-result v2

    .line 290
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v2, :cond_27a

    move v3, v4

    :goto_274
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 292
    goto/16 :goto_b

    :cond_27a
    move v3, v6

    .line 291
    goto :goto_274

    .line 43
    :sswitch_data_27c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_34
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_74
        0x5 -> :sswitch_92
        0x6 -> :sswitch_b9
        0x7 -> :sswitch_d0
        0x8 -> :sswitch_e7
        0x9 -> :sswitch_112
        0xa -> :sswitch_134
        0xb -> :sswitch_146
        0xc -> :sswitch_16d
        0xd -> :sswitch_194
        0xe -> :sswitch_1bb
        0xf -> :sswitch_1d2
        0x10 -> :sswitch_1f9
        0x11 -> :sswitch_220
        0x12 -> :sswitch_237
        0x13 -> :sswitch_24e
        0x14 -> :sswitch_265
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
