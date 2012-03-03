.class Lcom/android/internal/telephony/DataProfileOmh;
.super Lcom/android/internal/telephony/DataProfile;
.source "DataProfileOmh.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfileOmh$1;,
        Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    }
.end annotation


# instance fields
.field private DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

.field private DATA_PROFILE_OMH_PRIORITY_LOWEST:I

.field private mDataProfileModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field private mPriority:I

.field private mProfileId:I

.field private serviceTypeMasks:I



# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 140
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    .line 149
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 155
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 156
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 157
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "profileId"
    .parameter "priority"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 140
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    .line 149
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 160
    iput p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 161
    iput p2, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 162
    return-void
.end method

.method private isValidPriority(I)Z
    .registers 3
    .parameter "priority"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V
    .registers 4
    .parameter "modemProfile"

    .prologue
    .line 248
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    .line 249
    return-void
.end method

.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 4
    .parameter "type"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 3
    .parameter "ipv"

    .prologue
    .line 172
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_a

    .line 173
    :cond_8
    const/4 v0, 0x1

    .line 175
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .registers 2

    .prologue
    .line 180
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getDataProfileTypeModem()Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    return v0
.end method

.method public isPriorityHigher(I)Z
    .registers 3
    .parameter "priority"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPriorityLower(I)Z
    .registers 3
    .parameter "priority"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    if-le v0, p1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValidPriority()Z
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setDataProfileTypeModem(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V
    .registers 2
    .parameter "modemProfile"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 206
    return-void
.end method

.method public setPriority(I)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 217
    iput p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 218
    return-void
.end method

.method public setProfileId(I)V
    .registers 2
    .parameter "profileId"

    .prologue
    .line 213
    iput p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 214
    return-void
.end method

.method toHash()Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfileOmh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    const-string v0, "DataProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
