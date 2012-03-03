.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"


# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_Check_Notwork_Lock_Allowed:I = 0x44

.field static final TRANSACTION_ConfirmIMSPDNCLOSE:I = 0x3f

.field static final TRANSACTION_ConfirmLTENetDetach:I = 0x3e

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x17

.field static final TRANSACTION_disableDataConnectivity:I = 0x19

.field static final TRANSACTION_disableDataInEmergency:I = 0x1a

.field static final TRANSACTION_disableLocationUpdates:I = 0x15

.field static final TRANSACTION_enableApnType:I = 0x16

.field static final TRANSACTION_enableDataConnectivity:I = 0x18

.field static final TRANSACTION_enableLocationUpdates:I = 0x14

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActiveGateway:I = 0x3a

.field static final TRANSACTION_getActiveInterfaceName:I = 0x38

.field static final TRANSACTION_getActiveIpAddress:I = 0x39

.field static final TRANSACTION_getActivePhoneType:I = 0x21

.field static final TRANSACTION_getAllDataServiceEnabled:I = 0x46

.field static final TRANSACTION_getBackupedPhoneNumber:I = 0x29

.field static final TRANSACTION_getCallState:I = 0x1e

.field static final TRANSACTION_getCdmaEriHomeSystems:I = 0x27

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x23

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x24

.field static final TRANSACTION_getCdmaEriText:I = 0x25

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x28

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x4a

.field static final TRANSACTION_getCellLocation:I = 0x1c

.field static final TRANSACTION_getDataActivity:I = 0x1f

.field static final TRANSACTION_getDataState:I = 0x20

.field static final TRANSACTION_getDnsServers:I = 0x2f

.field static final TRANSACTION_getEhrpdInfoForIms:I = 0x3c

.field static final TRANSACTION_getGateway:I = 0x2e

.field static final TRANSACTION_getIMSI_M:I = 0x41

.field static final TRANSACTION_getIccPin1RemainingCount:I = 0x34

.field static final TRANSACTION_getIccPin2RemainingCount:I = 0x36

.field static final TRANSACTION_getIccPuk1RemainingCount:I = 0x35

.field static final TRANSACTION_getIccPuk2RemainingCount:I = 0x37

.field static final TRANSACTION_getIpAddress:I = 0x2d

.field static final TRANSACTION_getLGEmergencyNumber:I = 0x4b

.field static final TRANSACTION_getLteInfoForIMS:I = 0x3d

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1d

.field static final TRANSACTION_getNetworkType:I = 0x30

.field static final TRANSACTION_getPcscfIpv6Address:I = 0x3b

.field static final TRANSACTION_getVoiceMessageCount:I = 0x2c

.field static final TRANSACTION_handlePinMmi:I = 0xf

.field static final TRANSACTION_hasIccCard:I = 0x32

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1b

.field static final TRANSACTION_isHookKeyEnabled:I = 0x26

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isInEmergencyCall:I = 0x4d

.field static final TRANSACTION_isMPCS3GSIM:I = 0x42

.field static final TRANSACTION_isMPCS4GSIM:I = 0x43

.field static final TRANSACTION_isModemPowerSave:I = 0x31

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_requestDetachFromNetwork:I = 0x40

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x22

.field static final TRANSACTION_setAllDataServiceEnabled:I = 0x45

.field static final TRANSACTION_setBackupedPhoneNumber:I = 0x2a

.field static final TRANSACTION_setLGEmergencyNumber:I = 0x4c

.field static final TRANSACTION_setLteConnectEnabledForTest:I = 0x47

.field static final TRANSACTION_setNetworkModePreference:I = 0x48

.field static final TRANSACTION_setOTADMenableAdmin:I = 0x49

.field static final TRANSACTION_setRadio:I = 0x11

.field static final TRANSACTION_setRilPowerOff:I = 0x12

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_storeVoiceMailNumber:I = 0x2b

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPuk:I = 0x33

.field static final TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final TRANSACTION_updateServiceLocation:I = 0x13



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
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
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "com.android.internal.telephony.ITelephony"

    .line 45
    sparse-switch p1, :sswitch_data_64e

    .line 721
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 49
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 59
    goto :goto_b

    .line 63
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_24
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 68
    goto :goto_b

    .line 72
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_35
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v3

    .line 74
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_49

    move v5, v6

    :goto_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 76
    goto :goto_b

    :cond_49
    move v5, v8

    .line 75
    goto :goto_44

    .line 80
    .end local v3       #_result:Z,
    :sswitch_4b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_66

    move v0, v6

    .line 83
    .local v0, _arg0:Z
    :goto_57
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v3

    .line 84
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_68

    move v5, v6

    :goto_61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 86
    goto :goto_b

    .end local v0       #_arg0:Z,
    .end local v3       #_result:Z,
    :cond_66
    move v0, v8

    .line 82
    goto :goto_57

    .restart local v0       #_arg0:Z,
    .restart local v3       #_result:Z,
    :cond_68
    move v5, v8

    .line 85
    goto :goto_61

    .line 90
    .end local v0       #_arg0:Z,
    .end local v3       #_result:Z,
    :sswitch_6a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v3

    .line 92
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v3, :cond_7e

    move v5, v6

    :goto_79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 94
    goto :goto_b

    :cond_7e
    move v5, v8

    .line 93
    goto :goto_79

    .line 98
    .end local v3       #_result:Z,
    :sswitch_80
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 101
    goto/16 :goto_b

    .line 105
    :sswitch_8e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 108
    goto/16 :goto_b

    .line 112
    :sswitch_9c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v3

    .line 114
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_b1

    move v5, v6

    :goto_ab
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 116
    goto/16 :goto_b

    :cond_b1
    move v5, v8

    .line 115
    goto :goto_ab

    .line 120
    .end local v3       #_result:Z,
    :sswitch_b3
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v3

    .line 122
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_c8

    move v5, v6

    :goto_c2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 124
    goto/16 :goto_b

    :cond_c8
    move v5, v8

    .line 123
    goto :goto_c2

    .line 128
    .end local v3       #_result:Z,
    :sswitch_ca
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v3

    .line 130
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_df

    move v5, v6

    :goto_d9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 132
    goto/16 :goto_b

    :cond_df
    move v5, v8

    .line 131
    goto :goto_d9

    .line 136
    .end local v3       #_result:Z,
    :sswitch_e1
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v3

    .line 138
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v3, :cond_f6

    move v5, v6

    :goto_f0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 140
    goto/16 :goto_b

    :cond_f6
    move v5, v8

    .line 139
    goto :goto_f0

    .line 144
    .end local v3       #_result:Z,
    :sswitch_f8
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v3

    .line 146
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_10d

    move v5, v6

    :goto_107
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 148
    goto/16 :goto_b

    :cond_10d
    move v5, v8

    .line 147
    goto :goto_107

    .line 152
    .end local v3       #_result:Z,
    :sswitch_10f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 155
    goto/16 :goto_b

    .line 159
    :sswitch_11d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v3

    .line 163
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v3, :cond_136

    move v5, v6

    :goto_130
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 165
    goto/16 :goto_b

    :cond_136
    move v5, v8

    .line 164
    goto :goto_130

    .line 169
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Z,
    :sswitch_138
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 173
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v3, :cond_151

    move v5, v6

    :goto_14b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 175
    goto/16 :goto_b

    :cond_151
    move v5, v8

    .line 174
    goto :goto_14b

    .line 179
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Z,
    :sswitch_153
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 182
    goto/16 :goto_b

    .line 186
    :sswitch_161
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17d

    move v0, v6

    .line 189
    .local v0, _arg0:Z
    :goto_16d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    .line 190
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v3, :cond_17f

    move v5, v6

    :goto_177
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 192
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    .end local v3       #_result:Z,
    :cond_17d
    move v0, v8

    .line 188
    goto :goto_16d

    .restart local v0       #_arg0:Z,
    .restart local v3       #_result:Z,
    :cond_17f
    move v5, v8

    .line 191
    goto :goto_177

    .line 196
    .end local v0       #_arg0:Z,
    .end local v3       #_result:Z,
    :sswitch_181
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRilPowerOff()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 199
    goto/16 :goto_b

    .line 203
    :sswitch_18f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 206
    goto/16 :goto_b

    .line 210
    :sswitch_19d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 213
    goto/16 :goto_b

    .line 217
    :sswitch_1ab
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 220
    goto/16 :goto_b

    .line 224
    :sswitch_1b9
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 230
    goto/16 :goto_b

    .line 234
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:I,
    :sswitch_1cf
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v3

    .line 238
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 240
    goto/16 :goto_b

    .line 244
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:I,
    :sswitch_1e5
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v3

    .line 246
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v3, :cond_1fa

    move v5, v6

    :goto_1f4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 248
    goto/16 :goto_b

    :cond_1fa
    move v5, v8

    .line 247
    goto :goto_1f4

    .line 252
    .end local v3       #_result:Z,
    :sswitch_1fc
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v3

    .line 254
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v3, :cond_211

    move v5, v6

    :goto_20b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 256
    goto/16 :goto_b

    :cond_211
    move v5, v8

    .line 255
    goto :goto_20b

    .line 260
    .end local v3       #_result:Z,
    :sswitch_213
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataInEmergency()Z

    move-result v3

    .line 262
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v3, :cond_228

    move v5, v6

    :goto_222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 264
    goto/16 :goto_b

    :cond_228
    move v5, v8

    .line 263
    goto :goto_222

    .line 268
    .end local v3       #_result:Z,
    :sswitch_22a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v3

    .line 270
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v3, :cond_23f

    move v5, v6

    :goto_239
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 272
    goto/16 :goto_b

    :cond_23f
    move v5, v8

    .line 271
    goto :goto_239

    .line 276
    .end local v3       #_result:Z,
    :sswitch_241
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v3

    .line 278
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v3, :cond_258

    .line 280
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_255
    move v5, v6

    .line 286
    goto/16 :goto_b

    .line 284
    :cond_258
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_255

    .line 290
    .end local v3       #_result:Landroid/os/Bundle;,
    :sswitch_25c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v5, v6

    .line 294
    goto/16 :goto_b

    .line 298
    .end local v4       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_26e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v3

    .line 300
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 302
    goto/16 :goto_b

    .line 306
    .end local v3       #_result:I,
    :sswitch_280
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v3

    .line 308
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 310
    goto/16 :goto_b

    .line 314
    .end local v3       #_result:I,
    :sswitch_292
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v3

    .line 316
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 318
    goto/16 :goto_b

    .line 322
    .end local v3       #_result:I,
    :sswitch_2a4
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v3

    .line 324
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 326
    goto/16 :goto_b

    .line 330
    .end local v3       #_result:I,
    :sswitch_2b6
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 334
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, _arg1_length:I
    if-gez v2, :cond_2d6

    .line 336
    const/4 v1, 0x0

    .line 341
    .local v1, _arg1:[B
    :goto_2c6
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendOemRilRequestRaw([B[B)I

    move-result v3

    .line 342
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 345
    goto/16 :goto_b

    .line 339
    .end local v1       #_arg1:[B,
    .end local v3       #_result:I,
    :cond_2d6
    new-array v1, v2, [B

    .restart local v1       #_arg1:[B,
    goto :goto_2c6

    .line 349
    .end local v0       #_arg0:[B,
    .end local v1       #_arg1:[B,
    .end local v2       #_arg1_length:I,
    :sswitch_2d9
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v3

    .line 351
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 353
    goto/16 :goto_b

    .line 357
    .end local v3       #_result:I,
    :sswitch_2eb
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v3

    .line 359
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 361
    goto/16 :goto_b

    .line 365
    .end local v3       #_result:I,
    :sswitch_2fd
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 369
    goto/16 :goto_b

    .line 373
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_30f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHookKeyEnabled()Z

    move-result v3

    .line 375
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v3, :cond_324

    move v5, v6

    :goto_31e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 377
    goto/16 :goto_b

    :cond_324
    move v5, v8

    .line 376
    goto :goto_31e

    .line 381
    .end local v3       #_result:Z,
    :sswitch_326
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriHomeSystems()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 385
    goto/16 :goto_b

    .line 389
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_338
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaNeedsProvisioning()Z

    move-result v3

    .line 391
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v3, :cond_34d

    move v5, v6

    :goto_347
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 393
    goto/16 :goto_b

    :cond_34d
    move v5, v8

    .line 392
    goto :goto_347

    .line 397
    .end local v3       #_result:Z,
    :sswitch_34f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getBackupedPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 401
    goto/16 :goto_b

    .line 405
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_361
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setBackupedPhoneNumber(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 410
    goto/16 :goto_b

    .line 414
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_373
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 419
    goto/16 :goto_b

    .line 423
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_385
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v3

    .line 425
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 427
    goto/16 :goto_b

    .line 431
    .end local v3       #_result:I,
    :sswitch_397
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 437
    goto/16 :goto_b

    .line 441
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_3ad
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .restart local v3       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 447
    goto/16 :goto_b

    .line 451
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_3c3
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 457
    goto/16 :goto_b

    .line 461
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:[Ljava/lang/String;,
    :sswitch_3d9
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v3

    .line 463
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 465
    goto/16 :goto_b

    .line 469
    .end local v3       #_result:I,
    :sswitch_3eb
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isModemPowerSave()Z

    move-result v3

    .line 471
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v3, :cond_400

    move v5, v6

    :goto_3fa
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 473
    goto/16 :goto_b

    :cond_400
    move v5, v8

    .line 472
    goto :goto_3fa

    .line 477
    .end local v3       #_result:Z,
    :sswitch_402
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v3

    .line 479
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v3, :cond_417

    move v5, v6

    :goto_411
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 481
    goto/16 :goto_b

    :cond_417
    move v5, v8

    .line 480
    goto :goto_411

    .line 485
    .end local v3       #_result:Z,
    :sswitch_419
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 491
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v3, :cond_436

    move v5, v6

    :goto_430
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 493
    goto/16 :goto_b

    :cond_436
    move v5, v8

    .line 492
    goto :goto_430

    .line 497
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v3       #_result:Z,
    :sswitch_438
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RemainingCount()I

    move-result v3

    .line 499
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 501
    goto/16 :goto_b

    .line 505
    .end local v3       #_result:I,
    :sswitch_44a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPuk1RemainingCount()I

    move-result v3

    .line 507
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 509
    goto/16 :goto_b

    .line 513
    .end local v3       #_result:I,
    :sswitch_45c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin2RemainingCount()I

    move-result v3

    .line 515
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 517
    goto/16 :goto_b

    .line 521
    .end local v3       #_result:I,
    :sswitch_46e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPuk2RemainingCount()I

    move-result v3

    .line 523
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 525
    goto/16 :goto_b

    .line 529
    .end local v3       #_result:I,
    :sswitch_480
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .restart local v1       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveInterfaceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 537
    goto/16 :goto_b

    .line 541
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_49a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .restart local v1       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    .restart local v3       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 549
    goto/16 :goto_b

    .line 553
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_4b4
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .restart local v0       #_arg0:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .restart local v1       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveGateway(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    .restart local v3       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 561
    goto/16 :goto_b

    .line 565
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_4ce
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfIpv6Address()[Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 569
    goto/16 :goto_b

    .line 573
    .end local v3       #_result:[Ljava/lang/String;,
    :sswitch_4e0
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEhrpdInfoForIms()[B

    move-result-object v3

    .line 575
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 577
    goto/16 :goto_b

    .line 581
    .end local v3       #_result:[B,
    :sswitch_4f2
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteInfoForIMS()[I

    move-result-object v3

    .line 583
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    move v5, v6

    .line 585
    goto/16 :goto_b

    .line 589
    .end local v3       #_result:[I,
    :sswitch_504
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->ConfirmLTENetDetach()V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 592
    goto/16 :goto_b

    .line 596
    :sswitch_512
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->ConfirmIMSPDNCLOSE()V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 599
    goto/16 :goto_b

    .line 603
    :sswitch_520
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestDetachFromNetwork(I)Z

    move-result v3

    .line 607
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v3, :cond_539

    move v5, v6

    :goto_533
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 609
    goto/16 :goto_b

    :cond_539
    move v5, v8

    .line 608
    goto :goto_533

    .line 613
    .end local v0       #_arg0:I,
    .end local v3       #_result:Z,
    :sswitch_53b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIMSI_M()Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 617
    goto/16 :goto_b

    .line 621
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_54d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isMPCS3GSIM()Z

    move-result v3

    .line 623
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v3, :cond_562

    move v5, v6

    :goto_55c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 625
    goto/16 :goto_b

    :cond_562
    move v5, v8

    .line 624
    goto :goto_55c

    .line 629
    .end local v3       #_result:Z,
    :sswitch_564
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isMPCS4GSIM()Z

    move-result v3

    .line 631
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v3, :cond_579

    move v5, v6

    :goto_573
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 633
    goto/16 :goto_b

    :cond_579
    move v5, v8

    .line 632
    goto :goto_573

    .line 637
    .end local v3       #_result:Z,
    :sswitch_57b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->Check_Notwork_Lock_Allowed()Z

    move-result v3

    .line 639
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v3, :cond_590

    move v5, v6

    :goto_58a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 641
    goto/16 :goto_b

    :cond_590
    move v5, v8

    .line 640
    goto :goto_58a

    .line 645
    .end local v3       #_result:Z,
    :sswitch_592
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5a7

    move v0, v6

    .line 648
    .local v0, _arg0:Z
    :goto_59e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllDataServiceEnabled(Z)V

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 650
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_5a7
    move v0, v8

    .line 647
    goto :goto_59e

    .line 654
    :sswitch_5a9
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllDataServiceEnabled()Z

    move-result v3

    .line 656
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    if-eqz v3, :cond_5be

    move v5, v6

    :goto_5b8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 658
    goto/16 :goto_b

    :cond_5be
    move v5, v8

    .line 657
    goto :goto_5b8

    .line 662
    .end local v3       #_result:Z,
    :sswitch_5c0
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d5

    move v0, v6

    .line 665
    .restart local v0       #_arg0:Z,
    :goto_5cc
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setLteConnectEnabledForTest(Z)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 667
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_5d5
    move v0, v8

    .line 664
    goto :goto_5cc

    .line 671
    :sswitch_5d7
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkModePreference(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 676
    goto/16 :goto_b

    .line 680
    .end local v0       #_arg0:I,
    :sswitch_5e9
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5fe

    move v0, v6

    .line 683
    .local v0, _arg0:Z
    :goto_5f5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setOTADMenableAdmin(Z)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 685
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_5fe
    move v0, v8

    .line 682
    goto :goto_5f5

    .line 689
    :sswitch_600
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 693
    goto/16 :goto_b

    .line 697
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_612
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLGEmergencyNumber()Ljava/lang/String;

    move-result-object v3

    .line 699
    .restart local v3       #_result:Ljava/lang/String;,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 701
    goto/16 :goto_b

    .line 705
    .end local v3       #_result:Ljava/lang/String;,
    :sswitch_624
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setLGEmergencyNumber(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 710
    goto/16 :goto_b

    .line 714
    .end local v0       #_arg0:Ljava/lang/String;,
    :sswitch_636
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isInEmergencyCall()Z

    move-result v3

    .line 716
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    if-eqz v3, :cond_64b

    move v5, v6

    :goto_645
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 718
    goto/16 :goto_b

    :cond_64b
    move v5, v8

    .line 717
    goto :goto_645

    .line 45
    nop

    :sswitch_data_64e
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_80
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_b3
        0xa -> :sswitch_ca
        0xb -> :sswitch_e1
        0xc -> :sswitch_f8
        0xd -> :sswitch_10f
        0xe -> :sswitch_11d
        0xf -> :sswitch_138
        0x10 -> :sswitch_153
        0x11 -> :sswitch_161
        0x12 -> :sswitch_181
        0x13 -> :sswitch_18f
        0x14 -> :sswitch_19d
        0x15 -> :sswitch_1ab
        0x16 -> :sswitch_1b9
        0x17 -> :sswitch_1cf
        0x18 -> :sswitch_1e5
        0x19 -> :sswitch_1fc
        0x1a -> :sswitch_213
        0x1b -> :sswitch_22a
        0x1c -> :sswitch_241
        0x1d -> :sswitch_25c
        0x1e -> :sswitch_26e
        0x1f -> :sswitch_280
        0x20 -> :sswitch_292
        0x21 -> :sswitch_2a4
        0x22 -> :sswitch_2b6
        0x23 -> :sswitch_2d9
        0x24 -> :sswitch_2eb
        0x25 -> :sswitch_2fd
        0x26 -> :sswitch_30f
        0x27 -> :sswitch_326
        0x28 -> :sswitch_338
        0x29 -> :sswitch_34f
        0x2a -> :sswitch_361
        0x2b -> :sswitch_373
        0x2c -> :sswitch_385
        0x2d -> :sswitch_397
        0x2e -> :sswitch_3ad
        0x2f -> :sswitch_3c3
        0x30 -> :sswitch_3d9
        0x31 -> :sswitch_3eb
        0x32 -> :sswitch_402
        0x33 -> :sswitch_419
        0x34 -> :sswitch_438
        0x35 -> :sswitch_44a
        0x36 -> :sswitch_45c
        0x37 -> :sswitch_46e
        0x38 -> :sswitch_480
        0x39 -> :sswitch_49a
        0x3a -> :sswitch_4b4
        0x3b -> :sswitch_4ce
        0x3c -> :sswitch_4e0
        0x3d -> :sswitch_4f2
        0x3e -> :sswitch_504
        0x3f -> :sswitch_512
        0x40 -> :sswitch_520
        0x41 -> :sswitch_53b
        0x42 -> :sswitch_54d
        0x43 -> :sswitch_564
        0x44 -> :sswitch_57b
        0x45 -> :sswitch_592
        0x46 -> :sswitch_5a9
        0x47 -> :sswitch_5c0
        0x48 -> :sswitch_5d7
        0x49 -> :sswitch_5e9
        0x4a -> :sswitch_600
        0x4b -> :sswitch_612
        0x4c -> :sswitch_624
        0x4d -> :sswitch_636
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
