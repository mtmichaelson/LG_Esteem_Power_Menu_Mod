.class public Lcom/android/internal/telephony/lte/LteInfoForIMS;
.super Ljava/lang/Object;
.source "LteInfoForIMS.java"



# instance fields
.field private LOCATION_STATUS:I

.field private LTE_CELL_ID:I

.field private PLMN_ID:I

.field private TAC:I



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LOCATION_STATUS:I

    .line 27
    return-void
.end method


# virtual methods
.method public getLTE_CELL_ID()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LTE_CELL_ID:I

    return v0
.end method

.method public getLocationStatus()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LOCATION_STATUS:I

    return v0
.end method

.method public getPLMN_ID()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->PLMN_ID:I

    return v0
.end method

.method public getTAC()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->TAC:I

    return v0
.end method

.method public setLTE_CELL_ID(I)V
    .registers 2
    .parameter "cell_id"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LTE_CELL_ID:I

    .line 40
    return-void
.end method

.method public setLocationStatus(I)V
    .registers 2
    .parameter "STATUS"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LOCATION_STATUS:I

    .line 32
    return-void
.end method

.method public setPLMN_ID(I)V
    .registers 2
    .parameter "plmn_id"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->PLMN_ID:I

    .line 48
    return-void
.end method

.method public setTAC(I)V
    .registers 2
    .parameter "tac"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->TAC:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LOCATION_STATUS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CELL ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->LTE_CELL_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PLMN_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->PLMN_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TAC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lte/LteInfoForIMS;->TAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
