.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"


# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_Channel_HiddenMenu:I = 0x1e

.field static final TRANSACTION_CloseDUT_HiddenMenu:I = 0x17

.field static final TRANSACTION_FRError_HiddenMenu:I = 0x14

.field static final TRANSACTION_FRGood_HiddenMenu:I = 0x15

.field static final TRANSACTION_OpenDUT_HiddenMenu:I = 0xf

.field static final TRANSACTION_RSSI_HiddenMenu:I = 0x16

.field static final TRANSACTION_RxStart_HiddenMenu:I = 0x10

.field static final TRANSACTION_RxStop_HiddenMenu:I = 0x11

.field static final TRANSACTION_SetPreamble_HiddenMenu:I = 0x19

.field static final TRANSACTION_TxBurstFrames_HiddenMenu:I = 0x1d

.field static final TRANSACTION_TxBurstInterval_HiddenMenu:I = 0x1a

.field static final TRANSACTION_TxDataRate11n_HiddenMenu:I = 0x20

.field static final TRANSACTION_TxDataRate_HiddenMenu:I = 0x18

.field static final TRANSACTION_TxDestAddress_HiddenMenu:I = 0x1f

.field static final TRANSACTION_TxGain_HiddenMenu:I = 0x1b

.field static final TRANSACTION_TxPayloadLength_HiddenMenu:I = 0x1c

.field static final TRANSACTION_TxStart_HiddenMenu:I = 0x13

.field static final TRANSACTION_TxStop_HiddenMenu:I = 0x12

.field static final TRANSACTION_acquireMulticastLock:I = 0x2e

.field static final TRANSACTION_acquireWifiLock:I = 0x29

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_canBeWifiEnabled:I = 0xe

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x28

.field static final TRANSACTION_getNumAllowedChannels:I = 0x24

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x26

.field static final TRANSACTION_getWifiApConfiguration:I = 0x32

.field static final TRANSACTION_getWifiApEnabledState:I = 0x31

.field static final TRANSACTION_getWifiEnabledState:I = 0x23

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x2c

.field static final TRANSACTION_isMulticastEnabled:I = 0x2d

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x2f

.field static final TRANSACTION_releaseWifiLock:I = 0x2b

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x27

.field static final TRANSACTION_setDLNAEnabled:I = 0x22

.field static final TRANSACTION_setDlnaMode:I = 0x21

.field static final TRANSACTION_setNumAllowedChannels:I = 0x25

.field static final TRANSACTION_setWifiApConfiguration:I = 0x33

.field static final TRANSACTION_setWifiApEnabled:I = 0x30

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x2a



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v9, "android.net.wifi.IWifiManager"

    .line 43
    sparse-switch p1, :sswitch_data_578

    .line 580
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 47
    :sswitch_c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 56
    goto :goto_b

    .line 60
    .end local v6       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_24
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    .line 63
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 71
    goto :goto_b

    .line 66
    .end local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    .end local v4       #_result:I,
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    goto :goto_37

    .line 75
    .end local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    :sswitch_45
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_5d

    move v7, v8

    :goto_58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 81
    goto :goto_b

    :cond_5d
    move v7, v10

    .line 80
    goto :goto_58

    .line 85
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_5f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7e

    move v1, v8

    .line 90
    .local v1, _arg1:Z
    :goto_6f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_80

    move v7, v8

    :goto_79
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 93
    goto :goto_b

    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :cond_7e
    move v1, v10

    .line 89
    goto :goto_6f

    .restart local v1       #_arg1:Z,
    .restart local v4       #_result:Z,
    :cond_80
    move v7, v10

    .line 92
    goto :goto_79

    .line 97
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :sswitch_82
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_9b

    move v7, v8

    :goto_95
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 103
    goto/16 :goto_b

    :cond_9b
    move v7, v10

    .line 102
    goto :goto_95

    .line 107
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_9d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_b2

    move v7, v8

    :goto_ac
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 111
    goto/16 :goto_b

    :cond_b2
    move v7, v10

    .line 110
    goto :goto_ac

    .line 115
    .end local v4       #_result:Z,
    :sswitch_b4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c9

    move v0, v8

    .line 118
    .local v0, _arg0:Z
    :goto_c0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 120
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_c9
    move v0, v10

    .line 117
    goto :goto_c0

    .line 124
    :sswitch_cb
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v5       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_dd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v4

    .line 134
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_f2

    move v7, v8

    :goto_ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 136
    goto/16 :goto_b

    :cond_f2
    move v7, v10

    .line 135
    goto :goto_ec

    .line 140
    .end local v4       #_result:Z,
    :sswitch_f4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v4

    .line 142
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_109

    move v7, v8

    :goto_103
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 144
    goto/16 :goto_b

    :cond_109
    move v7, v10

    .line 143
    goto :goto_103

    .line 148
    .end local v4       #_result:Z,
    :sswitch_10b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v4

    .line 150
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_120

    move v7, v8

    :goto_11a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 152
    goto/16 :goto_b

    :cond_120
    move v7, v10

    .line 151
    goto :goto_11a

    .line 156
    .end local v4       #_result:Z,
    :sswitch_122
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 158
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v4, :cond_139

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_136
    move v7, v8

    .line 166
    goto/16 :goto_b

    .line 164
    :cond_139
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_136

    .line 170
    .end local v4       #_result:Landroid/net/wifi/WifiInfo;,
    :sswitch_13d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_159

    move v0, v8

    .line 173
    .restart local v0       #_arg0:Z,
    :goto_149
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 174
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v4, :cond_15b

    move v7, v8

    :goto_153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 176
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_159
    move v0, v10

    .line 172
    goto :goto_149

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_15b
    move v7, v10

    .line 175
    goto :goto_153

    .line 180
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_15d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->canBeWifiEnabled()Z

    move-result v4

    .line 182
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v4, :cond_172

    move v7, v8

    :goto_16c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 184
    goto/16 :goto_b

    :cond_172
    move v7, v10

    .line 183
    goto :goto_16c

    .line 188
    .end local v4       #_result:Z,
    :sswitch_174
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_190

    move v0, v8

    .line 191
    .restart local v0       #_arg0:Z,
    :goto_180
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->OpenDUT_HiddenMenu(Z)Z

    move-result v4

    .line 192
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v4, :cond_192

    move v7, v8

    :goto_18a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 194
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_190
    move v0, v10

    .line 190
    goto :goto_180

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_192
    move v7, v10

    .line 193
    goto :goto_18a

    .line 198
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_194
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b0

    move v0, v8

    .line 201
    .restart local v0       #_arg0:Z,
    :goto_1a0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RxStart_HiddenMenu(Z)Z

    move-result v4

    .line 202
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_1b2

    move v7, v8

    :goto_1aa
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 204
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_1b0
    move v0, v10

    .line 200
    goto :goto_1a0

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_1b2
    move v7, v10

    .line 203
    goto :goto_1aa

    .line 208
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_1b4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d0

    move v0, v8

    .line 211
    .restart local v0       #_arg0:Z,
    :goto_1c0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RxStop_HiddenMenu(Z)Z

    move-result v4

    .line 212
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v4, :cond_1d2

    move v7, v8

    :goto_1ca
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 214
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_1d0
    move v0, v10

    .line 210
    goto :goto_1c0

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_1d2
    move v7, v10

    .line 213
    goto :goto_1ca

    .line 218
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_1d4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f0

    move v0, v8

    .line 221
    .restart local v0       #_arg0:Z,
    :goto_1e0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxStop_HiddenMenu(Z)Z

    move-result v4

    .line 222
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v4, :cond_1f2

    move v7, v8

    :goto_1ea
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 224
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_1f0
    move v0, v10

    .line 220
    goto :goto_1e0

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_1f2
    move v7, v10

    .line 223
    goto :goto_1ea

    .line 228
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_1f4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_210

    move v0, v8

    .line 231
    .restart local v0       #_arg0:Z,
    :goto_200
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxStart_HiddenMenu(Z)Z

    move-result v4

    .line 232
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v4, :cond_212

    move v7, v8

    :goto_20a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 234
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_210
    move v0, v10

    .line 230
    goto :goto_200

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_212
    move v7, v10

    .line 233
    goto :goto_20a

    .line 238
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_214
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22d

    move v0, v8

    .line 241
    .restart local v0       #_arg0:Z,
    :goto_220
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->FRError_HiddenMenu(Z)I

    move-result v4

    .line 242
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 244
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:I,
    :cond_22d
    move v0, v10

    .line 240
    goto :goto_220

    .line 248
    :sswitch_22f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_248

    move v0, v8

    .line 251
    .restart local v0       #_arg0:Z,
    :goto_23b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->FRGood_HiddenMenu(Z)I

    move-result v4

    .line 252
    .restart local v4       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 254
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:I,
    :cond_248
    move v0, v10

    .line 250
    goto :goto_23b

    .line 258
    :sswitch_24a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_263

    move v0, v8

    .line 261
    .restart local v0       #_arg0:Z,
    :goto_256
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RSSI_HiddenMenu(Z)I

    move-result v4

    .line 262
    .restart local v4       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 264
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:I,
    :cond_263
    move v0, v10

    .line 260
    goto :goto_256

    .line 268
    :sswitch_265
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_281

    move v0, v8

    .line 271
    .restart local v0       #_arg0:Z,
    :goto_271
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->CloseDUT_HiddenMenu(Z)Z

    move-result v4

    .line 272
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v4, :cond_283

    move v7, v8

    :goto_27b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 274
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_281
    move v0, v10

    .line 270
    goto :goto_271

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_283
    move v7, v10

    .line 273
    goto :goto_27b

    .line 278
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_285
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z

    move-result v4

    .line 282
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v4, :cond_29e

    move v7, v8

    :goto_298
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 284
    goto/16 :goto_b

    :cond_29e
    move v7, v10

    .line 283
    goto :goto_298

    .line 288
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_2a0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->SetPreamble_HiddenMenu(Ljava/lang/String;)Z

    move-result v4

    .line 292
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v4, :cond_2b9

    move v7, v8

    :goto_2b3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 294
    goto/16 :goto_b

    :cond_2b9
    move v7, v10

    .line 293
    goto :goto_2b3

    .line 298
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_2bb
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxBurstInterval_HiddenMenu(I)Z

    move-result v4

    .line 302
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v4, :cond_2d4

    move v7, v8

    :goto_2ce
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 304
    goto/16 :goto_b

    :cond_2d4
    move v7, v10

    .line 303
    goto :goto_2ce

    .line 308
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_2d6
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxGain_HiddenMenu(I)Z

    move-result v4

    .line 312
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v4, :cond_2ef

    move v7, v8

    :goto_2e9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 314
    goto/16 :goto_b

    :cond_2ef
    move v7, v10

    .line 313
    goto :goto_2e9

    .line 318
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_2f1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxPayloadLength_HiddenMenu(I)Z

    move-result v4

    .line 322
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v4, :cond_30a

    move v7, v8

    :goto_304
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 324
    goto/16 :goto_b

    :cond_30a
    move v7, v10

    .line 323
    goto :goto_304

    .line 328
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_30c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxBurstFrames_HiddenMenu(I)Z

    move-result v4

    .line 332
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v4, :cond_325

    move v7, v8

    :goto_31f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 334
    goto/16 :goto_b

    :cond_325
    move v7, v10

    .line 333
    goto :goto_31f

    .line 338
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_327
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->Channel_HiddenMenu(I)Z

    move-result v4

    .line 342
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v4, :cond_340

    move v7, v8

    :goto_33a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 344
    goto/16 :goto_b

    :cond_340
    move v7, v10

    .line 343
    goto :goto_33a

    .line 348
    .end local v0       #_arg0:I,
    .end local v4       #_result:Z,
    :sswitch_342
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z

    move-result v4

    .line 352
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v4, :cond_35b

    move v7, v8

    :goto_355
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 354
    goto/16 :goto_b

    :cond_35b
    move v7, v10

    .line 353
    goto :goto_355

    .line 358
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v4       #_result:Z,
    :sswitch_35d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->TxDataRate11n_HiddenMenu(III)Z

    move-result v4

    .line 366
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v4, :cond_37e

    move v7, v8

    :goto_378
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 368
    goto/16 :goto_b

    :cond_37e
    move v7, v10

    .line 367
    goto :goto_378

    .line 372
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    .end local v2       #_arg2:I,
    .end local v4       #_result:Z,
    :sswitch_380
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_39c

    move v0, v8

    .line 375
    .local v0, _arg0:Z
    :goto_38c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDlnaMode(Z)Z

    move-result v4

    .line 376
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v4, :cond_39e

    move v7, v8

    :goto_396
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 378
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :cond_39c
    move v0, v10

    .line 374
    goto :goto_38c

    .restart local v0       #_arg0:Z,
    .restart local v4       #_result:Z,
    :cond_39e
    move v7, v10

    .line 377
    goto :goto_396

    .line 382
    .end local v0       #_arg0:Z,
    .end local v4       #_result:Z,
    :sswitch_3a0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setDLNAEnabled()Z

    move-result v4

    .line 384
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v4, :cond_3b5

    move v7, v8

    :goto_3af
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 386
    goto/16 :goto_b

    :cond_3b5
    move v7, v10

    .line 385
    goto :goto_3af

    .line 390
    .end local v4       #_result:Z,
    :sswitch_3b7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 392
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 394
    goto/16 :goto_b

    .line 398
    .end local v4       #_result:I,
    :sswitch_3c9
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v4

    .line 400
    .restart local v4       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 402
    goto/16 :goto_b

    .line 406
    .end local v4       #_result:I,
    :sswitch_3db
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3fb

    move v1, v8

    .line 411
    .local v1, _arg1:Z
    :goto_3eb
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(IZ)Z

    move-result v4

    .line 412
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v4, :cond_3fd

    move v7, v8

    :goto_3f5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 414
    goto/16 :goto_b

    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :cond_3fb
    move v1, v10

    .line 410
    goto :goto_3eb

    .restart local v1       #_arg1:Z,
    .restart local v4       #_result:Z,
    :cond_3fd
    move v7, v10

    .line 413
    goto :goto_3f5

    .line 418
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :sswitch_3ff
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v4

    .line 420
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    .line 422
    goto/16 :goto_b

    .line 426
    .end local v4       #_result:[I,
    :sswitch_411
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 428
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v4, :cond_426

    move v7, v8

    :goto_420
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 430
    goto/16 :goto_b

    :cond_426
    move v7, v10

    .line 429
    goto :goto_420

    .line 434
    .end local v4       #_result:Z,
    :sswitch_428
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 436
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v4, :cond_43f

    .line 438
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_43c
    move v7, v8

    .line 444
    goto/16 :goto_b

    .line 442
    :cond_43f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43c

    .line 448
    .end local v4       #_result:Landroid/net/DhcpInfo;,
    :sswitch_443
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 452
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_472

    .line 457
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 462
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_462
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 463
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v4, :cond_474

    move v7, v8

    :goto_46c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 465
    goto/16 :goto_b

    .line 460
    .end local v3       #_arg3:Landroid/os/WorkSource;,
    .end local v4       #_result:Z,
    :cond_472
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;,
    goto :goto_462

    .restart local v4       #_result:Z,
    :cond_474
    move v7, v10

    .line 464
    goto :goto_46c

    .line 469
    .end local v0       #_arg0:Landroid/os/IBinder;,
    .end local v1       #_arg1:I,
    .end local v2       #_arg2:Ljava/lang/String;,
    .end local v3       #_arg3:Landroid/os/WorkSource;,
    .end local v4       #_result:Z,
    :sswitch_476
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 473
    .restart local v0       #_arg0:Landroid/os/IBinder;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_496

    .line 474
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 479
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_48d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 481
    goto/16 :goto_b

    .line 477
    .end local v1       #_arg1:Landroid/os/WorkSource;,
    :cond_496
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;,
    goto :goto_48d

    .line 485
    .end local v0       #_arg0:Landroid/os/IBinder;,
    .end local v1       #_arg1:Landroid/os/WorkSource;,
    :sswitch_498
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 488
    .restart local v0       #_arg0:Landroid/os/IBinder;,
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 489
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v4, :cond_4b1

    move v7, v8

    :goto_4ab
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 491
    goto/16 :goto_b

    :cond_4b1
    move v7, v10

    .line 490
    goto :goto_4ab

    .line 495
    .end local v0       #_arg0:Landroid/os/IBinder;,
    .end local v4       #_result:Z,
    :sswitch_4b3
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 498
    goto/16 :goto_b

    .line 502
    :sswitch_4c1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 504
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v4, :cond_4d6

    move v7, v8

    :goto_4d0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 506
    goto/16 :goto_b

    :cond_4d6
    move v7, v10

    .line 505
    goto :goto_4d0

    .line 510
    .end local v4       #_result:Z,
    :sswitch_4d8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 514
    .restart local v0       #_arg0:Landroid/os/IBinder;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 517
    goto/16 :goto_b

    .line 521
    .end local v0       #_arg0:Landroid/os/IBinder;,
    .end local v1       #_arg1:Ljava/lang/String;,
    :sswitch_4ee
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 524
    goto/16 :goto_b

    .line 528
    :sswitch_4fc
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_526

    .line 531
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 537
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_50f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_528

    move v1, v8

    .line 538
    .local v1, _arg1:Z
    :goto_516
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 539
    .restart local v4       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v4, :cond_52a

    move v7, v8

    :goto_520
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 541
    goto/16 :goto_b

    .line 534
    .end local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :cond_526
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    goto :goto_50f

    :cond_528
    move v1, v10

    .line 537
    goto :goto_516

    .restart local v1       #_arg1:Z,
    .restart local v4       #_result:Z,
    :cond_52a
    move v7, v10

    .line 540
    goto :goto_520

    .line 545
    .end local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    .end local v1       #_arg1:Z,
    .end local v4       #_result:Z,
    :sswitch_52c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 547
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 549
    goto/16 :goto_b

    .line 553
    .end local v4       #_result:I,
    :sswitch_53e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 555
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v4, :cond_555

    .line 557
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_552
    move v7, v8

    .line 563
    goto/16 :goto_b

    .line 561
    :cond_555
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_552

    .line 567
    .end local v4       #_result:Landroid/net/wifi/WifiConfiguration;,
    :sswitch_559
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_575

    .line 570
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 575
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    :goto_56c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 577
    goto/16 :goto_b

    .line 573
    .end local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    :cond_575
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;,
    goto :goto_56c

    .line 43
    nop

    :sswitch_data_578
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_dd
        0xa -> :sswitch_f4
        0xb -> :sswitch_10b
        0xc -> :sswitch_122
        0xd -> :sswitch_13d
        0xe -> :sswitch_15d
        0xf -> :sswitch_174
        0x10 -> :sswitch_194
        0x11 -> :sswitch_1b4
        0x12 -> :sswitch_1d4
        0x13 -> :sswitch_1f4
        0x14 -> :sswitch_214
        0x15 -> :sswitch_22f
        0x16 -> :sswitch_24a
        0x17 -> :sswitch_265
        0x18 -> :sswitch_285
        0x19 -> :sswitch_2a0
        0x1a -> :sswitch_2bb
        0x1b -> :sswitch_2d6
        0x1c -> :sswitch_2f1
        0x1d -> :sswitch_30c
        0x1e -> :sswitch_327
        0x1f -> :sswitch_342
        0x20 -> :sswitch_35d
        0x21 -> :sswitch_380
        0x22 -> :sswitch_3a0
        0x23 -> :sswitch_3b7
        0x24 -> :sswitch_3c9
        0x25 -> :sswitch_3db
        0x26 -> :sswitch_3ff
        0x27 -> :sswitch_411
        0x28 -> :sswitch_428
        0x29 -> :sswitch_443
        0x2a -> :sswitch_476
        0x2b -> :sswitch_498
        0x2c -> :sswitch_4b3
        0x2d -> :sswitch_4c1
        0x2e -> :sswitch_4d8
        0x2f -> :sswitch_4ee
        0x30 -> :sswitch_4fc
        0x31 -> :sswitch_52c
        0x32 -> :sswitch_53e
        0x33 -> :sswitch_559
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
