.class public Lcom/android/internal/telephony/cat/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"



# static fields
.field static final CODING_SCHEME_BASIC:I = 0x11

.field static final CODING_SCHEME_COLOUR:I = 0x21



# instance fields
.field codingScheme:I

.field height:I

.field highOffset:I

.field imageId:I

.field length:I

.field lowOffset:I

.field width:I



# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->width:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->height:I

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    .line 43
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->highOffset:I

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->lowOffset:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    .line 47
    return-void
.end method

.method static parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;
    .registers 9
    .parameter "rawData"
    .parameter "valueIndex"

    .prologue
    const-string v6, "ImageDescripter"

    const-string v3, ", "

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ImageDescriptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;-><init>()V

    .line 59
    .local v0, d:Lcom/android/internal/telephony/cat/ImageDescriptor;
    add-int/lit8 v2, p1, 0x1

    .end local p1       
    .local v2, valueIndex:I
    :try_start_b
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->width:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_11} :catch_c0

    .line 60
    add-int/lit8 p1, v2, 0x1

    .end local v2       #valueIndex:I,
    .restart local p1       
    :try_start_13
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->height:I
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_19} :catch_cd

    .line 61
    add-int/lit8 v2, p1, 0x1

    .end local p1       
    .restart local v2       #valueIndex:I,
    :try_start_1b
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_21} :catch_c0

    .line 64
    add-int/lit8 p1, v2, 0x1

    .end local v2       #valueIndex:I,
    .restart local p1       
    :try_start_23
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    .line 65
    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_2d} :catch_cd

    add-int/lit8 v2, p1, 0x1

    .end local p1       
    .restart local v2       #valueIndex:I,
    :try_start_2f
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I
    :try_end_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2f .. :try_end_36} :catch_c0

    .line 67
    add-int/lit8 p1, v2, 0x1

    .end local v2       #valueIndex:I,
    .restart local p1       
    :try_start_38
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->highOffset:I
    :try_end_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_3e} :catch_cd

    .line 68
    add-int/lit8 v2, p1, 0x1

    .end local p1       
    .restart local v2       #valueIndex:I,
    :try_start_40
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->lowOffset:I
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_46} :catch_c0

    .line 70
    add-int/lit8 p1, v2, 0x1

    .end local v2       #valueIndex:I,
    .restart local p1       
    :try_start_48
    aget-byte v3, p0, v2
    :try_end_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_4a} :catch_cd

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, p1, 0x1

    .end local p1       
    .restart local v2       #valueIndex:I,
    :try_start_50
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    .line 72
    const-string v3, "ImageDescripter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse; Descriptor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->highOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->lowOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_be} :catch_c0

    move p1, v2

    .line 80
    .end local v2       #valueIndex:I,
    .restart local p1       
    :goto_bf
    return-object v0

    .line 76
    .end local p1       
    .restart local v2       #valueIndex:I,
    :catch_c0
    move-exception v3

    move-object v1, v3

    move p1, v2

    .line 77
    .end local v2       #valueIndex:I,
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local p1       
    :goto_c3
    const-string v3, "ImageDescripter"

    const-string/jumbo v3, "parse; failed parsing image descriptor"

    invoke-static {v6, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_bf

    .line 76
    .end local v1       #e:Ljava/lang/IndexOutOfBoundsException;,
    :catch_cd
    move-exception v3

    move-object v1, v3

    goto :goto_c3
.end method
