.class public abstract Lcom/android/internal/telephony/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfile$DataProfileType;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DataProfile"



# instance fields
.field private NotSupportIpv4:Z

.field private NotSupportIpv6:Z

.field private ipv4Dc:Lcom/android/internal/telephony/DataConnection;

.field private ipv6Dc:Lcom/android/internal/telephony/DataConnection;

.field private worksWithIpv4:Z

.field private worksWithIpv6:Z



# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    .line 53
    iput-object v2, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->NotSupportIpv4:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->NotSupportIpv6:Z

    return-void
.end method


# virtual methods
.method abstract canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
.end method

.method abstract canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
.end method

.method abstract getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
.end method

.method isActive()Z
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfile;->isActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfile;->isActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z

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

.method isActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 5
    .parameter "ipv"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_c

    move v0, v2

    .line 111
    :goto_b
    return v0

    :cond_c
    move v0, v1

    .line 107
    goto :goto_b

    .line 108
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_1a

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_b

    :cond_18
    move v0, v1

    goto :goto_b

    :cond_1a
    move v0, v1

    .line 111
    goto :goto_b
.end method

.method isIPv4Single()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    if-nez v0, :cond_b

    move v0, v1

    .line 71
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isIpvSupportFail()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->NotSupportIpv4:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->NotSupportIpv6:Z

    if-eqz v0, :cond_a

    .line 86
    :cond_8
    const/4 v0, 0x1

    .line 89
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isWorking(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 3
    .parameter "ipv"

    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    :goto_6
    return v0

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    goto :goto_6
.end method

.method setAsActive(Lcom/android/internal/telephony/Phone$IPVersion;Lcom/android/internal/telephony/DataConnection;)V
    .registers 8
    .parameter "ipv"
    .parameter "dc"

    .prologue
    const-string v4, "]"

    const-string v3, "DataProfile"

    const-string v2, ", dc = "

    .line 119
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_41

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_3e

    .line 122
    const-string v0, "DataProfile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data profile already active on ipv4 : [dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3e
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    .line 134
    :cond_40
    :goto_40
    return-void

    .line 126
    :cond_41
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_40

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_79

    .line 129
    const-string v0, "DataProfile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data profile already active on ipv6 : [dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_79
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_40
.end method

.method setAsInactive(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 4
    .parameter "ipv"

    .prologue
    const/4 v1, 0x0

    .line 137
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_8

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    .line 141
    :cond_7
    :goto_7
    return-void

    .line 139
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_7

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_7
.end method

.method public setIpvSupportFail(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 4
    .parameter "ipv"

    .prologue
    const/4 v1, 0x1

    .line 78
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_8

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataProfile;->NotSupportIpv4:Z

    .line 83
    :cond_7
    :goto_7
    return-void

    .line 80
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_7

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataProfile;->NotSupportIpv6:Z

    goto :goto_7
.end method

.method setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 4
    .parameter "working"
    .parameter "ipv"

    .prologue
    .line 99
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_7

    .line 100
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    .line 103
    :cond_6
    :goto_6
    return-void

    .line 101
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p2, v0, :cond_6

    .line 102
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    goto :goto_6
.end method

.method abstract toHash()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
