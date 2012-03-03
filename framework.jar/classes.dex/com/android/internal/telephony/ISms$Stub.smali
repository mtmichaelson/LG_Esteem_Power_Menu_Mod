.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"


# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_SendMultipartText:I = 0x9

.field static final TRANSACTION_SendText:I = 0x8

.field static final TRANSACTION_copyMessageToIccEf:I = 0x3

.field static final TRANSACTION_copySmsToIccEf:I = 0x4

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_isGsmMo:I = 0x10

.field static final TRANSACTION_readSCAddress:I = 0xd

.field static final TRANSACTION_readValidityPeriod:I = 0xc

.field static final TRANSACTION_sendData:I = 0x5

.field static final TRANSACTION_sendMultipartText:I = 0x7

.field static final TRANSACTION_sendText:I = 0x6

.field static final TRANSACTION_setMultipartTextValidityPeriod:I = 0xa

.field static final TRANSACTION_setSmsPriority:I = 0xf

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x2

.field static final TRANSACTION_updateSCAddress:I = 0xe

.field static final TRANSACTION_updateValidityPeriod:I = 0xb



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .registers 3
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v1, 0x0

    .line 43
    :goto_3
    return-object v1

    .line 39
    :cond_4
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_14

    .line 41
    check-cast v0, Lcom/android/internal/telephony/ISms;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 43
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
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
    .line 51
    sparse-switch p1, :sswitch_data_2b8

    .line 292
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 55
    :sswitch_8
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v4, 0x1

    goto :goto_7

    .line 60
    :sswitch_12
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v19

    .line 62
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    const/4 v4, 0x1

    goto :goto_7

    .line 68
    .end local v19       #_result:Ljava/util/List;,, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2a
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 72
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 74
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 75
    .local v7, _arg2:[B
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(II[B)Z

    move-result v18

    .line 76
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v18, :cond_55

    const/4 v4, 0x1

    :goto_4d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v4, 0x1

    goto :goto_7

    .line 77
    :cond_55
    const/4 v4, 0x0

    goto :goto_4d

    .line 82
    .end local v5       #_arg0:I,
    .end local v6       #_arg1:I,
    .end local v7       #_arg2:[B,
    .end local v18       #_result:Z,
    :sswitch_57
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    .restart local v5       #_arg0:I,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 88
    .local v6, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 89
    .restart local v7       #_arg2:[B,
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(I[B[B)Z

    move-result v18

    .line 90
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v18, :cond_82

    const/4 v4, 0x1

    :goto_7a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v4, 0x1

    goto :goto_7

    .line 91
    :cond_82
    const/4 v4, 0x0

    goto :goto_7a

    .line 96
    .end local v5       #_arg0:I,
    .end local v6       #_arg1:[B,
    .end local v7       #_arg2:[B,
    .end local v18       #_result:Z,
    :sswitch_84
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    .restart local v5       #_arg0:I,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 102
    .restart local v6       #_arg1:[B,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 103
    .restart local v7       #_arg2:[B,
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->copySmsToIccEf(I[B[B)I

    move-result v18

    .line 104
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 110
    .end local v5       #_arg0:I,
    .end local v6       #_arg1:[B,
    .end local v7       #_arg2:[B,
    .end local v18       #_result:I,
    :sswitch_ae
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 118
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 120
    .local v8, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f3

    .line 121
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 127
    .local v9, _arg4:Landroid/app/PendingIntent;
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f5

    .line 128
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, _arg5:Landroid/app/PendingIntent;
    :goto_e8
    move-object/from16 v4, p0

    .line 133
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 124
    .end local v9       #_arg4:Landroid/app/PendingIntent;,
    .end local v10       #_arg5:Landroid/app/PendingIntent;,
    :cond_f3
    const/4 v9, 0x0

    .restart local v9       #_arg4:Landroid/app/PendingIntent;,
    goto :goto_d7

    .line 131
    :cond_f5
    const/4 v10, 0x0

    .restart local v10       #_arg5:Landroid/app/PendingIntent;,
    goto :goto_e8

    .line 139
    .end local v5       #_arg0:Ljava/lang/String;,
    .end local v6       #_arg1:Ljava/lang/String;,
    .end local v7       #_arg2:I,
    .end local v8       #_arg3:[B,
    .end local v9       #_arg4:Landroid/app/PendingIntent;,
    .end local v10       #_arg5:Landroid/app/PendingIntent;,
    :sswitch_f7
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .restart local v5       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_138

    .line 148
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 154
    .local v8, _arg3:Landroid/app/PendingIntent;
    :goto_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13a

    .line 155
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9       #_arg4:Landroid/app/PendingIntent;,
    :goto_12d
    move-object/from16 v4, p0

    .line 160
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 151
    .end local v8       #_arg3:Landroid/app/PendingIntent;,
    .end local v9       #_arg4:Landroid/app/PendingIntent;,
    :cond_138
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/app/PendingIntent;,
    goto :goto_11c

    .line 158
    :cond_13a
    const/4 v9, 0x0

    .restart local v9       #_arg4:Landroid/app/PendingIntent;,
    goto :goto_12d

    .line 166
    .end local v5       #_arg0:Ljava/lang/String;,
    .end local v6       #_arg1:Ljava/lang/String;,
    .end local v7       #_arg2:Ljava/lang/String;,
    .end local v8       #_arg3:Landroid/app/PendingIntent;,
    .end local v9       #_arg4:Landroid/app/PendingIntent;,
    :sswitch_13c
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .restart local v5       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .restart local v6       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 174
    .local v14, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 176
    .local v15, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .local v16, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    .line 177
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 183
    .end local v5       #_arg0:Ljava/lang/String;,
    .end local v6       #_arg1:Ljava/lang/String;,
    .end local v14       #_arg2:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15       #_arg3:Ljava/util/List;,, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16       #_arg4:Ljava/util/List;,, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_16f
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .restart local v7       #_arg2:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b4

    .line 192
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 198
    .restart local v8       #_arg3:Landroid/app/PendingIntent;,
    :goto_194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b6

    .line 199
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 205
    .restart local v9       #_arg4:Landroid/app/PendingIntent;,
    :goto_1a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg5:Ljava/lang/String;
    move-object/from16 v4, p0

    .line 206
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->SendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 195
    .end local v8       #_arg3:Landroid/app/PendingIntent;,
    .end local v9       #_arg4:Landroid/app/PendingIntent;,
    .end local v10       #_arg5:Ljava/lang/String;,
    :cond_1b4
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/app/PendingIntent;,
    goto :goto_194

    .line 202
    :cond_1b6
    const/4 v9, 0x0

    .restart local v9       #_arg4:Landroid/app/PendingIntent;,
    goto :goto_1a5

    .line 212
    .end local v5       #_arg0:Ljava/lang/String;,
    .end local v6       #_arg1:Ljava/lang/String;,
    .end local v7       #_arg2:Ljava/lang/String;,
    .end local v8       #_arg3:Landroid/app/PendingIntent;,
    .end local v9       #_arg4:Landroid/app/PendingIntent;,
    :sswitch_1b8
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 216
    .restart local v5       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 218
    .restart local v6       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 220
    .restart local v14       #_arg2:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 222
    .restart local v15       #_arg3:Ljava/util/List;,, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 224
    .restart local v16       #_arg4:Ljava/util/List;,, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #_arg5:Ljava/lang/String;,
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v17, v10

    .line 225
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/ISms$Stub;->SendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 231
    .end local v5       #_arg0:Ljava/lang/String;,
    .end local v6       #_arg1:Ljava/lang/String;,
    .end local v10       #_arg5:Ljava/lang/String;,
    .end local v14       #_arg2:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15       #_arg3:Ljava/util/List;,, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16       #_arg4:Ljava/util/List;,, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_1f1
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 234
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setMultipartTextValidityPeriod(I)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 240
    .end local v5       #_arg0:I,
    :sswitch_209
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 243
    .restart local v5       #_arg0:I,
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->updateValidityPeriod(I)Z

    move-result v18

    .line 244
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v18, :cond_22b

    const/4 v4, 0x1

    :goto_222
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 245
    :cond_22b
    const/4 v4, 0x0

    goto :goto_222

    .line 250
    .end local v5       #_arg0:I,
    .end local v18       #_result:Z,
    :sswitch_22d
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->readValidityPeriod()I

    move-result v18

    .line 252
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 258
    .end local v18       #_result:I,
    :sswitch_246
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->readSCAddress()Ljava/lang/String;

    move-result-object v18

    .line 260
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 266
    .end local v18       #_result:Ljava/lang/String;,
    :sswitch_25f
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->updateSCAddress(Ljava/lang/String;)Z

    move-result v18

    .line 270
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v18, :cond_281

    const/4 v4, 0x1

    :goto_278
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 271
    :cond_281
    const/4 v4, 0x0

    goto :goto_278

    .line 276
    .end local v5       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:Z,
    :sswitch_283
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 279
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setSmsPriority(I)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 285
    .end local v5       #_arg0:I,
    :sswitch_29b
    const-string v4, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isGsmMo()Z

    move-result v18

    .line 287
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v18, :cond_2b6

    const/4 v4, 0x1

    :goto_2ad
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 288
    :cond_2b6
    const/4 v4, 0x0

    goto :goto_2ad

    .line 51
    :sswitch_data_2b8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_57
        0x4 -> :sswitch_84
        0x5 -> :sswitch_ae
        0x6 -> :sswitch_f7
        0x7 -> :sswitch_13c
        0x8 -> :sswitch_16f
        0x9 -> :sswitch_1b8
        0xa -> :sswitch_1f1
        0xb -> :sswitch_209
        0xc -> :sswitch_22d
        0xd -> :sswitch_246
        0xe -> :sswitch_25f
        0xf -> :sswitch_283
        0x10 -> :sswitch_29b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
