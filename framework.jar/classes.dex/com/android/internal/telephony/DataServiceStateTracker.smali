.class public Lcom/android/internal/telephony/DataServiceStateTracker;
.super Landroid/os/Handler;
.source "DataServiceStateTracker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xf

.field private static final EVENT_DATA_NETWORK_STATE_CHANGED:I = 0x2

.field static final EVENT_GET_EHRPD_INFO:I = 0x3eb

.field private static final EVENT_HANDOVER_RAT_CHANGE:I = 0x66

.field private static final EVENT_HANDOVER_STATE:I = 0x65

.field private static final EVENT_ICC_CHANGED:I = 0xa

.field private static final EVENT_LTE_INFO_FORIMS:I = 0x64

.field private static final EVENT_NV_READY:I = 0x1b

.field private static final EVENT_POLL_STATE_REGISTRATION:I = 0x3

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field private static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x14

.field private static final EVENT_RUIM_READY:I = 0x1a

.field private static final EVENT_RUIM_RECORDS_LOADED:I = 0x1d

.field private static final EVENT_SIM_READY:I = 0x19

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0x1c

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field private static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"



# instance fields
.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

.field m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private mContext:Landroid/content/Context;

.field private mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionState:I

.field public mDataHandOverring:Z

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDataServiceStateRegistrants:Landroid/os/RegistrantList;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mEhrpdInfo:[B

.field private mGsmRoaming:Z

.field private mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

.field private mNewDataConnectionState:I

.field private mNewSS:Landroid/telephony/ServiceState;

.field private mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private mPollingContext:[I

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

.field private mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

.field mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSs:Landroid/telephony/ServiceState;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 10
    .parameter "dct"
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 153
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    .line 156
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 157
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    .line 158
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 159
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 162
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    .line 163
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 164
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    .line 168
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataHandOverring:Z

    .line 177
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mEhrpdInfo:[B

    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 183
    iput-object p4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 184
    iput-object p2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    .line 185
    iput-object p3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 190
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 191
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/lte/LteInfoForIMS;

    invoke-direct {v0}, Lcom/android/internal/telephony/lte/LteInfoForIMS;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    .line 202
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, v4, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p2, p4, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 205
    new-instance v0, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLteIMSInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setHandOverEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setHandOverRATChangeEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    return-void
.end method

.method private handleCdmaSubscriptionSource()V
    .registers 3

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 468
    .local v0, newSubscriptionSource:I
    iget v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v0, v1, :cond_1d

    .line 469
    iput v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    .line 470
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 472
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 474
    :cond_18
    const-string v1, "cdma subscription source changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    .line 476
    :cond_1d
    return-void
.end method

.method private isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .registers 12
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1001
    const-string v5, "gsm.sim.operator.alpha"

    const-string v6, "empty"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v0, v8

    .line 1011
    .local v0, equalsOnsl:Z
    :goto_1b
    if-eqz v3, :cond_2e

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v1, v8

    .line 1013
    .local v1, equalsOnss:Z
    :goto_24
    if-eqz p1, :cond_30

    if-nez v0, :cond_30

    if-nez v1, :cond_30

    move v5, v8

    :goto_2b
    return v5

    .end local v0       #equalsOnsl:Z,
    .end local v1       #equalsOnss:Z,
    :cond_2c
    move v0, v7

    .line 1010
    goto :goto_1b

    .restart local v0       #equalsOnsl:Z,
    :cond_2e
    move v1, v7

    .line 1011
    goto :goto_24

    .restart local v1       #equalsOnss:Z,
    :cond_30
    move v5, v7

    .line 1013
    goto :goto_2b
.end method

.method private isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .registers 16
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1024
    const-string v8, "gsm.sim.operator.alpha"

    const-string v9, "empty"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1026
    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .line 1029
    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_4b

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    move v1, v12

    .line 1030
    .local v1, equalsOnsl:Z
    :goto_1b
    if-eqz v4, :cond_4d

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    move v2, v12

    .line 1032
    .local v2, equalsOnss:Z
    :goto_24
    const-string v8, "gsm.sim.operator.numeric"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1034
    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1036
    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1038
    .local v0, equalsMcc:Z
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_33
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_51

    move-result v0

    .line 1043
    :goto_41
    if-eqz p1, :cond_4f

    if-eqz v0, :cond_49

    if-nez v1, :cond_4f

    if-nez v2, :cond_4f

    :cond_49
    move v8, v12

    :goto_4a
    return v8

    .end local v0       #equalsMcc:Z,
    .end local v1       #equalsOnsl:Z,
    .end local v2       #equalsOnss:Z,
    .end local v5       #operatorNumeric:Ljava/lang/String;,
    .end local v6       #simNumeric:Ljava/lang/String;,
    :cond_4b
    move v1, v11

    .line 1029
    goto :goto_1b

    .restart local v1       #equalsOnsl:Z,
    :cond_4d
    move v2, v11

    .line 1030
    goto :goto_24

    .restart local v0       #equalsMcc:Z,
    .restart local v2       #equalsOnss:Z,
    .restart local v5       #operatorNumeric:Ljava/lang/String;,
    .restart local v6       #simNumeric:Ljava/lang/String;,
    :cond_4f
    move v8, v11

    .line 1043
    goto :goto_4a

    .line 1040
    :catch_51
    move-exception v8

    goto :goto_41
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .registers 5
    .parameter "type"

    .prologue
    .line 672
    const-string/jumbo v0, "unknown"

    .line 674
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_46

    .line 716
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_1e
    return-object v0

    .line 676
    :pswitch_1f
    const-string v0, "GPRS"

    .line 677
    goto :goto_1e

    .line 679
    :pswitch_22
    const-string v0, "EDGE"

    .line 680
    goto :goto_1e

    .line 682
    :pswitch_25
    const-string v0, "UMTS"

    .line 683
    goto :goto_1e

    .line 686
    :pswitch_28
    const-string v0, "CDMA"

    .line 687
    goto :goto_1e

    .line 689
    :pswitch_2b
    const-string v0, "CDMA - 1xRTT"

    .line 690
    goto :goto_1e

    .line 692
    :pswitch_2e
    const-string v0, "CDMA - EvDo rev. 0"

    .line 693
    goto :goto_1e

    .line 695
    :pswitch_31
    const-string v0, "CDMA - EvDo rev. A"

    .line 696
    goto :goto_1e

    .line 698
    :pswitch_34
    const-string v0, "HSDPA"

    .line 699
    goto :goto_1e

    .line 701
    :pswitch_37
    const-string v0, "HSUPA"

    .line 702
    goto :goto_1e

    .line 704
    :pswitch_3a
    const-string v0, "HSPA"

    .line 705
    goto :goto_1e

    .line 707
    :pswitch_3d
    const-string v0, "CDMA - EvDo rev. B"

    .line 708
    goto :goto_1e

    .line 710
    :pswitch_40
    const-string v0, "CDMA - EHRPD"

    .line 711
    goto :goto_1e

    .line 713
    :pswitch_43
    const-string v0, "LTE"

    .line 714
    goto :goto_1e

    .line 674
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method private onEhrpdInfoReceived(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const-string v6, "EHRPD INFO"

    .line 349
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    .line 350
    const-string v4, "EHRPD INFO"

    const-string v4, "On reception of eHRPD info, there must be a problem"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_d
    :goto_d
    return-void

    .line 352
    :cond_e
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 353
    .local v0, ehrpdInfoString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataMCCMNC()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, operatorNumeric:Ljava/lang/String;
    const-string v4, "EHRPD INFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL reports ehrpd info like this... [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, infos:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_66

    .line 365
    const-string v4, "EHRPD INFO"

    const-string/jumbo v4, "there is no ehrpd info available..."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 367
    :cond_66
    const-string v4, "EHRPD INFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eHRPD info is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mEhrpdInfo:[B

    goto :goto_d
.end method

.method private onHandOverRATChange()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 441
    const-string v1, "[onHandOverRATChange]"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_32

    .line 444
    const-string v1, "[Radio Tech will be changed from 4G to 3G] - we\'ll move to eHRPD"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 448
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 449
    .local v0, ChnageInfo:[I
    aput v3, v0, v3

    .line 450
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 456
    .end local v0       #ChnageInfo:[I,
    :goto_31
    return-void

    .line 454
    :cond_32
    const-string v1, "[Current RadioTech is not LTE] - we\'ll stay"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    goto :goto_31
.end method

.method private onHandOverState()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 417
    const-string v0, "Set HandOver State"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 419
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataHandOverring:Z

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setState(I)V

    .line 424
    iput v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyHOstate(Z)V

    .line 432
    return-void
.end method

.method private onLTEInfoForIMSResult(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 387
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    .line 388
    const-string v0, "Telephony_IMS"

    const-string v1, "Something Problem to get LTE IMS info( MCC/MNC/TAC/Cell ID ) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_b
    return-void

    .line 390
    :cond_c
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/lte/LteInfoForIMS;

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLTEInfo : status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteInfoForIMS;->getLocationStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PLMN ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteInfoForIMS;->getPLMN_ID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CELL ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteInfoForIMS;->getLTE_CELL_ID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TAC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteInfoForIMS;->getTAC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    .line 1071
    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .line 1073
    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_44

    .line 1074
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .line 1075
    .local v1, ints:[I
    aget v3, v1, v6

    .line 1077
    .local v3, state:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v4, v5, :cond_2a

    .line 1078
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    :goto_27
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    .line 1082
    :cond_2a
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1083
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1084
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    .line 1090
    :cond_42
    :goto_42
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 1092
    .end local v1       #ints:[I,
    .end local v3       #state:I,
    :cond_44
    return-void

    .restart local v1       #ints:[I,
    .restart local v3       #state:I,
    :cond_45
    move v4, v6

    .line 1078
    goto :goto_27

    .line 1085
    :cond_47
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_42

    .line 1086
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1087
    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    goto :goto_42
.end method

.method private pollState(Ljava/lang/String;)V
    .registers 5
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pollstate() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aput v2, v0, v2

    .line 495
    const-string/jumbo v0, "radio state changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "data network state changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3d

    .line 523
    :goto_3c
    return-void

    .line 501
    :cond_3d
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataHandOverring:Z

    .line 505
    sget-object v0, Lcom/android/internal/telephony/DataServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_78

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    goto :goto_3c

    .line 507
    :pswitch_65
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_3c

    .line 512
    :pswitch_6e
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_3c

    .line 505
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_65
        :pswitch_6e
    .end packed-switch
.end method

.method private pollStateDone()V
    .registers 15

    .prologue
    .line 724
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Poll ServiceState done: oldSS=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] newSS=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 726
    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-eqz v10, :cond_140

    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-nez v10, :cond_140

    const/4 v10, 0x1

    move v2, v10

    .line 729
    .local v2, hasDataConnectionAttached:Z
    :goto_34
    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-nez v10, :cond_144

    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eqz v10, :cond_144

    const/4 v10, 0x1

    move v4, v10

    .line 736
    .local v4, hasDataConnectionDetached:Z
    :goto_3e
    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_148

    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_148

    const/4 v10, 0x1

    move v5, v10

    .line 741
    .local v5, hasHandOVerEnded:Z
    :goto_4c
    if-eqz v2, :cond_61

    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v10, v11, :cond_61

    .line 744
    const-string v10, "Data connection has attached when data technology is uknown."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 747
    :cond_61
    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eq v10, v11, :cond_14c

    const/4 v10, 0x1

    move v3, v10

    .line 748
    .local v3, hasDataConnectionChanged:Z
    :goto_69
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v10, v11}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_150

    const/4 v10, 0x1

    move v1, v10

    .line 749
    .local v1, hasChanged:Z
    :goto_75
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-nez v10, :cond_154

    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_154

    const/4 v10, 0x1

    move v8, v10

    .line 750
    .local v8, hasRoamingOn:Z
    :goto_87
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_158

    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-nez v10, :cond_158

    const/4 v10, 0x1

    move v7, v10

    .line 751
    .local v7, hasRoamingOff:Z
    :goto_99
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v11

    if-eq v10, v11, :cond_15c

    const/4 v10, 0x1

    move v6, v10

    .line 760
    .local v6, hasRadioTechChanged:Z
    :goto_a9
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 764
    .local v0, ChnageInfo:[I
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->IsMPDPPossilbe(I)Z

    move-result v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->IsMPDPPossilbe(I)Z

    move-result v11

    if-eq v10, v11, :cond_160

    .line 765
    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v0, v10

    .line 770
    :goto_c6
    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 771
    .local v9, tss:Landroid/telephony/ServiceState;
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 772
    iput-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 775
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 777
    iget v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    iput v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 782
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_ec

    .line 783
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x3eb

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getEhrpdInfoForIms(Landroid/os/Message;)V

    .line 788
    :cond_ec
    if-eqz v1, :cond_f3

    .line 789
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 792
    :cond_f3
    if-eqz v2, :cond_fa

    .line 793
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 796
    :cond_fa
    if-eqz v4, :cond_101

    .line 797
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 800
    :cond_101
    if-eqz v3, :cond_10c

    .line 801
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 806
    :cond_10c
    if-eqz v5, :cond_114

    .line 807
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/PhoneNotifier;->notifyHOstate(Z)V

    .line 812
    :cond_114
    if-eqz v6, :cond_131

    .line 814
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v11, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v0, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 819
    const-string v10, "gsm.network.type"

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_131
    if-eqz v8, :cond_138

    .line 826
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 829
    :cond_138
    if-eqz v7, :cond_13f

    .line 830
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 832
    :cond_13f
    return-void

    .line 726
    .end local v0       #ChnageInfo:[I,
    .end local v1       #hasChanged:Z,
    .end local v2       #hasDataConnectionAttached:Z,
    .end local v3       #hasDataConnectionChanged:Z,
    .end local v4       #hasDataConnectionDetached:Z,
    .end local v5       #hasHandOVerEnded:Z,
    .end local v6       #hasRadioTechChanged:Z,
    .end local v7       #hasRoamingOff:Z,
    .end local v8       #hasRoamingOn:Z,
    .end local v9       #tss:Landroid/telephony/ServiceState;,
    :cond_140
    const/4 v10, 0x0

    move v2, v10

    goto/16 :goto_34

    .line 729
    .restart local v2       #hasDataConnectionAttached:Z,
    :cond_144
    const/4 v10, 0x0

    move v4, v10

    goto/16 :goto_3e

    .line 736
    .restart local v4       #hasDataConnectionDetached:Z,
    :cond_148
    const/4 v10, 0x0

    move v5, v10

    goto/16 :goto_4c

    .line 747
    .restart local v5       #hasHandOVerEnded:Z,
    :cond_14c
    const/4 v10, 0x0

    move v3, v10

    goto/16 :goto_69

    .line 748
    .restart local v3       #hasDataConnectionChanged:Z,
    :cond_150
    const/4 v10, 0x0

    move v1, v10

    goto/16 :goto_75

    .line 749
    .restart local v1       #hasChanged:Z,
    :cond_154
    const/4 v10, 0x0

    move v8, v10

    goto/16 :goto_87

    .line 750
    .restart local v8       #hasRoamingOn:Z,
    :cond_158
    const/4 v10, 0x0

    move v7, v10

    goto/16 :goto_99

    .line 751
    .restart local v7       #hasRoamingOff:Z,
    :cond_15c
    const/4 v10, 0x0

    move v6, v10

    goto/16 :goto_a9

    .line 767
    .restart local v0       #ChnageInfo:[I,
    .restart local v6       #hasRadioTechChanged:Z,
    :cond_160
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v0, v10

    goto/16 :goto_c6
.end method

.method private regCodeIsRoaming(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 989
    const/4 v0, 0x5

    if-ne v0, p1, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private setNotification(I)V
    .registers 11
    .parameter "notifyType"

    .prologue
    .line 1101
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1102
    .local v2, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 1103
    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 1104
    const v6, 0x108008a

    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 1105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1107
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1110
    const-string v0, ""

    .line 1111
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1112
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x378

    .line 1114
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_5e

    .line 1122
    :goto_34
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1123
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1125
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1128
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-ne p1, v6, :cond_5a

    .line 1130
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1135
    :goto_4f
    return-void

    .line 1116
    .end local v4       #notificationManager:Landroid/app/NotificationManager;,
    :pswitch_50
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1117
    goto :goto_34

    .line 1133
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;,
    :cond_5a
    invoke-virtual {v4, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4f

    .line 1114
    :pswitch_data_5e
    .packed-switch 0x3e9
        :pswitch_50
    .end packed-switch
.end method


# virtual methods
.method public IsMPDPPossilbe(I)Z
    .registers 3
    .parameter "RadioTech"

    .prologue
    .line 662
    const/16 v0, 0xe

    if-eq p1, v0, :cond_a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_c

    .line 664
    :cond_a
    const/4 v0, 0x1

    .line 666
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected cancelPollState()V
    .registers 2

    .prologue
    .line 848
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    .line 849
    return-void
.end method

.method public dispose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRestrictedStateChanged(Landroid/os/Handler;)V

    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetLteIMSInfoUpdate(Landroid/os/Handler;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_2f

    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForUnavailable(Landroid/os/Handler;)V

    .line 1157
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1160
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_3a

    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1162
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1165
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_45

    .line 1166
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1167
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1170
    :cond_45
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_50

    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1172
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 1175
    :cond_50
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 1176
    return-void
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getEhrpdInfoForIms()[B
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mEhrpdInfo:[B

    return-object v0
.end method

.method public getLTEInfoForIMS()Lcom/android/internal/telephony/lte/LteInfoForIMS;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteInfoForIMS;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const-string v3, "DATA"

    .line 241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_a4

    .line 340
    const-string v1, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message with number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_26
    :goto_26
    return-void

    .line 245
    :sswitch_27
    const-string/jumbo v1, "radio state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handleCdmaSubscriptionSource()V

    goto :goto_26

    .line 252
    :sswitch_3d
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handleCdmaSubscriptionSource()V

    goto :goto_26

    .line 256
    :sswitch_41
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateIccAvailability()V

    .line 257
    const-string v1, "icc status changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_26

    .line 261
    :sswitch_4a
    const-string/jumbo v1, "ruim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_26

    .line 265
    :sswitch_51
    const-string/jumbo v1, "nv ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_26

    .line 269
    :sswitch_58
    const-string/jumbo v1, "sim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_26

    .line 274
    :sswitch_5f
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 275
    const-string/jumbo v1, "records loaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_26

    .line 280
    :sswitch_6b
    const-string v1, "data network state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_26

    .line 286
    :sswitch_71
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataHandOverring:Z

    if-ne v1, v4, :cond_85

    .line 288
    const-string v1, "DATA"

    const-string v1, "Now HandOverring so we ignore it "

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    sub-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_26

    .line 299
    :cond_85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0       #ar:Landroid/os/AsyncResult;,
    check-cast v0, Landroid/os/AsyncResult;

    .line 300
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_26

    .line 304
    :sswitch_8f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 312
    :sswitch_93
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onLTEInfoForIMSResult(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 319
    :sswitch_97
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onHandOverState()V

    goto :goto_26

    .line 328
    :sswitch_9b
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onHandOverRATChange()V

    goto :goto_26

    .line 334
    :sswitch_9f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onEhrpdInfoReceived(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 243
    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_6b
        0x3 -> :sswitch_71
        0xa -> :sswitch_41
        0xf -> :sswitch_3d
        0x14 -> :sswitch_8f
        0x19 -> :sswitch_58
        0x1a -> :sswitch_4a
        0x1b -> :sswitch_51
        0x1c -> :sswitch_5f
        0x1d -> :sswitch_5f
        0x64 -> :sswitch_93
        0x65 -> :sswitch_97
        0x66 -> :sswitch_9b
        0x3eb -> :sswitch_9f
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .registers 15
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 535
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8a

    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_15

    .line 539
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p1       
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 542
    :cond_15
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v8, :cond_1d

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    .line 653
    .end local v0       #err:Lcom/android/internal/telephony/CommandException$Error;,
    :goto_1c
    return-void

    .line 548
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;,
    :cond_1d
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_1c

    .line 554
    :cond_2d
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v8, :cond_3e

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v8, :cond_3e

    .line 556
    const-string v8, "DATA"

    const-string v9, "RIL implementation has returned an error where it must succeed"

    iget-object v10, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v0       #err:Lcom/android/internal/telephony/CommandException$Error;,
    :cond_3e
    :goto_3e
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 633
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-nez v8, :cond_86

    .line 634
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 635
    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V

    .line 637
    :cond_6b
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v8

    if-eqz v8, :cond_86

    .line 638
    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V

    .line 650
    :cond_86
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_1c

    .line 560
    .restart local p1       
    :cond_8a
    packed-switch p1, :pswitch_data_1a8

    .line 621
    :try_start_8d
    const-string v8, "DATA"

    const-string v9, "RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_94} :catch_95

    goto :goto_3e

    .line 626
    :catch_95
    move-exception v8

    move-object v1, v8

    .line 627
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v8, "DATA"

    const-string v9, "Exception while polling service state. Probably malformed RIL response."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 562
    .end local v1       #ex:Ljava/lang/RuntimeException;,
    :pswitch_9f
    :try_start_9f
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RegStateResponse;

    .line 563
    .local v3, r:Lcom/android/internal/telephony/RegStateResponse;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, states:[Ljava/lang/String;
    const/4 v6, 0x4

    .line 566
    .local v6, registrationState:I
    const/4 v4, -0x1

    .line 567
    .local v4, radioTechnology:I
    const/4 v5, 0x0

    .line 569
    .local v5, reasonForDenial:I
    array-length v8, v7

    const/4 v9, 0x6

    if-eq v8, v9, :cond_c8

    .line 570
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning! Wrong number of parameters returned from RIL_REQUEST_DATA_REGISTRATION_STATE: expected 6 got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_c8
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_c8} :catch_95

    .line 577
    :cond_c8
    const/4 v8, 0x0

    :try_start_c9
    aget-object v8, v7, v8

    if-eqz v8, :cond_dd

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_dd

    .line 578
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 580
    :cond_dd
    const/4 v8, 0x3

    aget-object v8, v7, v8

    if-eqz v8, :cond_f2

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f2

    .line 581
    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 583
    :cond_f2
    const/4 v8, 0x4

    aget-object v8, v7, v8

    if-eqz v8, :cond_107

    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_107

    .line 584
    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/lang/NumberFormatException; {:try_start_c9 .. :try_end_106} :catch_172
    .catch Ljava/lang/RuntimeException; {:try_start_c9 .. :try_end_106} :catch_95

    move-result v5

    .line 591
    :cond_107
    :goto_107
    :try_start_107
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->setState(I)V

    .line 592
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v4}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EVENT_POLL_STATE_REGISTRATION] - setRadioTechnology : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    .line 597
    invoke-static {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v8

    if-eqz v8, :cond_141

    .line 598
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    .line 601
    :cond_141
    invoke-static {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v8

    if-eqz v8, :cond_151

    .line 602
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    .line 605
    :cond_151
    const/4 v8, 0x3

    if-ne v6, v8, :cond_3e

    .line 606
    const-string v2, ""

    .line 607
    .local v2, mRegistrationDeniedReason:Ljava/lang/String;
    if-nez v5, :cond_18e

    .line 608
    const-string v2, "General"

    .line 616
    :goto_15a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data Registration denied : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 587
    .end local v2       #mRegistrationDeniedReason:Ljava/lang/String;,
    :catch_172
    move-exception v8

    move-object v1, v8

    .line 588
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v8, "DATA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing RegistrationState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    .line 609
    .end local v1       #ex:Ljava/lang/NumberFormatException;,
    .restart local v2       #mRegistrationDeniedReason:Ljava/lang/String;,
    :cond_18e
    const/4 v8, 0x1

    if-ne v5, v8, :cond_194

    .line 610
    const-string v2, "Authentication Failure"

    goto :goto_15a

    .line 613
    :cond_194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Other : reasonForDenial = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a6
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_1a6} :catch_95

    move-result-object v2

    goto :goto_15a

    .line 560
    :pswitch_data_1a8
    .packed-switch 0x3
        :pswitch_9f
    .end packed-switch
.end method

.method isConcurrentVoiceAndData()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .line 878
    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_1c

    move v1, v2

    .line 890
    :goto_1b
    return v1

    .line 883
    :cond_1c
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_2b

    const-string/jumbo v1, "ro.config.svlte1x"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    .line 886
    goto :goto_1b

    .line 890
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-ne v1, v2, :cond_35

    move v1, v2

    goto :goto_1b

    :cond_35
    move v1, v3

    goto :goto_1b
.end method

.method logd(Ljava/lang/String;)V
    .registers 5
    .parameter "logString"

    .prologue
    .line 1341
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .registers 5
    .parameter "logString"

    .prologue
    .line 1360
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .registers 5
    .parameter "logString"

    .prologue
    .line 1352
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .registers 5
    .parameter "logString"

    .prologue
    .line 1347
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .registers 5
    .parameter "logString"

    .prologue
    .line 1356
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-void
.end method

.method public notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .parameter "ss"

    .prologue
    const/4 v3, 0x0

    .line 837
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 838
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 840
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object p0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 843
    return-void
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .registers 2
    .parameter "onComplete"

    .prologue
    .line 864
    return-void
.end method

.method public regCodeToServiceState(I)I
    .registers 6
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 953
    packed-switch p1, :pswitch_data_24

    .line 970
    :pswitch_5
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 971
    :goto_1f
    :pswitch_1f
    return v0

    :pswitch_20
    move v0, v3

    .line 955
    goto :goto_1f

    :pswitch_22
    move v0, v3

    .line 965
    goto :goto_1f

    .line 953
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_22
        :pswitch_5
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1227
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1228
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1230
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_15

    .line 1231
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1233
    :cond_15
    return-void
.end method

.method registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1247
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1248
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1250
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_15

    .line 1251
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1253
    :cond_15
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1207
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1208
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1210
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1211
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1213
    :cond_15
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1187
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1188
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1190
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1191
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1193
    :cond_15
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1300
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1301
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1303
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1304
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1306
    :cond_15
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1319
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1320
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1322
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1323
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1325
    :cond_15
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1284
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1285
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1286
    return-void
.end method

.method registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1267
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1268
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1270
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1271
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1274
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1275
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1277
    :cond_28
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1333
    return-void
.end method

.method public unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1290
    return-void
.end method

.method unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1237
    return-void
.end method

.method unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1257
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1217
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1197
    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1310
    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1329
    return-void
.end method

.method unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1281
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1337
    return-void
.end method

.method public updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V
    .registers 5
    .parameter "roaming"
    .parameter "cdmaSubscriptionSource"
    .parameter "ss"

    .prologue
    .line 1056
    if-nez p2, :cond_e

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1061
    :goto_d
    return-void

    .line 1059
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto :goto_d
.end method

.method public updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V
    .registers 4
    .parameter "roaming"
    .parameter "ss"

    .prologue
    .line 1047
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/DataServiceStateTracker;->isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1048
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1050
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1051
    return-void
.end method

.method updateIccAvailability()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 898
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    .line 900
    .local v1, new3gppApp:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v1, :cond_4c

    .line 901
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_2b

    .line 902
    const-string v2, "Removing stale 3gpp Application."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 903
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 904
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_2b

    .line 905
    const-string v2, "Removing stale sim application records."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 906
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 907
    iput-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 910
    :cond_2b
    if-eqz v1, :cond_4a

    .line 911
    const-string v2, "New 3gpp application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 912
    const/16 v2, 0x19

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 913
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 914
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_4a

    .line 915
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v3, 0x1c

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 918
    :cond_4a
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 922
    :cond_4c
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 925
    .local v0, new3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v0, :cond_9c

    .line 926
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_76

    .line 927
    const-string v2, "Removing stale 3gpp2 Application."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 928
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 929
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_76

    .line 930
    const-string v2, "Removing stale ruim application records."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 931
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 932
    iput-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 935
    :cond_76
    if-eqz v0, :cond_9a

    .line 936
    const-string v2, "New 3gpp2 application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 937
    const/16 v2, 0x1a

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 938
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 939
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_9a

    .line 940
    const-string v2, "New ruim application records found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v3, 0x1d

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 944
    :cond_9a
    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    .line 946
    :cond_9c
    return-void
.end method
