.class public final Lcom/android/internal/telephony/gsm/PnnRecords;
.super Ljava/lang/Object;
.source "PnnRecords.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"



# instance fields
.field private mCurrentEons:Ljava/lang/String;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mCurrentEons:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 45
    .local v1, record:[B
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 51
    .end local v1       #record:[B,
    :cond_28
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 54
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PnnRecords EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 58
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PnnRecords EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method


# virtual methods
.method public getCurrentEons()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mCurrentEons:Ljava/lang/String;

    return-object v0
.end method

.method public getNameFromPnnRecord(IZ)Ljava/lang/String;
    .registers 6
    .parameter "recordNumber"
    .parameter "update"

    .prologue
    const/4 v2, 0x1

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, fullName:Ljava/lang/String;
    if-lt p1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_27

    .line 80
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PNN record number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->loge(Ljava/lang/String;)V

    .line 87
    :goto_22
    if-eqz p2, :cond_26

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mCurrentEons:Ljava/lang/String;

    .line 88
    :cond_26
    return-object v0

    .line 82
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public size()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
