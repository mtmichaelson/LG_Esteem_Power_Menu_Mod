.class public Lcom/android/internal/telephony/DataServiceInfo;
.super Ljava/lang/Object;
.source "DataServiceInfo.java"



# static fields
.field private static final ADMIN_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=1, 500"

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=0,max_retries=infinite,0,0,60000:2000,120000:2000,240000:5000,480000:5000,900000:5000"

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"



# instance fields
.field private activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

.field private activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

.field private ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field private ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field private isEnabled:Z

.field mContext:Landroid/content/Context;

.field private mDataProfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhEnabled:Z

.field private mRetryMgr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone$IPVersion;",
            "Lcom/android/internal/telephony/RetryManager;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceType:Lcom/android/internal/telephony/DataServiceType;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DataServiceType;)V
    .registers 6
    .parameter "context"
    .parameter "serviceType"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "persist.omh.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mOmhEnabled:Z

    .line 58
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/DataServiceInfo;->mServiceType:Lcom/android/internal/telephony/DataServiceType;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->createRetryManager(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->createRetryManager(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceInfo;->clear()V

    .line 103
    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->isEnabled:Z

    .line 137
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->resetServiceConnectionState()V

    .line 140
    return-void
.end method

.method private createRetryManager(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/RetryManager;
    .registers 6
    .parameter "serviceType"

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 110
    .local v0, retryMgr:Lcom/android/internal/telephony/RetryManager;
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_2d

    .line 112
    const-string/jumbo v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 113
    const-string v1, "default_randomization=0,max_retries=infinite,0,0,60000:2000,120000:2000,240000:5000,480000:5000,900000:5000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 116
    const-string v1, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=0,max_retries=infinite,0,0,60000:2000,120000:2000,240000:5000,480000:5000,900000:5000"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->loge(Ljava/lang/String;)V

    .line 118
    const/16 v1, 0x14

    const/16 v2, 0x7d0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 132
    :cond_2c
    :goto_2c
    return-object v0

    .line 122
    :cond_2d
    const-string/jumbo v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 123
    const-string v1, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 126
    const-string v1, "Could not configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->loge(Ljava/lang/String;)V

    .line 128
    const-string v1, "max_retries=3, 333, 333, 333"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    goto :goto_2c
.end method


# virtual methods
.method public addDataProfile(Lcom/android/internal/telephony/DataProfile;)V
    .registers 3
    .parameter "dp"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public clearDataProfiles()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    return-void
.end method

.method getActiveDataConnection(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;
    .registers 3
    .parameter "ipv"

    .prologue
    .line 294
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_7

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    .line 298
    :goto_6
    return-object v0

    .line 296
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_e

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_6

    .line 298
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDataProfiles()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLogPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->mServiceType:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextArbitratedProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .registers 9
    .parameter "profileType"
    .parameter "ipv"

    .prologue
    .line 191
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataServiceInfo;->mOmhEnabled:Z

    if-eqz v4, :cond_77

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne p1, v4, :cond_77

    .line 192
    const-string v4, "[OMH] Looking at OMH profiles"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, profile:Lcom/android/internal/telephony/DataProfile;
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 195
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v4

    if-ne v4, p1, :cond_14

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/DataProfile;->isWorking(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 198
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority()Z

    move-result v4

    if-nez v4, :cond_43

    .line 199
    const-string v4, "[OMH] Invalid priority, skipping profile..."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    goto :goto_14

    .line 203
    :cond_43
    if-nez v3, :cond_47

    .line 204
    move-object v3, v1

    goto :goto_14

    .line 207
    :cond_47
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceInfo;->mServiceType:Lcom/android/internal/telephony/DataServiceType;

    sget-object v5, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    if-ne v4, v5, :cond_61

    .line 210
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityLower(I)Z

    move-result v4

    if-eqz v4, :cond_60

    move-object v3, v1

    :cond_60
    goto :goto_14

    .line 215
    :cond_61
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v4

    if-eqz v4, :cond_74

    move-object v3, v1

    :cond_74
    goto :goto_14

    .end local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_75
    move-object v4, v3

    .line 225
    .end local v2       #i$:Ljava/util/Iterator;,
    .end local v3       #profile:Lcom/android/internal/telephony/DataProfile;,
    :goto_76
    return-object v4

    :cond_77
    const/4 v4, 0x0

    goto :goto_76
.end method

.method getNextWorkingAndroidProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .registers 7
    .parameter "profileType"
    .parameter "ipv"

    .prologue
    .line 231
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->mOmhEnabled:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne p1, v2, :cond_f

    .line 234
    const-string v2, "No suitable OMH profiles found, fallback to CDMA NAI"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    .line 235
    sget-object p1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    .line 238
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->mDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 239
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v2

    if-ne v2, p1, :cond_15

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/DataProfile;->isWorking(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Profile Chosen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    move-object v2, v0

    .line 245
    .end local v0       #dp:Lcom/android/internal/telephony/DataProfile;,
    :goto_4f
    return-object v2

    :cond_50
    const/4 v2, 0x0

    goto :goto_4f
.end method

.method getNextWorkingDataProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .registers 4
    .parameter "profileType"
    .parameter "ipv"

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getNextArbitratedProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    .line 174
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    if-nez v0, :cond_a

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getNextWorkingAndroidProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    .line 179
    :cond_a
    return-object v0
.end method

.method getRetryManager(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;
    .registers 3
    .parameter "ipv"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/RetryManager;

    return-object p0
.end method

.method public getState(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 3
    .parameter "ipv"

    .prologue
    .line 327
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_7

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 330
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_6
.end method

.method isDataServiceTypeEnabled()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->isEnabled:Z

    return v0
.end method

.method isServiceTypeActive()Z
    .registers 2

    .prologue
    .line 311
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isServiceTypeActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 6
    .parameter "ipVersion"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_10

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_e

    move v0, v3

    .line 307
    :goto_d
    return v0

    :cond_e
    move v0, v2

    .line 303
    goto :goto_d

    .line 304
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_1e

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1c

    move v0, v3

    goto :goto_d

    :cond_1c
    move v0, v2

    goto :goto_d

    :cond_1e
    move v0, v2

    .line 307
    goto :goto_d
.end method

.method loge(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 354
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 358
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 362
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method resetDsRetryCounter()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_d

    .line 155
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1a

    .line 157
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 158
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 160
    return-void
.end method

.method resetServiceConnectionState()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_13

    .line 144
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 145
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_26

    .line 146
    :cond_1f
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 147
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceInfo;->mRetryMgr:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 149
    return-void
.end method

.method setDataServiceTypeAsActive(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 5
    .parameter "dc"
    .parameter "ipv"

    .prologue
    .line 265
    if-eqz p1, :cond_4

    if-nez p2, :cond_b

    .line 266
    :cond_4
    const-string/jumbo v0, "service set as active with null parameters!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->loge(Ljava/lang/String;)V

    .line 279
    :goto_a
    return-void

    .line 270
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is active on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logv(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_47

    .line 274
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    .line 278
    :cond_41
    :goto_41
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_a

    .line 275
    :cond_47
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_41

    .line 276
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_41
.end method

.method setDataServiceTypeAsInactive(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 5
    .parameter "ipv"

    .prologue
    const/4 v2, 0x0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is inactive on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_23

    .line 286
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv6Dc:Lcom/android/internal/telephony/DataConnection;

    .line 290
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 291
    return-void

    .line 287
    :cond_23
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_1d

    .line 288
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceInfo;->activeIpv4Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_1d
.end method

.method setServiceTypeEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceInfo;->logi(Ljava/lang/String;)V

    .line 253
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->isEnabled:Z

    .line 254
    return-void
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 5
    .parameter "newState"
    .parameter "ipv"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object v0, v1

    .line 317
    .local v0, oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :goto_8
    if-eq p1, v0, :cond_10

    .line 318
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_16

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1d

    .line 324
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 315
    .end local v0       #oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;,
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv6State:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object v0, v1

    goto :goto_8

    .line 320
    .restart local v0       #oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;,
    :cond_16
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v1, :cond_10

    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceInfo;->ipv4State:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1d

    goto :goto_10

    .line 315
    .end local v0       #oldState:Lcom/android/internal/telephony/DataConnectionTracker$State;,
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
