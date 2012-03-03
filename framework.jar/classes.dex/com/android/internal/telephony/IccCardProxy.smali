.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"


# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final EVENT_APP_READY:I = 0x7

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_DISPLAY_TEXT_READY:I = 0xd

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_IO_ERROR:I = 0x5

.field private static final EVENT_ICC_LOCKED:I = 0x6

.field private static final EVENT_IMSI_READY:I = 0x9

.field private static final EVENT_PB_READY:I = 0x64

.field private static final EVENT_PERSO_LOCKED:I = 0xa

.field private static final EVENT_QUERY_SIMPB_READY:I = 0x65

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x8

.field private static final EVENT_SIM_TYPE_READY:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"



# instance fields
.field private CAT_2:Z

.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCdmaSubscriptionFromNv:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field private mFirstRun:Z

.field private mInitialized:Z

.field private mIsMultimodeCdmaPhone:Z

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuiteMode:Z

.field private mRadioOn:Z

.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private not_broadcast_pb_ready:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 8
    .parameter "mContext"
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "persist.radio.display_text"

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 93
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 94
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 95
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 108
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 111
    const-string/jumbo v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->not_broadcast_pb_ready:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->CAT_2:Z

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 128
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 131
    invoke-static {p1, p2}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    invoke-interface {p2, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_DISPLAY_TEXT_MODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persist.radio.display_text"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v0, "persist.radio.display_text"

    const-string v0, "0"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private broadcastPersoSubState(Lcom/android/internal/telephony/UiccConstants$PersoSubState;)V
    .registers 7
    .parameter "state"

    .prologue
    const-string v4, "This Personalization substate is not handled: "

    const-string v3, "LOCKED"

    const-string v2, "RIL_IccCardProxy"

    .line 987
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ee

    .line 1061
    :pswitch_11
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Personalization substate is not handled: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :goto_29
    :pswitch_29
    return-void

    .line 993
    :pswitch_2a
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM network locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v0, "LOCKED"

    const-string v0, "SIM NETWORK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 998
    :pswitch_39
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM network Subset locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v0, "LOCKED"

    const-string v0, "SIM NETWORK SUBSET"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1003
    :pswitch_48
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM Corporate locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v0, "LOCKED"

    const-string v0, "SIM CORPORATE"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1008
    :pswitch_57
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM Service Provider locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v0, "LOCKED"

    const-string v0, "SIM SERVICE PROVIDER"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1013
    :pswitch_66
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM SIM locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v0, "LOCKED"

    const-string v0, "SIM SIM"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1022
    :pswitch_75
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Personalization substate is not handled: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1025
    :pswitch_8e
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM network1 locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v0, "LOCKED"

    const-string v0, "RUIM NETWORK1"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1030
    :pswitch_9d
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM network2 locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v0, "LOCKED"

    const-string v0, "RUIM NETWORK2"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1035
    :pswitch_ad
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM hrpd locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v0, "LOCKED"

    const-string v0, "RUIM HRPD"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1040
    :pswitch_bd
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM Corporate locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v0, "LOCKED"

    const-string v0, "RUIM CORPORATE"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1045
    :pswitch_cd
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM Service Provider locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v0, "LOCKED"

    const-string v0, "RUIM SERVICE PROVIDER"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1050
    :pswitch_dd
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM RUIM locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v0, "LOCKED"

    const-string v0, "RUIM RUIM"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 987
    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2a
        :pswitch_75
        :pswitch_39
        :pswitch_75
        :pswitch_48
        :pswitch_75
        :pswitch_57
        :pswitch_75
        :pswitch_66
        :pswitch_75
        :pswitch_8e
        :pswitch_11
        :pswitch_9d
        :pswitch_11
        :pswitch_ad
        :pswitch_11
        :pswitch_bd
        :pswitch_11
        :pswitch_cd
        :pswitch_11
        :pswitch_dd
    .end packed-switch
.end method

.method private handleCdmaSubscriptionSource()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "RIL_IccCardProxy"

    .line 1072
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .line 1073
    .local v1, newSubscriptionSource:I
    if-ne v1, v4, :cond_82

    move v2, v4

    :goto_d
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 1074
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v2, v3, :cond_84

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-nez v2, :cond_84

    move v0, v4

    .line 1076
    .local v0, newQuiteMode:Z
    :goto_1e
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    if-nez v2, :cond_31

    if-ne v0, v4, :cond_31

    .line 1079
    const-string v2, "RIL_IccCardProxy"

    const-string v2, "Switching to QuiteMode."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v2, "READY"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_31
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    .line 1083
    const-string v2, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuiteMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (app_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " multimode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 1086
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1087
    return-void

    .end local v0       #newQuiteMode:Z,
    :cond_82
    move v2, v5

    .line 1073
    goto :goto_d

    :cond_84
    move v0, v5

    .line 1074
    goto :goto_1e
.end method

.method private processLockedState()V
    .registers 5

    .prologue
    const-string v3, "LOCKED"

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v1, :cond_7

    .line 601
    :cond_6
    :goto_6
    return-void

    .line 577
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    .line 578
    .local v0, appState:Lcom/android/internal/telephony/UiccConstants$AppState;
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    goto :goto_6

    .line 580
    :pswitch_1f
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 582
    const-string v1, "LOCKED"

    const-string v1, "PIN"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 587
    :pswitch_2c
    const-string v1, "LOCKED"

    const-string v1, "PUK"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :pswitch_33
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v1, v2, :cond_6

    .line 593
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "Notify SIM Perm locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v1, "PUK_BLOCKED"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 578
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForPersoSubstate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForError(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForSimTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    const-string v0, "RIL_IccCardProxy"

    const-string/jumbo v1, "registerUiccCardEvents "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForDisplayTextReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForPersoSubstate(Landroid/os/Handler;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_1d

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPbReady(Landroid/os/Handler;)V

    .line 420
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForError(Landroid/os/Handler;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForSimTypeReady(Landroid/os/Handler;)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForDisplayTextReady(Landroid/os/Handler;)V

    .line 429
    return-void
.end method

.method private updateQuiteMode()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "RIL_IccCardProxy"

    .line 174
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Updating quite mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v0, v1, :cond_38

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    .line 178
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP subscription -> QuiteMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 187
    :goto_37
    return-void

    .line 184
    :cond_38
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->handleCdmaSubscriptionSource()V

    goto :goto_37
.end method

.method private updateStateProperty()V
    .registers 4

    .prologue
    const-string v1, "gsm.sim.state"

    const-string v2, "RIL_IccCardProxy"

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-nez v0, :cond_1b

    .line 452
    const-string v0, "gsm.sim.state"

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$CardState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "[UICC_JAY] SystemProperties : PROPERTY_SIM_STATE 1 : gsm.sim.state"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_1a
    return-void

    .line 458
    :cond_1b
    const-string v0, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UICC_JAY] SystemProperties : PROPERTY_SIM_STATE 2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "value"
    .parameter "reason"

    .prologue
    const-string v4, "RIL_IccCardProxy"

    const-string v3, " reason "

    .line 466
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    if-eqz v1, :cond_2b

    .line 467
    const-string v1, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuiteMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_2a
    return-void

    .line 471
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v1, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 484
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 491
    :cond_9
    :goto_9
    return-void

    .line 485
    :cond_a
    if-eqz p3, :cond_9

    .line 486
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 488
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 502
    :cond_9
    :goto_9
    return-void

    .line 496
    :cond_a
    if-eqz p3, :cond_9

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 499
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 150
    return-void
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .registers 2

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .registers 3

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v1

    move v0, v1

    .line 761
    .local v0, retValue:Z
    :goto_b
    return v0

    .line 760
    .end local v0       #retValue:Z,
    :cond_c
    const/4 v1, 0x0

    move v0, v1

    goto :goto_b
.end method

.method public getIccFdnEnabled()Z
    .registers 3

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 766
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 765
    .end local v0       #retValue:Ljava/lang/Boolean;,
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIccLockEnabled()Z
    .registers 3

    .prologue
    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 772
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 771
    .end local v0       #retValue:Ljava/lang/Boolean;,
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getIccPin1RemainingCount()I
    .registers 3

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RemainingCount()I

    move-result v1

    move v0, v1

    .line 808
    .local v0, retValue:I
    :goto_b
    return v0

    .line 805
    .end local v0       #retValue:I,
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_b
.end method

.method public getIccPin1RetryCount()I
    .registers 3

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v1

    move v0, v1

    .line 777
    .local v0, retValue:I
    :goto_b
    return v0

    .line 776
    .end local v0       #retValue:I,
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_b
.end method

.method public getIccPin2Blocked()Z
    .registers 3

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 783
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 782
    .end local v0       #retValue:Ljava/lang/Boolean;,
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIccPin2RemainingCount()I
    .registers 3

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RemainingCount()I

    move-result v1

    move v0, v1

    .line 824
    .local v0, retValue:I
    :goto_b
    return v0

    .line 823
    .end local v0       #retValue:I,
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_b
.end method

.method public getIccPin2RetryCount()I
    .registers 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v1

    move v0, v1

    .line 788
    .local v0, retValue:I
    :goto_b
    return v0

    .line 787
    .end local v0       #retValue:I,
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_b
.end method

.method public getIccPuk1RemainingCount()I
    .registers 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk1RemainingCount()I

    move-result v1

    move v0, v1

    .line 817
    .local v0, retValue:I
    :goto_b
    return v0

    .line 815
    .end local v0       #retValue:I,
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_b
.end method

.method public getIccPuk2Blocked()Z
    .registers 3

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 794
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 793
    .end local v0       #retValue:Ljava/lang/Boolean;,
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIccPuk2RemainingCount()I
    .registers 3

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2RemainingCount()I

    move-result v1

    move v0, v1

    .line 831
    .local v0, retValue:I
    :goto_b
    return v0

    .line 830
    .end local v0       #retValue:I,
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_b
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 837
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .registers 8

    .prologue
    .line 633
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 634
    .local v4, retState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 635
    .local v1, cardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 636
    .local v0, appState:Lcom/android/internal/telephony/UiccConstants$AppState;
    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 639
    .local v2, persoState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    sget-object v3, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 655
    .local v3, pinState:Lcom/android/internal/telephony/UiccConstants$PinState;
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v5, :cond_2a

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    .line 657
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    .line 658
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v2

    .line 661
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v3

    .line 666
    :cond_2a
    sget-object v5, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_92

    .line 756
    :goto_35
    return-object v4

    .line 668
    :pswitch_36
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 669
    goto :goto_35

    .line 671
    :pswitch_39
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .line 672
    goto :goto_35

    .line 674
    :pswitch_3c
    sget-object v5, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_9c

    goto :goto_35

    .line 689
    :pswitch_48
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 690
    goto :goto_35

    .line 679
    :pswitch_4b
    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v3, v5, :cond_52

    .line 680
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_35

    .line 682
    :cond_52
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 684
    goto :goto_35

    .line 686
    :pswitch_55
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 687
    goto :goto_35

    .line 692
    :pswitch_58
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 693
    goto :goto_35

    .line 695
    :pswitch_5b
    sget-object v5, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_ae

    goto :goto_35

    .line 698
    :pswitch_67
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 699
    goto :goto_35

    .line 702
    :pswitch_6a
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 703
    goto :goto_35

    .line 706
    :pswitch_6d
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 707
    goto :goto_35

    .line 710
    :pswitch_70
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 711
    goto :goto_35

    .line 714
    :pswitch_73
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 715
    goto :goto_35

    .line 718
    :pswitch_76
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 719
    goto :goto_35

    .line 722
    :pswitch_79
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 723
    goto :goto_35

    .line 726
    :pswitch_7c
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 727
    goto :goto_35

    .line 730
    :pswitch_7f
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 731
    goto :goto_35

    .line 734
    :pswitch_82
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 735
    goto :goto_35

    .line 738
    :pswitch_85
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 739
    goto :goto_35

    .line 742
    :pswitch_88
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 743
    goto :goto_35

    .line 746
    :pswitch_8b
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_35

    .line 752
    :pswitch_8e
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_35

    .line 666
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch

    .line 674
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_58
        :pswitch_4b
        :pswitch_4b
        :pswitch_55
        :pswitch_5b
        :pswitch_8e
    .end packed-switch

    .line 695
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_67
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_6d
        :pswitch_70
        :pswitch_70
        :pswitch_73
        :pswitch_73
        :pswitch_76
        :pswitch_76
        :pswitch_79
        :pswitch_79
        :pswitch_7c
        :pswitch_7c
        :pswitch_7f
        :pswitch_7f
        :pswitch_82
        :pswitch_82
        :pswitch_85
        :pswitch_85
        :pswitch_88
        :pswitch_88
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v11, "PB_READY"

    const-string v7, "RIL_IccCardProxy"

    .line 190
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_162

    .line 324
    const-string v5, "RIL_IccCardProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message with number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_26
    :goto_26
    return-void

    .line 192
    :sswitch_27
    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    goto :goto_26

    .line 195
    :sswitch_2a
    iput-boolean v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 196
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v5, :cond_26

    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    goto :goto_26

    .line 201
    :sswitch_34
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v5, :cond_26

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    goto :goto_26

    .line 214
    :sswitch_3f
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    goto :goto_26

    .line 217
    :sswitch_43
    const-string v5, "READY"

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 224
    :sswitch_49
    const-string v5, "LOADED"

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->CAT_2:Z

    if-nez v5, :cond_26

    .line 228
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x65

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->querySIMPBReady(Landroid/os/Message;)V

    goto :goto_26

    .line 233
    :sswitch_5e
    const-string v5, "IMSI"

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 237
    :sswitch_64
    const-string v5, "RIL_IccCardProxy"

    const-string v5, "[IccCardProxy]broadcast EVENT_SIM_TYPE_READY"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v5, "SIM_TYPE"

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 244
    :sswitch_71
    const-string v5, "RIL_IccCardProxy"

    const-string v5, "[IccCardProxy]broadcast EVENT_DISPLAY_TEXT_READY"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v5, "DISPLAY_TEXT"

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 250
    :sswitch_7e
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v5, :cond_26

    .line 251
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v4

    .line 252
    .local v4, subState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoSubState(Lcom/android/internal/telephony/UiccConstants$PersoSubState;)V

    .line 253
    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v4, v5, :cond_ab

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne v4, v5, :cond_26

    .line 261
    :cond_ab
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_26

    .line 268
    .end local v4       #subState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;,
    :sswitch_b2
    const-string v5, "RIL_IccCardProxy"

    const-string v5, "[IccCardProxy] ADN is ready"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->not_broadcast_pb_ready:Z

    if-nez v5, :cond_26

    .line 273
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->isMPCS4GSIM()Z

    move-result v5

    if-ne v10, v5, :cond_26

    .line 276
    const-string v5, "RIL_IccCardProxy"

    const-string v5, "[IccCardProxy] only MPCS UICC send INTENT_VALUE_ICC_PB_READY 1"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->CAT_2:Z

    if-nez v5, :cond_26

    .line 279
    const-string v5, "PB_READY"

    invoke-virtual {p0, v11, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 288
    :sswitch_db
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 289
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0

    .line 290
    .local v3, pb_ready:[I
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_107

    .line 291
    const-string v5, "RIL_IccCardProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in EVENT_QUERY_SIMPB_READY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 296
    :cond_107
    aget v5, v3, v9

    if-ne v5, v10, :cond_156

    move v2, v10

    .line 297
    .local v2, b_pb_ready:Z
    :goto_10c
    const-string v5, "RIL_IccCardProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMCard] EVENT_QUERY_SIMPB_READY pb_ready = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : isMPCS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->isMPCS4GSIM()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v2, :cond_158

    .line 303
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->isMPCS4GSIM()Z

    move-result v5

    if-ne v10, v5, :cond_26

    .line 306
    const-string v5, "RIL_IccCardProxy"

    const-string v5, "[IccCardProxy] only MPCS UICC send INTENT_VALUE_ICC_PB_READY 2"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->CAT_2:Z

    if-nez v5, :cond_26

    .line 309
    const-string v5, "PB_READY"

    invoke-virtual {p0, v11, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .end local v2       #b_pb_ready:Z,
    :cond_156
    move v2, v9

    .line 296
    goto :goto_10c

    .line 314
    .restart local v2       #b_pb_ready:Z,
    :cond_158
    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCardProxy;->not_broadcast_pb_ready:Z

    goto/16 :goto_26

    .line 321
    .end local v1       #ar:Landroid/os/AsyncResult;,
    .end local v2       #b_pb_ready:Z,
    .end local v3       #pb_ready:[I,
    :sswitch_15c
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    goto/16 :goto_26

    .line 190
    nop

    :sswitch_data_162
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_34
        0x6 -> :sswitch_3f
        0x7 -> :sswitch_43
        0x8 -> :sswitch_49
        0x9 -> :sswitch_5e
        0xa -> :sswitch_7e
        0xb -> :sswitch_15c
        0xc -> :sswitch_64
        0xd -> :sswitch_71
        0x64 -> :sswitch_b2
        0x65 -> :sswitch_db
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .registers 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v0, v1, :cond_10

    .line 842
    const/4 v0, 0x1

    .line 844
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .registers 4
    .parameter "type"

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v1

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 849
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 848
    .end local v0       #retValue:Ljava/lang/Boolean;,
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method isCardFaulty()Z
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccManager;->getIccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    .line 332
    .local v0, card:Lcom/android/internal/telephony/UiccCard;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_19

    .line 333
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "Card is faulty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x1

    .line 337
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public queryPhonebookInfo(ILandroid/os/Message;)V
    .registers 5
    .parameter "devicetype"
    .parameter "onComplete"

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->queryPhonebookInfo(ILandroid/os/Message;)V

    .line 541
    :cond_9
    :goto_9
    return-void

    .line 535
    :cond_a
    if-eqz p2, :cond_9

    .line 536
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 538
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public readIccPhonebook(IIILandroid/os/Message;)V
    .registers 7
    .parameter "index"
    .parameter "devicetype"
    .parameter "category"
    .parameter "onComplete"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/UiccCardApplication;->readIccPhonebook(IIILandroid/os/Message;)V

    .line 515
    :cond_9
    :goto_9
    return-void

    .line 509
    :cond_a
    if-eqz p4, :cond_9

    .line 510
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 512
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 856
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 858
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 861
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 863
    :cond_15
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 890
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 892
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 895
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 897
    :cond_17
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 873
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 875
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 878
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 880
    :cond_15
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 905
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 912
    :cond_9
    :goto_9
    return-void

    .line 906
    :cond_a
    if-eqz p3, :cond_9

    .line 907
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 909
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 916
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 923
    :cond_9
    :goto_9
    return-void

    .line 917
    :cond_a
    if-eqz p3, :cond_9

    .line 918
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 920
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public setVoiceRadioTech(Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)V
    .registers 5
    .parameter "mVoiceRadioFamily"

    .prologue
    .line 157
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    if-ne p1, v0, :cond_27

    .line 161
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 166
    :goto_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    .line 168
    return-void

    .line 164
    :cond_27
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    goto :goto_20
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_10

    .line 931
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 938
    :cond_f
    :goto_f
    return-void

    .line 932
    :cond_10
    if-eqz p2, :cond_f

    .line 933
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 935
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 942
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 949
    :cond_9
    :goto_9
    return-void

    .line 943
    :cond_a
    if-eqz p2, :cond_9

    .line 944
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 945
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 946
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 953
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 960
    :cond_9
    :goto_9
    return-void

    .line 954
    :cond_a
    if-eqz p2, :cond_9

    .line 955
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 957
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 963
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 964
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 971
    :cond_9
    :goto_9
    return-void

    .line 965
    :cond_a
    if-eqz p3, :cond_9

    .line 966
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 968
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_a

    .line 976
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 984
    :cond_9
    :goto_9
    return-void

    .line 978
    :cond_a
    if-eqz p3, :cond_9

    .line 979
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 981
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 867
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 901
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 884
    return-void
.end method

.method updateIccAvailability()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const-string v5, "CARD_IO_ERROR"

    const-string v4, "ABSENT"

    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 346
    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    if-nez v0, :cond_1d

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccManager;->isNoSIMStatus()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 348
    const-string v1, "ABSENT"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_1d
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    if-eqz v1, :cond_31

    .line 353
    if-nez v0, :cond_2e

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->isCardFaulty()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 355
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    .line 363
    :cond_31
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_5a

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_49

    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForUnavailable(Landroid/os/Handler;)V

    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 367
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 368
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 369
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 371
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 374
    :cond_49
    if-nez v0, :cond_6d

    .line 383
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v1, :cond_67

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->isCardFaulty()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 385
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_5a
    :goto_5a
    return-void

    .line 357
    :cond_5b
    const-string v1, "ABSENT"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 387
    :cond_61
    const-string v1, "ABSENT"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 390
    :cond_67
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 393
    :cond_6d
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 400
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 401
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 403
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    goto :goto_5a
.end method

.method public writeIccPhonebook(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 35
    .parameter "category"
    .parameter "devicetype"
    .parameter "index"
    .parameter "type"
    .parameter "plan"
    .parameter "number"
    .parameter "name"
    .parameter "tonnpi"
    .parameter "other_name"
    .parameter "grp_id"
    .parameter "additional_number"
    .parameter "additional_number_a"
    .parameter "additional_number_b"
    .parameter "email"
    .parameter "onComplete"

    .prologue
    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v2, v0

    if-eqz v2, :cond_2e

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v2, v0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-virtual/range {v2 .. v17}, Lcom/android/internal/telephony/UiccCardApplication;->writeIccPhonebook(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 529
    :cond_2d
    :goto_2d
    return-void

    .line 523
    :cond_2e
    if-eqz p15, :cond_2d

    .line 524
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 525
    .local v18, e:Ljava/lang/Exception;
    invoke-static/range {p15 .. p15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 526
    invoke-virtual/range {p15 .. p15}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2d
.end method
