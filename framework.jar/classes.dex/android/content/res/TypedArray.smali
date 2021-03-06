.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"



# instance fields
.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mResources:Landroid/content/res/Resources;

.field mRsrcs:[I

.field private mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;



# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .registers 6
    .parameter "resources"
    .parameter "data"
    .parameter "indices"
    .parameter "len"

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 731
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 732
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 733
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 734
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 735
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .registers 6
    .parameter "index"
    .parameter "outValue"

    .prologue
    .line 700
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 701
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 702
    .local v1, type:I
    if-nez v1, :cond_a

    .line 703
    const/4 v2, 0x0

    .line 712
    :goto_9
    return v2

    .line 705
    :cond_a
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 706
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 707
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 708
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 709
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 710
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 711
    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_31
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 712
    const/4 v2, 0x1

    goto :goto_9

    .line 711
    :cond_35
    const/4 v2, 0x0

    goto :goto_31
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "index"

    .prologue
    .line 716
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 717
    .local v1, data:[I
    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    .line 718
    .local v0, cookie:I
    if-gez v0, :cond_19

    .line 719
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_17

    .line 720
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 726
    :goto_16
    return-object v2

    .line 723
    :cond_17
    const/4 v2, 0x0

    goto :goto_16

    .line 726
    :cond_19
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v2, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledString(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_16
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .registers 9
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v5, "Resources"

    .line 211
    mul-int/lit8 p1, p1, 0x6

    .line 212
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 213
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 214
    .local v1, type:I
    if-nez v1, :cond_e

    move v3, p2

    .line 229
    :goto_d
    return v3

    .line 216
    :cond_e
    const/16 v3, 0x10

    if-lt v1, v3, :cond_20

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_20

    .line 218
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    goto :goto_d

    .line 221
    :cond_20
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 222
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 223
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to boolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    goto :goto_d

    .line 227
    :cond_49
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBoolean of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    .line 229
    goto :goto_d
.end method

.method public getColor(II)I
    .registers 10
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 308
    mul-int/lit8 p1, p1, 0x6

    .line 309
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 310
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 311
    .local v2, type:I
    if-nez v2, :cond_c

    move v4, p2

    .line 323
    :goto_b
    return v4

    .line 313
    :cond_c
    const/16 v4, 0x10

    if-lt v2, v4, :cond_19

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_19

    .line 315
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    goto :goto_b

    .line 316
    :cond_19
    const/4 v4, 0x3

    if-ne v2, v4, :cond_33

    .line 317
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 318
    .local v3, value:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 319
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 321
    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    goto :goto_b

    .end local v0       #csl:Landroid/content/res/ColorStateList;,
    :cond_31
    move v4, p2

    .line 323
    goto :goto_b

    .line 326
    .end local v3       #value:Landroid/util/TypedValue;,
    :cond_33
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 5
    .parameter "index"

    .prologue
    .line 340
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 341
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 342
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 344
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getDimension(IF)F
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 388
    mul-int/lit8 p1, p1, 0x6

    .line 389
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 390
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 391
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 394
    :goto_b
    return v2

    .line 393
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 394
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_b

    .line 398
    :cond_1c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelOffset(II)I
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 420
    mul-int/lit8 p1, p1, 0x6

    .line 421
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 422
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 423
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 426
    :goto_b
    return v2

    .line 425
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 426
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_b

    .line 430
    :cond_1c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelSize(II)I
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 453
    mul-int/lit8 p1, p1, 0x6

    .line 454
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 455
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 456
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 459
    :goto_b
    return v2

    .line 458
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 459
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_b

    .line 463
    :cond_1c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "index"

    .prologue
    .line 590
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 591
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 601
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 603
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getFloat(IF)F
    .registers 10
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v6, "Resources"

    .line 270
    mul-int/lit8 p1, p1, 0x6

    .line 271
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 272
    .local v0, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 273
    .local v2, type:I
    if-nez v2, :cond_e

    move v4, p2

    .line 292
    :goto_d
    return v4

    .line 275
    :cond_e
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1a

    .line 276
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_d

    .line 277
    :cond_1a
    const/16 v4, 0x10

    if-lt v2, v4, :cond_28

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_28

    .line 279
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    goto :goto_d

    .line 282
    :cond_28
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 283
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 284
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to float: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 286
    .local v1, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_57

    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_d

    .line 290
    .end local v1       #str:Ljava/lang/CharSequence;,
    :cond_57
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, p2

    .line 292
    goto :goto_d
.end method

.method public getFraction(IIIF)F
    .registers 10
    .parameter "index"
    .parameter "base"
    .parameter "pbase"
    .parameter "defValue"

    .prologue
    .line 539
    mul-int/lit8 p1, p1, 0x6

    .line 540
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 541
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 542
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p4

    .line 545
    :goto_b
    return v2

    .line 544
    :cond_c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1a

    .line 545
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    goto :goto_b

    .line 549
    :cond_1a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to fraction: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIndex(I)I
    .registers 4
    .parameter "at"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .registers 9
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v5, "Resources"

    .line 241
    mul-int/lit8 p1, p1, 0x6

    .line 242
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 243
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 244
    .local v1, type:I
    if-nez v1, :cond_e

    move v3, p2

    .line 259
    :goto_d
    return v3

    .line 246
    :cond_e
    const/16 v3, 0x10

    if-lt v1, v3, :cond_1b

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1b

    .line 248
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    goto :goto_d

    .line 251
    :cond_1b
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 252
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 253
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    goto :goto_d

    .line 257
    :cond_44
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInt of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    .line 259
    goto :goto_d
.end method

.method public getInteger(II)I
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 357
    mul-int/lit8 p1, p1, 0x6

    .line 358
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 359
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 360
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 364
    :goto_b
    return v2

    .line 362
    :cond_c
    const/16 v2, 0x10

    if-lt v1, v2, :cond_19

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_19

    .line 364
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    goto :goto_b

    .line 367
    :cond_19
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to integer: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLayoutDimension(II)I
    .registers 7
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 509
    mul-int/lit8 p1, p1, 0x6

    .line 510
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 511
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 512
    .local v1, type:I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_15

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_15

    .line 514
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 520
    :goto_14
    return v2

    .line 515
    :cond_15
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 516
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_14

    :cond_25
    move v2, p2

    .line 520
    goto :goto_14
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 8
    .parameter "index"
    .parameter "name"

    .prologue
    .line 480
    mul-int/lit8 p1, p1, 0x6

    .line 481
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 482
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 483
    .local v1, type:I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_15

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_15

    .line 485
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 487
    :goto_14
    return v2

    .line 486
    :cond_15
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 487
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_14

    .line 491
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": You must supply a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .registers 11
    .parameter "index"
    .parameter "allowedChangingConfigs"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Resources"

    .line 179
    mul-int/lit8 p1, p1, 0x6

    .line 180
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 181
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 182
    .local v2, type:I
    add-int/lit8 v4, p1, 0x4

    aget v4, v1, v4

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    move-object v4, v6

    .line 199
    :goto_15
    return-object v4

    .line 185
    :cond_16
    if-nez v2, :cond_1a

    move-object v4, v6

    .line 186
    goto :goto_15

    .line 187
    :cond_1a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_26

    .line 188
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    .line 191
    :cond_26
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 192
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 193
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_51
    move-object v4, v6

    goto :goto_15

    .line 197
    .end local v0       #cs:Ljava/lang/CharSequence;,
    :cond_53
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 199
    goto :goto_15
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 7
    .parameter "index"

    .prologue
    .line 153
    mul-int/lit8 p1, p1, 0x6

    .line 154
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 155
    .local v1, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 156
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_20

    .line 157
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 158
    .local v0, cookie:I
    if-gez v0, :cond_20

    .line 159
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .end local v0       #cookie:I,
    :goto_1f
    return-object v3

    :cond_20
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "<internal>"

    goto :goto_a
.end method

.method public getResourceId(II)I
    .registers 6
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 568
    mul-int/lit8 p1, p1, 0x6

    .line 569
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 570
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_12

    .line 571
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 572
    .local v1, resid:I
    if-eqz v1, :cond_12

    move v2, v1

    .line 576
    .end local v1       #resid:I,
    :goto_11
    return v2

    :cond_12
    move v2, p2

    goto :goto_11
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 10
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Resources"

    .line 118
    mul-int/lit8 p1, p1, 0x6

    .line 119
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 120
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 121
    .local v2, type:I
    if-nez v2, :cond_f

    move-object v4, v6

    .line 135
    :goto_e
    return-object v4

    .line 123
    :cond_f
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1b

    .line 124
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 127
    :cond_1b
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 128
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 129
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_46
    move-object v4, v6

    goto :goto_e

    .line 133
    .end local v0       #cs:Ljava/lang/CharSequence;,
    :cond_48
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 135
    goto :goto_e
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 9
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const-string v6, "Resources"

    .line 90
    mul-int/lit8 p1, p1, 0x6

    .line 91
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 92
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 93
    .local v1, type:I
    if-nez v1, :cond_f

    move-object v3, v5

    .line 106
    :goto_e
    return-object v3

    .line 95
    :cond_f
    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    .line 96
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_e

    .line 99
    :cond_17
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 100
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 101
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_e

    .line 104
    :cond_3c
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 106
    goto :goto_e
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 5
    .parameter "index"

    .prologue
    .line 617
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 618
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 628
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 630
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 4
    .parameter "index"
    .parameter "outValue"

    .prologue
    .line 643
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .registers 5
    .parameter "index"

    .prologue
    .line 654
    mul-int/lit8 p1, p1, 0x6

    .line 655
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 656
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 657
    .local v1, type:I
    if-eqz v1, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public length()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 4
    .parameter "index"

    .prologue
    .line 672
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 673
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v0

    .line 676
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public recycle()V
    .registers 5

    .prologue
    .line 690
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v1, v1, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 691
    :try_start_5
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v2, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 692
    .local v0, cached:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_13

    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 693
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 694
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iput-object p0, v2, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 696
    :cond_1a
    monitor-exit v1

    .line 697
    return-void

    .line 696
    .end local v0       #cached:Landroid/content/res/TypedArray;,
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
