.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"


# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x1a

.field static final TRANSACTION_adjustStreamVolume:I = 0x3

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x2

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_getMode:I = 0xf

.field static final TRANSACTION_getRingerMode:I = 0xa

.field static final TRANSACTION_getStreamMaxVolume:I = 0x8

.field static final TRANSACTION_getStreamVolume:I = 0x7

.field static final TRANSACTION_getVibrateSetting:I = 0xc

.field static final TRANSACTION_isBluetoothAGConnected:I = 0x20

.field static final TRANSACTION_isBluetoothAVConnected:I = 0x21

.field static final TRANSACTION_isBluetoothScoOn:I = 0x18

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x16

.field static final TRANSACTION_isWiredHeadsetConnected:I = 0x22

.field static final TRANSACTION_loadSoundEffects:I = 0x12

.field static final TRANSACTION_playSoundEffect:I = 0x10

.field static final TRANSACTION_playSoundEffectVolume:I = 0x11

.field static final TRANSACTION_registerMediaButtonEventReceiver:I = 0x1c

.field static final TRANSACTION_reloadAudioSettings:I = 0x14

.field static final TRANSACTION_requestAudioFocus:I = 0x19

.field static final TRANSACTION_setBluetoothScoOn:I = 0x17

.field static final TRANSACTION_setMode:I = 0xe

.field static final TRANSACTION_setRingerMode:I = 0x9

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x15

.field static final TRANSACTION_setStreamMute:I = 0x6

.field static final TRANSACTION_setStreamSolo:I = 0x5

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setVibrateSetting:I = 0xb

.field static final TRANSACTION_shouldVibrate:I = 0xd

.field static final TRANSACTION_startBluetoothSco:I = 0x1e

.field static final TRANSACTION_stopBluetoothSco:I = 0x1f

.field static final TRANSACTION_unloadSoundEffects:I = 0x13

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x1b

.field static final TRANSACTION_unregisterMediaButtonEventReceiver:I = 0x1d



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
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
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.media.IAudioService"

    .line 41
    sparse-switch p1, :sswitch_data_324

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_b
    return v0

    .line 45
    :sswitch_c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 46
    goto :goto_b

    .line 50
    :sswitch_13
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 57
    goto :goto_b

    .line 61
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    :sswitch_28
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 70
    goto :goto_b

    .line 74
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:I,
    :sswitch_41
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I,
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 83
    goto :goto_b

    .line 87
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:I,
    :sswitch_5a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2       #_arg1:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg2:I,
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 96
    goto :goto_b

    .line 100
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:I,
    :sswitch_73
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_90

    move v2, v7

    .line 106
    .local v2, _arg1:Z
    :goto_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 107
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 109
    goto/16 :goto_b

    .end local v2       #_arg1:Z,
    .end local v3       #_arg2:Landroid/os/IBinder;,
    :cond_90
    move v2, v9

    .line 104
    goto :goto_83

    .line 113
    .end local v1       #_arg0:I,
    :sswitch_92
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    move v2, v7

    .line 119
    .restart local v2       #_arg1:Z,
    :goto_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .restart local v3       #_arg2:Landroid/os/IBinder;,
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 122
    goto/16 :goto_b

    .end local v2       #_arg1:Z,
    .end local v3       #_arg2:Landroid/os/IBinder;,
    :cond_af
    move v2, v9

    .line 117
    goto :goto_a2

    .line 126
    .end local v1       #_arg0:I,
    :sswitch_b1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v6

    .line 130
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 132
    goto/16 :goto_b

    .line 136
    .end local v1       #_arg0:I,
    .end local v6       #_result:I,
    :sswitch_c7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v6

    .line 140
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 142
    goto/16 :goto_b

    .line 146
    .end local v1       #_arg0:I,
    .end local v6       #_result:I,
    :sswitch_dd
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 151
    goto/16 :goto_b

    .line 155
    .end local v1       #_arg0:I,
    :sswitch_ef
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v6

    .line 157
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 159
    goto/16 :goto_b

    .line 163
    .end local v6       #_result:I,
    :sswitch_101
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 170
    goto/16 :goto_b

    .line 174
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    :sswitch_117
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v6

    .line 178
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 180
    goto/16 :goto_b

    .line 184
    .end local v1       #_arg0:I,
    .end local v6       #_result:I,
    :sswitch_12d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v6

    .line 188
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v6, :cond_146

    move v0, v7

    :goto_140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 190
    goto/16 :goto_b

    :cond_146
    move v0, v9

    .line 189
    goto :goto_140

    .line 194
    .end local v1       #_arg0:I,
    .end local v6       #_result:Z,
    :sswitch_148
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 199
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 201
    goto/16 :goto_b

    .line 205
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Landroid/os/IBinder;,
    :sswitch_15e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v6

    .line 207
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 209
    goto/16 :goto_b

    .line 213
    .end local v6       #_result:I,
    :sswitch_170
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    move v0, v7

    .line 217
    goto/16 :goto_b

    .line 221
    .end local v1       #_arg0:I,
    :sswitch_17f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 226
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    move v0, v7

    .line 227
    goto/16 :goto_b

    .line 231
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:F,
    :sswitch_192
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v6

    .line 233
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v6, :cond_1a7

    move v0, v7

    :goto_1a1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 235
    goto/16 :goto_b

    :cond_1a7
    move v0, v9

    .line 234
    goto :goto_1a1

    .line 239
    .end local v6       #_result:Z,
    :sswitch_1a9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    move v0, v7

    .line 241
    goto/16 :goto_b

    .line 245
    :sswitch_1b4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    move v0, v7

    .line 247
    goto/16 :goto_b

    .line 251
    :sswitch_1bf
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d4

    move v1, v7

    .line 254
    .local v1, _arg0:Z
    :goto_1cb
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 256
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    :cond_1d4
    move v1, v9

    .line 253
    goto :goto_1cb

    .line 260
    :sswitch_1d6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v6

    .line 262
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v6, :cond_1eb

    move v0, v7

    :goto_1e5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 264
    goto/16 :goto_b

    :cond_1eb
    move v0, v9

    .line 263
    goto :goto_1e5

    .line 268
    .end local v6       #_result:Z,
    :sswitch_1ed
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_202

    move v1, v7

    .line 271
    .restart local v1       #_arg0:Z,
    :goto_1f9
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 273
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    :cond_202
    move v1, v9

    .line 270
    goto :goto_1f9

    .line 277
    :sswitch_204
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v6

    .line 279
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v6, :cond_219

    move v0, v7

    :goto_213
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 281
    goto/16 :goto_b

    :cond_219
    move v0, v9

    .line 280
    goto :goto_213

    .line 285
    .end local v6       #_result:Z,
    :sswitch_21b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 293
    .restart local v3       #_arg2:Landroid/os/IBinder;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 295
    .local v4, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v6

    .line 297
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 299
    goto/16 :goto_b

    .line 303
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_arg2:Landroid/os/IBinder;,
    .end local v4       #_arg3:Landroid/media/IAudioFocusDispatcher;,
    .end local v5       #_arg4:Ljava/lang/String;,
    .end local v6       #_result:I,
    :sswitch_246
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 307
    .local v1, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 310
    .restart local v3       #_arg2:Landroid/os/IBinder;,
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .line 311
    .restart local v6       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 313
    goto/16 :goto_b

    .line 317
    .end local v1       #_arg0:Landroid/media/IAudioFocusDispatcher;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/IBinder;,
    .end local v6       #_result:I,
    :sswitch_268
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 322
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 324
    goto/16 :goto_b

    .line 328
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Landroid/os/IBinder;,
    :sswitch_27e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29a

    .line 331
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 336
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_291
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 338
    goto/16 :goto_b

    .line 334
    .end local v1       #_arg0:Landroid/content/ComponentName;,
    :cond_29a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;,
    goto :goto_291

    .line 342
    .end local v1       #_arg0:Landroid/content/ComponentName;,
    :sswitch_29c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b8

    .line 345
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 350
    .restart local v1       #_arg0:Landroid/content/ComponentName;,
    :goto_2af
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 352
    goto/16 :goto_b

    .line 348
    .end local v1       #_arg0:Landroid/content/ComponentName;,
    :cond_2b8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;,
    goto :goto_2af

    .line 356
    .end local v1       #_arg0:Landroid/content/ComponentName;,
    :sswitch_2ba
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 359
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 361
    goto/16 :goto_b

    .line 365
    .end local v1       #_arg0:Landroid/os/IBinder;,
    :sswitch_2cc
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 368
    .restart local v1       #_arg0:Landroid/os/IBinder;,
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 370
    goto/16 :goto_b

    .line 374
    .end local v1       #_arg0:Landroid/os/IBinder;,
    :sswitch_2de
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothAGConnected()Z

    move-result v6

    .line 376
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v6, :cond_2f3

    move v0, v7

    :goto_2ed
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 378
    goto/16 :goto_b

    :cond_2f3
    move v0, v9

    .line 377
    goto :goto_2ed

    .line 382
    .end local v6       #_result:Z,
    :sswitch_2f5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothAVConnected()Z

    move-result v6

    .line 384
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v6, :cond_30a

    move v0, v7

    :goto_304
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 386
    goto/16 :goto_b

    :cond_30a
    move v0, v9

    .line 385
    goto :goto_304

    .line 390
    .end local v6       #_result:Z,
    :sswitch_30c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isWiredHeadsetConnected()Z

    move-result v6

    .line 392
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v6, :cond_321

    move v0, v7

    :goto_31b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 394
    goto/16 :goto_b

    :cond_321
    move v0, v9

    .line 393
    goto :goto_31b

    .line 41
    nop

    :sswitch_data_324
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_28
        0x3 -> :sswitch_41
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_73
        0x6 -> :sswitch_92
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_c7
        0x9 -> :sswitch_dd
        0xa -> :sswitch_ef
        0xb -> :sswitch_101
        0xc -> :sswitch_117
        0xd -> :sswitch_12d
        0xe -> :sswitch_148
        0xf -> :sswitch_15e
        0x10 -> :sswitch_170
        0x11 -> :sswitch_17f
        0x12 -> :sswitch_192
        0x13 -> :sswitch_1a9
        0x14 -> :sswitch_1b4
        0x15 -> :sswitch_1bf
        0x16 -> :sswitch_1d6
        0x17 -> :sswitch_1ed
        0x18 -> :sswitch_204
        0x19 -> :sswitch_21b
        0x1a -> :sswitch_246
        0x1b -> :sswitch_268
        0x1c -> :sswitch_27e
        0x1d -> :sswitch_29c
        0x1e -> :sswitch_2ba
        0x1f -> :sswitch_2cc
        0x20 -> :sswitch_2de
        0x21 -> :sswitch_2f5
        0x22 -> :sswitch_30c
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
