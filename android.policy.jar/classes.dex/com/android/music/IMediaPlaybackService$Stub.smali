.class public abstract Lcom/android/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"


# interfaces
.implements Lcom/android/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.music.IMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xa

.field static final TRANSACTION_enqueue:I = 0x12

.field static final TRANSACTION_getAlbumId:I = 0xf

.field static final TRANSACTION_getAlbumName:I = 0xe

.field static final TRANSACTION_getArtistId:I = 0x11

.field static final TRANSACTION_getArtistName:I = 0x10

.field static final TRANSACTION_getAudioId:I = 0x17

.field static final TRANSACTION_getAudioSessionId:I = 0x1f

.field static final TRANSACTION_getContentPath:I = 0x29

.field static final TRANSACTION_getEqualizerMode:I = 0x23

.field static final TRANSACTION_getHDMIConnMode:I = 0x26

.field static final TRANSACTION_getMediaMountedCount:I = 0x1e

.field static final TRANSACTION_getNotiWidgetVisble:I = 0x21

.field static final TRANSACTION_getPageUrl:I = 0x27

.field static final TRANSACTION_getPath:I = 0x16

.field static final TRANSACTION_getQueue:I = 0x13

.field static final TRANSACTION_getQueuePosition:I = 0x3

.field static final TRANSACTION_getRepeatMode:I = 0x1d

.field static final TRANSACTION_getShuffleMode:I = 0x19

.field static final TRANSACTION_getTrackName:I = 0xd

.field static final TRANSACTION_isCDContents:I = 0x28

.field static final TRANSACTION_isPlaying:I = 0x4

.field static final TRANSACTION_moveQueueItem:I = 0x14

.field static final TRANSACTION_next:I = 0x9

.field static final TRANSACTION_notifyChange:I = 0x22

.field static final TRANSACTION_open:I = 0x2

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x7

.field static final TRANSACTION_position:I = 0xb

.field static final TRANSACTION_prev:I = 0x8

.field static final TRANSACTION_removeTrack:I = 0x1b

.field static final TRANSACTION_removeTracks:I = 0x1a

.field static final TRANSACTION_seek:I = 0xc

.field static final TRANSACTION_setEqualizerMode:I = 0x24

.field static final TRANSACTION_setHDMIConnMode:I = 0x25

.field static final TRANSACTION_setNotiWidgetVisble:I = 0x20

.field static final TRANSACTION_setQueuePosition:I = 0x15

.field static final TRANSACTION_setRepeatMode:I = 0x1c

.field static final TRANSACTION_setShuffleMode:I = 0x18

.field static final TRANSACTION_stop:I = 0x5



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.android.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/android/music/IMediaPlaybackService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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

    const-string v7, "com.android.music.IMediaPlaybackService"

    .line 38
    sparse-switch p1, :sswitch_data_31c

    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 42
    :sswitch_c
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 52
    goto :goto_b

    .line 56
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_24
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 60
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->open([JI)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 63
    goto :goto_b

    .line 67
    .end local v0       #_arg0:[J,
    .end local v2       #_arg1:I,
    :sswitch_39
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 69
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 71
    goto :goto_b

    .line 75
    .end local v3       #_result:I,
    :sswitch_4a
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 77
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v3, :cond_5e

    move v5, v6

    :goto_59
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 79
    goto :goto_b

    :cond_5e
    move v5, v8

    .line 78
    goto :goto_59

    .line 83
    .end local v3       #_result:Z,
    :sswitch_60
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->stop()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 86
    goto :goto_b

    .line 90
    :sswitch_6d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->pause()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 93
    goto :goto_b

    .line 97
    :sswitch_7a
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->play()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 100
    goto :goto_b

    .line 104
    :sswitch_87
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->prev()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 107
    goto/16 :goto_b

    .line 111
    :sswitch_95
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->next()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 114
    goto/16 :goto_b

    .line 118
    :sswitch_a3
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 120
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 122
    goto/16 :goto_b

    .line 126
    .end local v3       #_result:J,
    :sswitch_b5
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 128
    .restart local v3       #_result:J,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 130
    goto/16 :goto_b

    .line 134
    .end local v3       #_result:J,
    :sswitch_c7
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 137
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 138
    .restart local v3       #_result:J,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 140
    goto/16 :goto_b

    .line 144
    .end local v0       #_arg0:J,
    .end local v3       #_result:J,
    :sswitch_dd
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 148
    goto/16 :goto_b

    .line 152
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_ef
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 154
    .restart local v3       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 156
    goto/16 :goto_b

    .line 160
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_101
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 162
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 164
    goto/16 :goto_b

    .line 168
    .end local v3       #_result:J,
    :sswitch_113
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 172
    goto/16 :goto_b

    .line 176
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_125
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 178
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 180
    goto/16 :goto_b

    .line 184
    .end local v3       #_result:J,
    :sswitch_137
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 188
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2       #_arg1:I,
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 191
    goto/16 :goto_b

    .line 195
    .end local v0       #_arg0:[J,
    .end local v2       #_arg1:I,
    :sswitch_14d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v3

    .line 197
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 199
    goto/16 :goto_b

    .line 203
    .end local v3       #_result:[J,
    :sswitch_15f
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2       #_arg1:I,
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 210
    goto/16 :goto_b

    .line 214
    .end local v0       #_arg0:I,
    .end local v2       #_arg1:I,
    :sswitch_175
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 219
    goto/16 :goto_b

    .line 223
    .end local v0       #_arg0:I,
    :sswitch_187
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 227
    goto/16 :goto_b

    .line 231
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_199
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v3

    .line 233
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 235
    goto/16 :goto_b

    .line 239
    .end local v3       #_result:J,
    :sswitch_1ab
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 244
    goto/16 :goto_b

    .line 248
    .end local v0       #_arg0:I,
    :sswitch_1bd
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 250
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 252
    goto/16 :goto_b

    .line 256
    .end local v3       #_result:I,
    :sswitch_1cf
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .restart local v2       #_arg1:I,
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 262
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 264
    goto/16 :goto_b

    .line 268
    .end local v0       #_arg0:I,
    .end local v2       #_arg1:I,
    .end local v3       #_result:I,
    :sswitch_1e9
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 271
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v3

    .line 272
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 274
    goto/16 :goto_b

    .line 278
    .end local v0       #_arg0:J,
    .end local v3       #_result:I,
    :sswitch_1ff
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 283
    goto/16 :goto_b

    .line 287
    .end local v0       #_arg0:I,
    :sswitch_211
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 289
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 291
    goto/16 :goto_b

    .line 295
    .end local v3       #_result:I,
    :sswitch_223
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 297
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 299
    goto/16 :goto_b

    .line 303
    .end local v3       #_result:I,
    :sswitch_235
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioSessionId()I

    move-result v3

    .line 305
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 307
    goto/16 :goto_b

    .line 311
    .end local v3       #_result:I,
    :sswitch_247
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25c

    move v0, v6

    .line 314
    .local v0, _arg0:Z
    :goto_253
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setNotiWidgetVisble(Z)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 316
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_25c
    move v0, v8

    .line 313
    goto :goto_253

    .line 320
    :sswitch_25e
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getNotiWidgetVisble()Z

    move-result v3

    .line 322
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v3, :cond_273

    move v5, v6

    :goto_26d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 324
    goto/16 :goto_b

    :cond_273
    move v5, v8

    .line 323
    goto :goto_26d

    .line 328
    .end local v3       #_result:Z,
    :sswitch_275
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->notifyChange(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 333
    goto/16 :goto_b

    .line 337
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_287
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getEqualizerMode()I

    move-result v3

    .line 339
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 341
    goto/16 :goto_b

    .line 345
    .end local v3       #_result:I,
    :sswitch_299
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setEqualizerMode(I)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 350
    goto/16 :goto_b

    .line 354
    .end local v0       #_arg0:I,
    :sswitch_2ab
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c0

    move v0, v6

    .line 357
    .local v0, _arg0:Z
    :goto_2b7
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setHDMIConnMode(Z)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 359
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_2c0
    move v0, v8

    .line 356
    goto :goto_2b7

    .line 363
    :sswitch_2c2
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getHDMIConnMode()Z

    move-result v3

    .line 365
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v3, :cond_2d7

    move v5, v6

    :goto_2d1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 367
    goto/16 :goto_b

    :cond_2d7
    move v5, v8

    .line 366
    goto :goto_2d1

    .line 371
    .end local v3       #_result:Z,
    :sswitch_2d9
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->getPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 377
    goto/16 :goto_b

    .line 381
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_2ef
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->isCDContents(Ljava/lang/String;)Z

    move-result v3

    .line 385
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v3, :cond_308

    move v5, v6

    :goto_302
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 387
    goto/16 :goto_b

    :cond_308
    move v5, v8

    .line 386
    goto :goto_302

    .line 391
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Z,
    :sswitch_30a
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getContentPath()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 395
    goto/16 :goto_b

    .line 38
    :sswitch_data_31c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_60
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_7a
        0x8 -> :sswitch_87
        0x9 -> :sswitch_95
        0xa -> :sswitch_a3
        0xb -> :sswitch_b5
        0xc -> :sswitch_c7
        0xd -> :sswitch_dd
        0xe -> :sswitch_ef
        0xf -> :sswitch_101
        0x10 -> :sswitch_113
        0x11 -> :sswitch_125
        0x12 -> :sswitch_137
        0x13 -> :sswitch_14d
        0x14 -> :sswitch_15f
        0x15 -> :sswitch_175
        0x16 -> :sswitch_187
        0x17 -> :sswitch_199
        0x18 -> :sswitch_1ab
        0x19 -> :sswitch_1bd
        0x1a -> :sswitch_1cf
        0x1b -> :sswitch_1e9
        0x1c -> :sswitch_1ff
        0x1d -> :sswitch_211
        0x1e -> :sswitch_223
        0x1f -> :sswitch_235
        0x20 -> :sswitch_247
        0x21 -> :sswitch_25e
        0x22 -> :sswitch_275
        0x23 -> :sswitch_287
        0x24 -> :sswitch_299
        0x25 -> :sswitch_2ab
        0x26 -> :sswitch_2c2
        0x27 -> :sswitch_2d9
        0x28 -> :sswitch_2ef
        0x29 -> :sswitch_30a
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
