.class public Lcom/android/internal/telephony/lte/LteStatus;
.super Ljava/lang/Object;
.source "LteStatus.java"



# instance fields
.field private fw_version:Ljava/lang/String;

.field private hw_version:Ljava/lang/String;

.field private lte_state:I

.field private sw_version:Ljava/lang/String;



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "hw"
    .parameter "fw"
    .parameter "sw"
    .parameter "state"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/telephony/lte/LteStatus;->hw_version:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/android/internal/telephony/lte/LteStatus;->fw_version:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/android/internal/telephony/lte/LteStatus;->sw_version:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/android/internal/telephony/lte/LteStatus;->lte_state:I

    .line 22
    return-void
.end method


# virtual methods
.method public getFwVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/lte/LteStatus;->fw_version:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/telephony/lte/LteStatus;->hw_version:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/telephony/lte/LteStatus;->lte_state:I

    return v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/lte/LteStatus;->sw_version:Ljava/lang/String;

    return-object v0
.end method

.method public setFwVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "fw"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/lte/LteStatus;->fw_version:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setHwVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "hw"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/lte/LteStatus;->hw_version:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/telephony/lte/LteStatus;->lte_state:I

    .line 54
    return-void
.end method

.method public setSwVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "sw"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/lte/LteStatus;->sw_version:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "hw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lte/LteStatus;->hw_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lte/LteStatus;->fw_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lte/LteStatus;->sw_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lte/LteStatus;->lte_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
