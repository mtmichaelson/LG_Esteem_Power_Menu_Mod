.class public Lcom/broadcom/bt/util/SearchUtil;
.super Ljava/lang/Object;
.source "SearchUtil.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch([II)I
    .registers 9
    .parameter "dictionary"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 29
    array-length v5, p0

    sub-int v1, v5, v6

    .line 31
    .local v1, last:I
    const/4 v0, 0x0

    .line 32
    .local v0, l:I
    move v4, v1

    .line 35
    .local v4, r:I
    :cond_6
    add-int v5, v0, v4

    div-int/lit8 v2, v5, 0x2

    .line 36
    .local v2, m:I
    aget v3, p0, v2

    .line 37
    .local v3, midVal:I
    if-ne v3, p1, :cond_10

    move v5, v2

    .line 45
    :goto_f
    return v5

    .line 39
    :cond_10
    if-ge v3, p1, :cond_18

    .line 40
    add-int/lit8 v0, v2, 0x1

    .line 44
    :cond_14
    :goto_14
    if-le v0, v4, :cond_6

    .line 45
    const/4 v5, -0x1

    goto :goto_f

    .line 41
    :cond_18
    if-le v3, p1, :cond_14

    .line 42
    sub-int v4, v2, v6

    goto :goto_14
.end method

.method public static indexOf([II)I
    .registers 4
    .parameter "intArray"
    .parameter "val"

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 50
    aget v1, p0, v0

    if-ne p1, v1, :cond_a

    move v1, v0

    .line 54
    :goto_9
    return v1

    .line 49
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_d
    const/4 v1, -0x1

    goto :goto_9
.end method

.method public static search([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "dictionary"
    .parameter "val"

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 60
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 64
    :goto_d
    return v1

    .line 59
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_11
    const/4 v1, -0x1

    goto :goto_d
.end method
