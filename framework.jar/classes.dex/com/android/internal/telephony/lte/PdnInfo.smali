.class public Lcom/android/internal/telephony/lte/PdnInfo;
.super Ljava/lang/Object;
.source "PdnInfo.java"



# instance fields
.field public apn:Ljava/lang/String;

.field public apn_len:I

.field public eps_id:I

.field public iid:[C

.field public ip_v4_addr:[C

.field public ip_v4_dns_primary:[C

.field public ip_v4_dns_secondary:[C

.field public ip_v6_dns_primary:[C

.field public ip_v6_dns_secondary:[C

.field public p_cscf1:[C

.field public p_cscf2:[C

.field public p_cscf3:[C

.field public p_cscf4:[C

.field public p_cscf5:[C

.field public pdn_con_id:I

.field public pdn_type:I

.field public result:I



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pdn_con_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/lte/PdnInfo;->pdn_con_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
