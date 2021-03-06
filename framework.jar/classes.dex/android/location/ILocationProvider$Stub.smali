.class public abstract Landroid/location/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"


# interfaces
.implements Landroid/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationProvider"

.field static final TRANSACTION_addListener:I = 0x15

.field static final TRANSACTION_disable:I = 0xc

.field static final TRANSACTION_enable:I = 0xb

.field static final TRANSACTION_enableLocationTracking:I = 0x10

.field static final TRANSACTION_getAccuracy:I = 0xa

.field static final TRANSACTION_getInternalState:I = 0xf

.field static final TRANSACTION_getPowerRequirement:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xd

.field static final TRANSACTION_getStatusUpdateTime:I = 0xe

.field static final TRANSACTION_hasMonetaryCost:I = 0x4

.field static final TRANSACTION_meetsCriteria:I = 0x9

.field static final TRANSACTION_removeListener:I = 0x16

.field static final TRANSACTION_requiresCell:I = 0x3

.field static final TRANSACTION_requiresNetwork:I = 0x1

.field static final TRANSACTION_requiresSatellite:I = 0x2

.field static final TRANSACTION_sendExtraCommand:I = 0x14

.field static final TRANSACTION_setMinTime:I = 0x11

.field static final TRANSACTION_supportsAltitude:I = 0x5

.field static final TRANSACTION_supportsBearing:I = 0x7

.field static final TRANSACTION_supportsSpeed:I = 0x6

.field static final TRANSACTION_updateLocation:I = 0x13

.field static final TRANSACTION_updateNetworkState:I = 0x12



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;
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
    const-string v1, "android.location.ILocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationProvider;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/location/ILocationProvider;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/location/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "android.location.ILocationProvider"

    .line 43
    sparse-switch p1, :sswitch_data_232

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 47
    :sswitch_c
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresNetwork()Z

    move-result v3

    .line 54
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_27

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
    .end local v3       #_result:Z,
    :sswitch_29
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresSatellite()Z

    move-result v3

    .line 62
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_3d

    move v5, v6

    :goto_38
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 64
    goto :goto_b

    :cond_3d
    move v5, v8

    .line 63
    goto :goto_38

    .line 68
    .end local v3       #_result:Z,
    :sswitch_3f
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresCell()Z

    move-result v3

    .line 70
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_53

    move v5, v6

    :goto_4e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_b

    :cond_53
    move v5, v8

    .line 71
    goto :goto_4e

    .line 76
    .end local v3       #_result:Z,
    :sswitch_55
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->hasMonetaryCost()Z

    move-result v3

    .line 78
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_69

    move v5, v6

    :goto_64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 80
    goto :goto_b

    :cond_69
    move v5, v8

    .line 79
    goto :goto_64

    .line 84
    .end local v3       #_result:Z,
    :sswitch_6b
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsAltitude()Z

    move-result v3

    .line 86
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_7f

    move v5, v6

    :goto_7a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 88
    goto :goto_b

    :cond_7f
    move v5, v8

    .line 87
    goto :goto_7a

    .line 92
    .end local v3       #_result:Z,
    :sswitch_81
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsSpeed()Z

    move-result v3

    .line 94
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_96

    move v5, v6

    :goto_90
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 96
    goto/16 :goto_b

    :cond_96
    move v5, v8

    .line 95
    goto :goto_90

    .line 100
    .end local v3       #_result:Z,
    :sswitch_98
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsBearing()Z

    move-result v3

    .line 102
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_ad

    move v5, v6

    :goto_a7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 104
    goto/16 :goto_b

    :cond_ad
    move v5, v8

    .line 103
    goto :goto_a7

    .line 108
    .end local v3       #_result:Z,
    :sswitch_af
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getPowerRequirement()I

    move-result v3

    .line 110
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 112
    goto/16 :goto_b

    .line 116
    .end local v3       #_result:I,
    :sswitch_c1
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e4

    .line 119
    sget-object v5, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    .line 124
    .local v0, _arg0:Landroid/location/Criteria;
    :goto_d4
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v3

    .line 125
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v3, :cond_e6

    move v5, v6

    :goto_de
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 127
    goto/16 :goto_b

    .line 122
    .end local v0       #_arg0:Landroid/location/Criteria;,
    .end local v3       #_result:Z,
    :cond_e4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Criteria;,
    goto :goto_d4

    .restart local v3       #_result:Z,
    :cond_e6
    move v5, v8

    .line 126
    goto :goto_de

    .line 131
    .end local v0       #_arg0:Landroid/location/Criteria;,
    .end local v3       #_result:Z,
    :sswitch_e8
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getAccuracy()I

    move-result v3

    .line 133
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 135
    goto/16 :goto_b

    .line 139
    .end local v3       #_result:I,
    :sswitch_fa
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->enable()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 142
    goto/16 :goto_b

    .line 146
    :sswitch_108
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->disable()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 149
    goto/16 :goto_b

    .line 153
    :sswitch_116
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, _arg0:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v3

    .line 157
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    if-eqz v0, :cond_135

    .line 160
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_132
    move v5, v6

    .line 166
    goto/16 :goto_b

    .line 164
    :cond_135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_132

    .line 170
    .end local v0       #_arg0:Landroid/os/Bundle;,
    .end local v3       #_result:I,
    :sswitch_139
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v3

    .line 172
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 174
    goto/16 :goto_b

    .line 178
    .end local v3       #_result:J,
    :sswitch_14b
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getInternalState()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 182
    goto/16 :goto_b

    .line 186
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_15d
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_172

    move v0, v6

    .line 189
    .local v0, _arg0:Z
    :goto_169
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->enableLocationTracking(Z)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 191
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_172
    move v0, v8

    .line 188
    goto :goto_169

    .line 195
    :sswitch_174
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 199
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_194

    .line 200
    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 205
    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_18b
    invoke-virtual {p0, v0, v1, v2}, Landroid/location/ILocationProvider$Stub;->setMinTime(JLandroid/os/WorkSource;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 207
    goto/16 :goto_b

    .line 203
    .end local v2       #_arg1:Landroid/os/WorkSource;,
    :cond_194
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;,
    goto :goto_18b

    .line 211
    .end local v0       #_arg0:J,
    .end local v2       #_arg1:Landroid/os/WorkSource;,
    :sswitch_196
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b6

    .line 216
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 221
    .local v2, _arg1:Landroid/net/NetworkInfo;
    :goto_1ad
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationProvider$Stub;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 223
    goto/16 :goto_b

    .line 219
    .end local v2       #_arg1:Landroid/net/NetworkInfo;,
    :cond_1b6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/NetworkInfo;,
    goto :goto_1ad

    .line 227
    .end local v0       #_arg0:I,
    .end local v2       #_arg1:Landroid/net/NetworkInfo;,
    :sswitch_1b8
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d4

    .line 230
    sget-object v5, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 235
    .local v0, _arg0:Landroid/location/Location;
    :goto_1cb
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->updateLocation(Landroid/location/Location;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 237
    goto/16 :goto_b

    .line 233
    .end local v0       #_arg0:Landroid/location/Location;,
    :cond_1d4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Location;,
    goto :goto_1cb

    .line 241
    .end local v0       #_arg0:Landroid/location/Location;,
    :sswitch_1d6
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_205

    .line 246
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 251
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_1ed
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    .line 252
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v3, :cond_207

    move v5, v6

    :goto_1f7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    if-eqz v2, :cond_209

    .line 255
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v2, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_202
    move v5, v6

    .line 261
    goto/16 :goto_b

    .line 249
    .end local v2       #_arg1:Landroid/os/Bundle;,
    .end local v3       #_result:Z,
    :cond_205
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;,
    goto :goto_1ed

    .restart local v3       #_result:Z,
    :cond_207
    move v5, v8

    .line 253
    goto :goto_1f7

    .line 259
    :cond_209
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_202

    .line 265
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Landroid/os/Bundle;,
    .end local v3       #_result:Z,
    :sswitch_20d
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->addListener(I)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 270
    goto/16 :goto_b

    .line 274
    .end local v0       #_arg0:I,
    :sswitch_21f
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->removeListener(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 279
    goto/16 :goto_b

    .line 43
    nop

    :sswitch_data_232
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_81
        0x7 -> :sswitch_98
        0x8 -> :sswitch_af
        0x9 -> :sswitch_c1
        0xa -> :sswitch_e8
        0xb -> :sswitch_fa
        0xc -> :sswitch_108
        0xd -> :sswitch_116
        0xe -> :sswitch_139
        0xf -> :sswitch_14b
        0x10 -> :sswitch_15d
        0x11 -> :sswitch_174
        0x12 -> :sswitch_196
        0x13 -> :sswitch_1b8
        0x14 -> :sswitch_1d6
        0x15 -> :sswitch_20d
        0x16 -> :sswitch_21f
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
