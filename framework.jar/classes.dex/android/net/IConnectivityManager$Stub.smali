.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"


# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getBackgroundDataSetting:I = 0xc

.field static final TRANSACTION_getFmcStatus:I = 0x24

.field static final TRANSACTION_getIpv4DefaultRouteSet:I = 0x25

.field static final TRANSACTION_getIpv6DefaultRouteSet:I = 0x26

.field static final TRANSACTION_getLastTetherError:I = 0x14

.field static final TRANSACTION_getLink:I = 0x1d

.field static final TRANSACTION_getMobileDataEnabled:I = 0xe

.field static final TRANSACTION_getMobileDataEnabledForEachPdn:I = 0xf

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getPdnRequestedStatusInSinglePdnScheme:I = 0x27

.field static final TRANSACTION_getTetherableIfaces:I = 0x17

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1a

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1b

.field static final TRANSACTION_getTetheredIfaces:I = 0x18

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final TRANSACTION_isTetheringSupported:I = 0x15

.field static final TRANSACTION_lgdoHandleDnsConfigurationChange:I = 0x16

.field static final TRANSACTION_rejectSwitch:I = 0x21

.field static final TRANSACTION_releaseLink:I = 0x1f

.field static final TRANSACTION_reportInetCondition:I = 0x1c

.field static final TRANSACTION_reportLinkSatisfaction:I = 0x1e

.field static final TRANSACTION_requestRouteToHost:I = 0xa

.field static final TRANSACTION_requestRouteToHostAddress:I = 0xb

.field static final TRANSACTION_setBackgroundDataSetting:I = 0xd

.field static final TRANSACTION_setMobileDataEnabled:I = 0x10

.field static final TRANSACTION_setMobileDataEnabledForEachPdn:I = 0x11

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setRadio:I = 0x7

.field static final TRANSACTION_setRadios:I = 0x6

.field static final TRANSACTION_startFmc:I = 0x22

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x8

.field static final TRANSACTION_stopFmc:I = 0x23

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x9

.field static final TRANSACTION_switchLink:I = 0x20

.field static final TRANSACTION_tether:I = 0x12

.field static final TRANSACTION_untether:I = 0x13



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v9, "android.net.IConnectivityManager"

    .line 42
    sparse-switch p1, :sswitch_data_438

    .line 476
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_b
    return v0

    .line 46
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 47
    goto :goto_b

    .line 51
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 56
    goto :goto_b

    .line 60
    .end local v1       #_arg0:I,
    :sswitch_24
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v6

    .line 62
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 64
    goto :goto_b

    .line 68
    .end local v6       #_result:I,
    :sswitch_35
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 70
    .local v6, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_4b

    .line 72
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v6, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_49
    move v0, v8

    .line 78
    goto :goto_b

    .line 76
    :cond_4b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 82
    .end local v6       #_result:Landroid/net/NetworkInfo;,
    :sswitch_4f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 86
    .restart local v6       #_result:Landroid/net/NetworkInfo;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v6, :cond_69

    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v6, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_67
    move v0, v8

    .line 94
    goto :goto_b

    .line 92
    :cond_69
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 98
    .end local v1       #_arg0:I,
    .end local v6       #_result:Landroid/net/NetworkInfo;,
    :sswitch_6d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 100
    .local v6, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v8

    .line 102
    goto :goto_b

    .line 106
    .end local v6       #_result:[Landroid/net/NetworkInfo;,
    :sswitch_7e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9a

    move v1, v8

    .line 109
    .local v1, _arg0:Z
    :goto_8a
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v6

    .line 110
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v6, :cond_9c

    move v0, v8

    :goto_94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 112
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    .end local v6       #_result:Z,
    :cond_9a
    move v1, v10

    .line 108
    goto :goto_8a

    .restart local v1       #_arg0:Z,
    .restart local v6       #_result:Z,
    :cond_9c
    move v0, v10

    .line 111
    goto :goto_94

    .line 116
    .end local v1       #_arg0:Z,
    .end local v6       #_result:Z,
    :sswitch_9e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_be

    move v2, v8

    .line 121
    .local v2, _arg1:Z
    :goto_ae
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v6

    .line 122
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v6, :cond_c0

    move v0, v8

    :goto_b8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 124
    goto/16 :goto_b

    .end local v2       #_arg1:Z,
    .end local v6       #_result:Z,
    :cond_be
    move v2, v10

    .line 120
    goto :goto_ae

    .restart local v2       #_arg1:Z,
    .restart local v6       #_result:Z,
    :cond_c0
    move v0, v10

    .line 123
    goto :goto_b8

    .line 128
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Z,
    .end local v6       #_result:Z,
    :sswitch_c2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 135
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .line 136
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 138
    goto/16 :goto_b

    .line 142
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/IBinder;,
    .end local v6       #_result:I,
    :sswitch_e0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v6

    .line 148
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 150
    goto/16 :goto_b

    .line 154
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_fa
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v6

    .line 160
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v6, :cond_117

    move v0, v8

    :goto_111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 162
    goto/16 :goto_b

    :cond_117
    move v0, v10

    .line 161
    goto :goto_111

    .line 166
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v6       #_result:Z,
    :sswitch_119
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(ILjava/lang/String;)Z

    move-result v6

    .line 172
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v6, :cond_136

    move v0, v8

    :goto_130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 174
    goto/16 :goto_b

    :cond_136
    move v0, v10

    .line 173
    goto :goto_130

    .line 178
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_138
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getBackgroundDataSetting()Z

    move-result v6

    .line 180
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v6, :cond_14d

    move v0, v8

    :goto_147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 182
    goto/16 :goto_b

    :cond_14d
    move v0, v10

    .line 181
    goto :goto_147

    .line 186
    .end local v6       #_result:Z,
    :sswitch_14f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_164

    move v1, v8

    .line 189
    .local v1, _arg0:Z
    :goto_15b
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setBackgroundDataSetting(Z)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 191
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    :cond_164
    move v1, v10

    .line 188
    goto :goto_15b

    .line 195
    :sswitch_166
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v6

    .line 197
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_17b

    move v0, v8

    :goto_175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 199
    goto/16 :goto_b

    :cond_17b
    move v0, v10

    .line 198
    goto :goto_175

    .line 203
    .end local v6       #_result:Z,
    :sswitch_17d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabledForEachPdn(I)Z

    move-result v6

    .line 207
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v6, :cond_196

    move v0, v8

    :goto_190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 209
    goto/16 :goto_b

    :cond_196
    move v0, v10

    .line 208
    goto :goto_190

    .line 213
    .end local v1       #_arg0:I,
    .end local v6       #_result:Z,
    :sswitch_198
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ad

    move v1, v8

    .line 216
    .local v1, _arg0:Z
    :goto_1a4
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 218
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    :cond_1ad
    move v1, v10

    .line 215
    goto :goto_1a4

    .line 222
    :sswitch_1af
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c8

    move v2, v8

    .line 227
    .local v2, _arg1:Z
    :goto_1bf
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabledForEachPdn(IZ)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 229
    goto/16 :goto_b

    .end local v2       #_arg1:Z,
    :cond_1c8
    move v2, v10

    .line 226
    goto :goto_1bf

    .line 233
    .end local v1       #_arg0:I,
    :sswitch_1ca
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v6

    .line 237
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 239
    goto/16 :goto_b

    .line 243
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_1e0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v6

    .line 247
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 249
    goto/16 :goto_b

    .line 253
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_1f6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v6

    .line 257
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 259
    goto/16 :goto_b

    .line 263
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_20c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v6

    .line 265
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v6, :cond_221

    move v0, v8

    :goto_21b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 267
    goto/16 :goto_b

    :cond_221
    move v0, v10

    .line 266
    goto :goto_21b

    .line 271
    .end local v6       #_result:Z,
    :sswitch_223
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->lgdoHandleDnsConfigurationChange()V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 274
    goto/16 :goto_b

    .line 278
    :sswitch_231
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 282
    goto/16 :goto_b

    .line 286
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_243
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 288
    .restart local v6       #_result:[Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 290
    goto/16 :goto_b

    .line 294
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_255
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 296
    .restart local v6       #_result:[Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 298
    goto/16 :goto_b

    .line 302
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_267
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 304
    .restart local v6       #_result:[Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 306
    goto/16 :goto_b

    .line 310
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_279
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 312
    .restart local v6       #_result:[Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 314
    goto/16 :goto_b

    .line 318
    .end local v6       #_result:[Ljava/lang/String;,
    :sswitch_28b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 325
    goto/16 :goto_b

    .line 329
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    :sswitch_2a1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1       #_arg0:I,
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 334
    .local v7, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 336
    .local v2, _arg1:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 338
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 339
    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->getLink(ILjava/util/Map;ILandroid/os/IBinder;)Z

    move-result v6

    .line 340
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v6, :cond_2ce

    move v0, v8

    :goto_2c8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 342
    goto/16 :goto_b

    :cond_2ce
    move v0, v10

    .line 341
    goto :goto_2c8

    .line 346
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/util/Map;,
    .end local v3       #_arg2:I,
    .end local v4       #_arg3:Landroid/os/IBinder;,
    .end local v6       #_result:Z,
    .end local v7       #cl:Ljava/lang/ClassLoader;,
    :sswitch_2d0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30a

    .line 353
    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .line 359
    .local v3, _arg2:Landroid/net/LinkInfo;
    :goto_2eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30c

    move v4, v8

    .line 361
    .local v4, _arg3:Z
    :goto_2f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30e

    move v5, v8

    .local v5, _arg4:Z
    :goto_2f9
    move-object v0, p0

    .line 362
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->reportLinkSatisfaction(IILandroid/net/LinkInfo;ZZ)Z

    move-result v6

    .line 363
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v6, :cond_310

    move v0, v8

    :goto_304
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 365
    goto/16 :goto_b

    .line 356
    .end local v3       #_arg2:Landroid/net/LinkInfo;,
    .end local v4       #_arg3:Z,
    .end local v5       #_arg4:Z,
    .end local v6       #_result:Z,
    :cond_30a
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;,
    goto :goto_2eb

    :cond_30c
    move v4, v10

    .line 359
    goto :goto_2f2

    .restart local v4       #_arg3:Z,
    :cond_30e
    move v5, v10

    .line 361
    goto :goto_2f9

    .restart local v5       #_arg4:Z,
    .restart local v6       #_result:Z,
    :cond_310
    move v0, v10

    .line 364
    goto :goto_304

    .line 369
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:Landroid/net/LinkInfo;,
    .end local v4       #_arg3:Z,
    .end local v5       #_arg4:Z,
    .end local v6       #_result:Z,
    :sswitch_312
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2       #_arg1:I,
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->releaseLink(II)Z

    move-result v6

    .line 375
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v6, :cond_32f

    move v0, v8

    :goto_329
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 377
    goto/16 :goto_b

    :cond_32f
    move v0, v10

    .line 376
    goto :goto_329

    .line 381
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v6       #_result:Z,
    :sswitch_331
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .restart local v2       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_363

    .line 388
    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .line 394
    .restart local v3       #_arg2:Landroid/net/LinkInfo;,
    :goto_34c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_365

    move v4, v8

    .line 395
    .restart local v4       #_arg3:Z,
    :goto_353
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->switchLink(IILandroid/net/LinkInfo;Z)Z

    move-result v6

    .line 396
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v6, :cond_367

    move v0, v8

    :goto_35d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 398
    goto/16 :goto_b

    .line 391
    .end local v3       #_arg2:Landroid/net/LinkInfo;,
    .end local v4       #_arg3:Z,
    .end local v6       #_result:Z,
    :cond_363
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;,
    goto :goto_34c

    :cond_365
    move v4, v10

    .line 394
    goto :goto_353

    .restart local v4       #_arg3:Z,
    .restart local v6       #_result:Z,
    :cond_367
    move v0, v10

    .line 397
    goto :goto_35d

    .line 402
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:Landroid/net/LinkInfo;,
    .end local v4       #_arg3:Z,
    .end local v6       #_result:Z,
    :sswitch_369
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .restart local v2       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39b

    .line 409
    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .line 415
    .restart local v3       #_arg2:Landroid/net/LinkInfo;,
    :goto_384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39d

    move v4, v8

    .line 416
    .restart local v4       #_arg3:Z,
    :goto_38b
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->rejectSwitch(IILandroid/net/LinkInfo;Z)Z

    move-result v6

    .line 417
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v6, :cond_39f

    move v0, v8

    :goto_395
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 419
    goto/16 :goto_b

    .line 412
    .end local v3       #_arg2:Landroid/net/LinkInfo;,
    .end local v4       #_arg3:Z,
    .end local v6       #_result:Z,
    :cond_39b
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;,
    goto :goto_384

    :cond_39d
    move v4, v10

    .line 415
    goto :goto_38b

    .restart local v4       #_arg3:Z,
    .restart local v6       #_result:Z,
    :cond_39f
    move v0, v10

    .line 418
    goto :goto_395

    .line 423
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:Landroid/net/LinkInfo;,
    .end local v4       #_arg3:Z,
    .end local v6       #_result:Z,
    :sswitch_3a1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 426
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startFmc(Landroid/os/IBinder;)Z

    move-result v6

    .line 427
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v6, :cond_3ba

    move v0, v8

    :goto_3b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 429
    goto/16 :goto_b

    :cond_3ba
    move v0, v10

    .line 428
    goto :goto_3b4

    .line 433
    .end local v1       #_arg0:Landroid/os/IBinder;,
    .end local v6       #_result:Z,
    :sswitch_3bc
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 436
    .restart local v1       #_arg0:Landroid/os/IBinder;,
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->stopFmc(Landroid/os/IBinder;)Z

    move-result v6

    .line 437
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v6, :cond_3d5

    move v0, v8

    :goto_3cf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 439
    goto/16 :goto_b

    :cond_3d5
    move v0, v10

    .line 438
    goto :goto_3cf

    .line 443
    .end local v1       #_arg0:Landroid/os/IBinder;,
    .end local v6       #_result:Z,
    :sswitch_3d7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 446
    .restart local v1       #_arg0:Landroid/os/IBinder;,
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getFmcStatus(Landroid/os/IBinder;)Z

    move-result v6

    .line 447
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v6, :cond_3f0

    move v0, v8

    :goto_3ea
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 449
    goto/16 :goto_b

    :cond_3f0
    move v0, v10

    .line 448
    goto :goto_3ea

    .line 453
    .end local v1       #_arg0:Landroid/os/IBinder;,
    .end local v6       #_result:Z,
    :sswitch_3f2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getIpv4DefaultRouteSet()Z

    move-result v6

    .line 455
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v6, :cond_407

    move v0, v8

    :goto_401
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 457
    goto/16 :goto_b

    :cond_407
    move v0, v10

    .line 456
    goto :goto_401

    .line 461
    .end local v6       #_result:Z,
    :sswitch_409
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getIpv6DefaultRouteSet()Z

    move-result v6

    .line 463
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v6, :cond_41e

    move v0, v8

    :goto_418
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 465
    goto/16 :goto_b

    :cond_41e
    move v0, v10

    .line 464
    goto :goto_418

    .line 469
    .end local v6       #_result:Z,
    :sswitch_420
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getPdnRequestedStatusInSinglePdnScheme()Z

    move-result v6

    .line 471
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v6, :cond_435

    move v0, v8

    :goto_42f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 473
    goto/16 :goto_b

    :cond_435
    move v0, v10

    .line 472
    goto :goto_42f

    .line 42
    nop

    :sswitch_data_438
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_e0
        0xa -> :sswitch_fa
        0xb -> :sswitch_119
        0xc -> :sswitch_138
        0xd -> :sswitch_14f
        0xe -> :sswitch_166
        0xf -> :sswitch_17d
        0x10 -> :sswitch_198
        0x11 -> :sswitch_1af
        0x12 -> :sswitch_1ca
        0x13 -> :sswitch_1e0
        0x14 -> :sswitch_1f6
        0x15 -> :sswitch_20c
        0x16 -> :sswitch_223
        0x17 -> :sswitch_231
        0x18 -> :sswitch_243
        0x19 -> :sswitch_255
        0x1a -> :sswitch_267
        0x1b -> :sswitch_279
        0x1c -> :sswitch_28b
        0x1d -> :sswitch_2a1
        0x1e -> :sswitch_2d0
        0x1f -> :sswitch_312
        0x20 -> :sswitch_331
        0x21 -> :sswitch_369
        0x22 -> :sswitch_3a1
        0x23 -> :sswitch_3bc
        0x24 -> :sswitch_3d7
        0x25 -> :sswitch_3f2
        0x26 -> :sswitch_409
        0x27 -> :sswitch_420
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
