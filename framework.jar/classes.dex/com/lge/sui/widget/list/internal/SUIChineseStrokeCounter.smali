.class public Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter;
.super Ljava/lang/Object;
.source "SUIChineseStrokeCounter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getStrokeCcount(C)I
    .registers 4
    .parameter "c"

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;->CHARACTER:[[C

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 33
    sget-object v2, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;->CHARACTER:[[C

    aget-object v2, v2, v0

    invoke-static {v2, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v1

    .line 34
    .local v1, index:I
    if-ltz v1, :cond_1e

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;->CHARACTER:[[C

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    .line 35
    sget-object v2, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;->STROKE:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 38
    .end local v1       #index:I,
    :goto_1d
    return v2

    .line 32
    .restart local v1       #index:I,
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    .end local v1       #index:I,
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method
