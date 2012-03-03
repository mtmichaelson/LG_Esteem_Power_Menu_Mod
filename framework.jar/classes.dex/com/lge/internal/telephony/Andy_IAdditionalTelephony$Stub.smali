.class public abstract Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;
.super Landroid/os/Binder;
.source "Andy_IAdditionalTelephony.java"


# interfaces
.implements Lcom/lge/internal/telephony/Andy_IAdditionalTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/Andy_IAdditionalTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.telephony.Andy_IAdditionalTelephony"

.field static final TRANSACTION_Handle_BootComplete:I = 0xb

.field static final TRANSACTION_endActiveCall:I = 0xc

.field static final TRANSACTION_findIndexWithField:I = 0xa

.field static final TRANSACTION_getPIN1RetryNum:I = 0x5

.field static final TRANSACTION_getPIN2RetryNum:I = 0x7

.field static final TRANSACTION_getPUK1RetryNum:I = 0x6

.field static final TRANSACTION_getPUK2RetryNum:I = 0x8

.field static final TRANSACTION_isSIMPhonebookFull:I = 0xd

.field static final TRANSACTION_setApnForPreferApp:I = 0x1

.field static final TRANSACTION_setOriginalPreferredApn:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x3

.field static final TRANSACTION_toggleCurrentLine:I = 0x4

.field static final TRANSACTION_updatePINStatus:I = 0x9



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/Andy_IAdditionalTelephony;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_3
    return-object v1

    .line 33
    :cond_4
    const-string v1, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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

    const-string v5, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    .line 45
    sparse-switch p1, :sswitch_data_10e

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 49
    :sswitch_c
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->setApnForPreferApp(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 59
    goto :goto_b

    .line 63
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_24
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->setOriginalPreferredApn()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 66
    goto :goto_b

    .line 70
    :sswitch_31
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 76
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_4d

    move v3, v4

    :goto_48
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 78
    goto :goto_b

    :cond_4d
    move v3, v6

    .line 77
    goto :goto_48

    .line 82
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v2       #_result:Z,
    :sswitch_4f
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->toggleCurrentLine()I

    move-result v2

    .line 84
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 86
    goto :goto_b

    .line 90
    .end local v2       #_result:I,
    :sswitch_60
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->getPIN1RetryNum()I

    move-result v2

    .line 92
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 94
    goto :goto_b

    .line 98
    .end local v2       #_result:I,
    :sswitch_71
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->getPUK1RetryNum()I

    move-result v2

    .line 100
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 102
    goto :goto_b

    .line 106
    .end local v2       #_result:I,
    :sswitch_82
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->getPIN2RetryNum()I

    move-result v2

    .line 108
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 110
    goto/16 :goto_b

    .line 114
    .end local v2       #_result:I,
    :sswitch_94
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->getPUK2RetryNum()I

    move-result v2

    .line 116
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 118
    goto/16 :goto_b

    .line 122
    .end local v2       #_result:I,
    :sswitch_a6
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->updatePINStatus()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 125
    goto/16 :goto_b

    .line 129
    :sswitch_b4
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v0, v1}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 135
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 137
    goto/16 :goto_b

    .line 141
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v2       #_result:I,
    :sswitch_ce
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->Handle_BootComplete()I

    move-result v2

    .line 143
    .restart local v2       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 145
    goto/16 :goto_b

    .line 149
    .end local v2       #_result:I,
    :sswitch_e0
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->endActiveCall()Z

    move-result v2

    .line 151
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v2, :cond_f5

    move v3, v4

    :goto_ef
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 153
    goto/16 :goto_b

    :cond_f5
    move v3, v6

    .line 152
    goto :goto_ef

    .line 157
    .end local v2       #_result:Z,
    :sswitch_f7
    const-string v3, "com.lge.internal.telephony.Andy_IAdditionalTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/lge/internal/telephony/Andy_IAdditionalTelephony$Stub;->isSIMPhonebookFull()Z

    move-result v2

    .line 159
    .restart local v2       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_10c

    move v3, v4

    :goto_106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 161
    goto/16 :goto_b

    :cond_10c
    move v3, v6

    .line 160
    goto :goto_106

    .line 45
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_31
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_60
        0x6 -> :sswitch_71
        0x7 -> :sswitch_82
        0x8 -> :sswitch_94
        0x9 -> :sswitch_a6
        0xa -> :sswitch_b4
        0xb -> :sswitch_ce
        0xc -> :sswitch_e0
        0xd -> :sswitch_f7
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
