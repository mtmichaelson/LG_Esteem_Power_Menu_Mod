.class public Lcom/android/internal/telephony/RegStateResponse;
.super Ljava/lang/Object;
.source "RegStateResponse.java"



# instance fields
.field private mRegStates:[Ljava/lang/String;



# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter "regstates"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const-string/jumbo v5, "null"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, strings:[Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v3, v2

    if-ge v0, v3, :cond_38

    .line 37
    aget-object v3, v2, v0

    if-eqz v3, :cond_2b

    .line 38
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_1e
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_28

    .line 43
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 40
    :cond_2b
    const-string/jumbo v3, "null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 47
    .end local v0       #i:I,
    :cond_32
    const-string/jumbo v3, "null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_38
    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
