.class Lcom/android/internal/telephony/CdmaNAI;
.super Lcom/android/internal/telephony/DataProfile;
.source "CdmaNAI.java"



# instance fields
.field private mProfileId:I



# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CdmaNAI;->mProfileId:I

    return-void
.end method


# virtual methods
.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 3
    .parameter "ipv"

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_a

    .line 36
    :cond_8
    const/4 v0, 0x1

    .line 38
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/telephony/CdmaNAI;->mProfileId:I

    return v0
.end method

.method toHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaNAI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "CDMA NAI"

    return-object v0
.end method
