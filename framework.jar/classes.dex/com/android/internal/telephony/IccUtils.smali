.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"



# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Check_Notwork_Lock_Allowed()Z
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 501
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 502
    .local v2, mPhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 505
    .local v1, mCheckNetworkLock_Mode:I
    :try_start_6
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "network_lock_setting_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_19

    move-result v1

    .line 511
    :goto_15
    if-ne v1, v6, :cond_36

    move v3, v6

    .line 517
    :goto_18
    return v3

    .line 506
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 507
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 508
    const-string/jumbo v3, "sangwooha.ha Exception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORKLOCK_MODE_getInt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 517
    .end local v0       #e:Ljava/lang/Exception;,
    :cond_36
    const/4 v3, 0x0

    goto :goto_18
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 157
    const/4 v0, 0x1

    if-lt p2, v0, :cond_42

    .line 158
    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_42

    .line 159
    const/4 v0, 0x1

    sub-int v0, p2, v0

    div-int/lit8 v2, v0, 0x2

    .line 160
    .local v2, ucslen:I
    const/4 v1, 0x0

    .line 163
    .local v1, ret:Ljava/lang/String;
    :try_start_f
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v2, v2, 0x2

    const-string/jumbo v4, "utf-16be"

    .end local v2       #ucslen:I,
    invoke-direct {v0, p0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1b} :catch_32

    .line 169
    .end local v1       #ret:Ljava/lang/String;,
    .local v0, ret:Ljava/lang/String;
    :goto_1b
    if-eqz v0, :cond_42

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .line 173
    .end local p2       
    .local p0, ucslen:I
    :goto_21
    if-lez p0, :cond_3c

    const/4 p2, 0x1

    sub-int p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const v1, 0xffff

    if-ne p2, v1, :cond_3c

    .line 174
    add-int/lit8 p0, p0, -0x1

    goto :goto_21

    .line 164
    .end local v0       #ret:Ljava/lang/String;,
    .restart local v1       #ret:Ljava/lang/String;,
    .local p0, data:[B
    .restart local p2       
    :catch_32
    move-exception v0

    .line 165
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1       #ret:Ljava/lang/String;,
    .local v0, ret:Ljava/lang/String;
    goto :goto_1b

    .line 176
    .end local p2       
    .local p0, ucslen:I
    :cond_3c
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 232
    .end local v0       #ret:Ljava/lang/String;,
    .end local p0       #ucslen:I,
    :goto_41
    return-object p0

    .line 181
    .local p0, data:[B
    .restart local p2       
    :cond_42
    const/4 v1, 0x0

    .line 182
    .local v1, isucs2:Z
    const/4 v0, 0x0

    .line 183
    .local v0, base:C
    const/4 v2, 0x0

    .line 185
    .local v2, len:I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_91

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_91

    .line 186
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0       #base:C,
    and-int/lit16 v0, v0, 0xff

    .line 187
    .end local v2       #len:I,
    .local v0, len:I
    const/4 v1, 0x3

    sub-int v1, p2, v1

    if-le v0, v1, :cond_d8

    .line 188
    .end local v1       #isucs2:Z,
    const/4 v0, 0x3

    sub-int v0, p2, v0

    move v2, v0

    .line 190
    .end local v0       #len:I,
    .restart local v2       #len:I,
    :goto_5d
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x7

    int-to-char v0, v0

    .line 191
    .local v0, base:C
    add-int/lit8 p1, p1, 0x3

    .line 192
    const/4 v1, 0x1

    .line 204
    .restart local v1       #isucs2:Z,
    :cond_69
    :goto_69
    if-eqz v1, :cond_ce

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, ret:Ljava/lang/StringBuilder;
    move p2, v2

    .line 207
    .end local v1       #isucs2:Z,
    .end local v2       #len:I,
    .local p2, len:I
    :goto_71
    if-lez p2, :cond_c8

    .line 210
    aget-byte v1, p0, p1

    if-gez v1, :cond_d4

    .line 211
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 p1, p1, 0x1

    .line 213
    add-int/lit8 p2, p2, -0x1

    move v1, p2

    .line 218
    .end local p2       #len:I,
    .local v1, len:I
    :goto_85
    const/4 p2, 0x0

    .line 219
    .local p2, count:I
    :goto_86
    if-ge p2, v1, :cond_bd

    add-int v2, p1, p2

    aget-byte v2, p0, v2

    if-ltz v2, :cond_bd

    .line 220
    add-int/lit8 p2, p2, 0x1

    goto :goto_86

    .line 193
    .end local v3       #ret:Ljava/lang/StringBuilder;,
    .local v1, isucs2:Z
    .restart local v2       #len:I,
    .local p2, length:I
    :cond_91
    const/4 v3, 0x4

    if-lt p2, v3, :cond_69

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_69

    .line 194
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0       #base:C,
    and-int/lit16 v0, v0, 0xff

    .line 195
    .end local v2       #len:I,
    .local v0, len:I
    const/4 v1, 0x4

    sub-int v1, p2, v1

    if-le v0, v1, :cond_d6

    .line 196
    .end local v1       #isucs2:Z,
    const/4 v0, 0x4

    sub-int v0, p2, v0

    move v2, v0

    .line 198
    .end local v0       #len:I,
    .restart local v2       #len:I,
    :goto_a9
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    .line 200
    .local v0, base:C
    add-int/lit8 p1, p1, 0x4

    .line 201
    const/4 v1, 0x1

    .restart local v1       #isucs2:Z,
    goto :goto_69

    .line 222
    .end local v2       #len:I,
    .local v1, len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;,
    .local p2, count:I
    :cond_bd
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/2addr p1, p2

    .line 226
    sub-int p2, v1, p2

    .line 227
    .end local v1       #len:I,
    .local p2, len:I
    goto :goto_71

    .line 229
    :cond_c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_41

    .line 232
    .end local v3       #ret:Ljava/lang/StringBuilder;,
    .local v1, isucs2:Z
    .restart local v2       #len:I,
    .local p2, length:I
    :cond_ce
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_41

    .end local v1       #isucs2:Z,
    .end local v2       #len:I,
    .restart local v3       #ret:Ljava/lang/StringBuilder;,
    .local p2, len:I
    :cond_d4
    move v1, p2

    .end local p2       #len:I,
    .local v1, len:I
    goto :goto_85

    .end local v1       #len:I,
    .end local v3       #ret:Ljava/lang/StringBuilder;,
    .local v0, len:I
    .local p2, length:I
    :cond_d6
    move v2, v0

    .end local v0       #len:I,
    .restart local v2       #len:I,
    goto :goto_a9

    .end local v2       #len:I,
    .restart local v0       #len:I,
    :cond_d8
    move v2, v0

    .end local v0       #len:I,
    .restart local v2       #len:I,
    goto :goto_5d
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_a
    add-int v3, p1, p2

    if-ge v0, v3, :cond_14

    .line 55
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 56
    .local v2, v:I
    if-le v2, v4, :cond_19

    .line 64
    .end local v2       #v:I,
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 57
    .restart local v2       #v:I,
    :cond_19
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 60
    if-gt v2, v4, :cond_14

    .line 61
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private static bitToRGB(I)I
    .registers 2
    .parameter "bit"

    .prologue
    .line 383
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 384
    const/4 v0, -0x1

    .line 386
    :goto_4
    return v0

    :cond_5
    const/high16 v0, -0x100

    goto :goto_4
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .parameter "bytes"

    .prologue
    const-string v4, "0123456789abcdef"

    .line 280
    if-nez p0, :cond_6

    const/4 v3, 0x0

    .line 296
    :goto_5
    return-object v3

    .line 282
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_31

    .line 287
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 289
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 293
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 296
    .end local v0       #b:I,
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5
.end method

.method public static cdmaBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_d

    .line 110
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 113
    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 114
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 117
    :cond_16
    return v0
.end method

.method private static getCLUT([BII)[I
    .registers 12
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 479
    if-nez p0, :cond_4

    .line 480
    const/4 v7, 0x0

    .line 494
    :goto_3
    return-object v7

    .line 483
    :cond_4
    new-array v4, p2, [I

    .line 484
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 485
    .local v3, endIndex:I
    move v5, p1

    .line 486
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 487
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 489
    .local v0, alpha:I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    .end local v1       #colorIndex:I,
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5       #valueIndex:I,
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6       #valueIndex:I,
    .restart local v5       #valueIndex:I,
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5       #valueIndex:I,
    .restart local v6       #valueIndex:I,
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 493
    if-lt v6, v3, :cond_2f

    move-object v7, v4

    .line 494
    goto :goto_3

    :cond_2f
    move v1, v2

    .end local v2       #colorIndex:I,
    .restart local v1       #colorIndex:I,
    move v5, v6

    .end local v6       #valueIndex:I,
    .restart local v5       #valueIndex:I,
    goto :goto_e
.end method

.method public static gsmBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_b

    .line 88
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 91
    :cond_b
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 92
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 95
    :cond_16
    return v0
.end method

.method static hexCharToInt(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 237
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    sub-int v0, p0, v1

    .line 239
    :goto_e
    return v0

    .line 238
    :cond_f
    if-lt p0, v2, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 239
    :cond_1a
    if-lt p0, v3, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 241
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    .line 258
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 269
    :goto_3
    return-object v3

    .line 260
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 262
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 264
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_2c

    .line 265
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 264
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    :cond_2c
    move-object v3, v1

    .line 269
    goto :goto_3
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .registers 16
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 429
    rem-int v9, v10, p4

    if-eqz v9, :cond_13

    .line 430
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v9

    .line 462
    :goto_12
    return-object v9

    .line 435
    :cond_13
    const/4 v0, 0x1

    .line 436
    .local v0, mask:I
    packed-switch p4, :pswitch_data_4c

    .line 451
    :goto_17
    :pswitch_17
    new-array v2, p2, [I

    .line 452
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 453
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 454
    .end local p1       
    .local v8, valueIndex:I
    :goto_1d
    if-ge v3, p2, :cond_48

    .line 455
    add-int/lit8 p1, v8, 0x1

    .end local v8       #valueIndex:I,
    .restart local p1       
    aget-byte v7, p0, v8

    .line 456
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3       #resultIndex:I,
    .local v4, resultIndex:I
    :goto_25
    if-ge v6, v5, :cond_45

    .line 457
    sub-int v9, v5, v6

    const/4 v10, 0x1

    sub-int v1, v9, v10

    .line 458
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4       #resultIndex:I,
    .restart local v3       #resultIndex:I,
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 456
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3       #resultIndex:I,
    .restart local v4       #resultIndex:I,
    goto :goto_25

    .line 438
    .end local v1       #offset:I,
    .end local v2       #resultArray:[I,
    .end local v4       #resultIndex:I,
    .end local v5       #run:I,
    .end local v6       #runIndex:I,
    .end local v7       #tempByte:B,
    :pswitch_3b
    const/4 v0, 0x1

    .line 439
    goto :goto_17

    .line 441
    :pswitch_3d
    const/4 v0, 0x3

    .line 442
    goto :goto_17

    .line 444
    :pswitch_3f
    const/16 v0, 0xf

    .line 445
    goto :goto_17

    .line 447
    :pswitch_42
    const/16 v0, 0xff

    goto :goto_17

    .restart local v2       #resultArray:[I,
    .restart local v4       #resultIndex:I,
    .restart local v5       #run:I,
    .restart local v6       #runIndex:I,
    .restart local v7       #tempByte:B,
    :cond_45
    move v3, v4

    .end local v4       #resultIndex:I,
    .restart local v3       #resultIndex:I,
    move v8, p1

    .line 461
    .end local p1       
    .restart local v8       #valueIndex:I,
    goto :goto_1d

    .end local v6       #runIndex:I,
    .end local v7       #tempByte:B,
    :cond_48
    move p1, v8

    .end local v8       #valueIndex:I,
    .restart local p1       
    move-object v9, v2

    .line 462
    goto :goto_12

    .line 436
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3d
        :pswitch_17
        :pswitch_3f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_42
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .registers 8
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 467
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_12

    .line 468
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v1

    .line 475
    :goto_11
    return-object v1

    .line 473
    :cond_12
    new-array v0, p2, [I

    .local v0, resultArray:[I
    move-object v1, v0

    .line 475
    goto :goto_11
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .registers 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v6, 0x1

    .line 309
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_b

    if-ge p2, v6, :cond_e

    .line 310
    :cond_b
    const-string v4, ""

    .line 347
    :goto_d
    return-object v4

    .line 313
    :cond_e
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_4c

    .line 334
    const-string v2, ""

    .line 342
    .local v2, ret:Ljava/lang/String;
    :goto_19
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1f

    :cond_1f
    move-object v4, v2

    .line 347
    goto :goto_d

    .line 317
    .end local v2       #ret:Ljava/lang/String;,
    :pswitch_21
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 318
    .local v3, unusedBits:I
    sub-int v4, p2, v6

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 319
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 320
    .restart local v2       #ret:Ljava/lang/String;,
    goto :goto_19

    .line 324
    .end local v0       #countSeptets:I,
    .end local v2       #ret:Ljava/lang/String;,
    .end local v3       #unusedBits:I,
    :pswitch_33
    :try_start_33
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    sub-int v5, p2, v6

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3f} :catch_40

    .restart local v2       #ret:Ljava/lang/String;,
    goto :goto_19

    .line 326
    .end local v2       #ret:Ljava/lang/String;,
    :catch_40
    move-exception v4

    move-object v1, v4

    .line 327
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 328
    .restart local v2       #ret:Ljava/lang/String;,
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 313
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_33
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"

    .prologue
    .line 357
    const/4 v8, 0x0

    .line 358
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8       #valueIndex:I,
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 359
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9       #valueIndex:I,
    .restart local v8       #valueIndex:I,
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 360
    .local v3, height:I
    mul-int v4, v10, v3

    .line 362
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 364
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 365
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 366
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5       #pixelIndex:I,
    .local v6, pixelIndex:I
    move v9, v8

    .line 367
    .end local v8       #valueIndex:I,
    .restart local v9       #valueIndex:I,
    :goto_16
    if-ge v6, v4, :cond_33

    .line 369
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_44

    .line 370
    add-int/lit8 v8, v9, 0x1

    .end local v9       #valueIndex:I,
    .restart local v8       #valueIndex:I,
    aget-byte v2, p0, v9

    .line 371
    const/4 v0, 0x7

    .line 373
    :goto_21
    add-int/lit8 v5, v6, 0x1

    .end local v6       #pixelIndex:I,
    .restart local v5       #pixelIndex:I,
    add-int/lit8 v1, v0, -0x1

    .end local v0       #bitIndex:I,
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1       #bitIndex:I,
    .restart local v0       #bitIndex:I,
    move v6, v5

    .end local v5       #pixelIndex:I,
    .restart local v6       #pixelIndex:I,
    move v9, v8

    .end local v8       #valueIndex:I,
    .restart local v9       #valueIndex:I,
    goto :goto_16

    .line 376
    :cond_33
    if-eq v6, v4, :cond_3d

    .line 377
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3d
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_44
    move v8, v9

    .end local v9       #valueIndex:I,
    .restart local v8       #valueIndex:I,
    goto :goto_21
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    const/4 v11, 0x1

    .line 400
    const/4 v6, 0x0

    .line 401
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6       #valueIndex:I,
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 402
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7       #valueIndex:I,
    .restart local v6       #valueIndex:I,
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 403
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6       #valueIndex:I,
    .restart local v7       #valueIndex:I,
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 404
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7       #valueIndex:I,
    .restart local v6       #valueIndex:I,
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 405
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6       #valueIndex:I,
    .restart local v7       #valueIndex:I,
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7       #valueIndex:I,
    .restart local v6       #valueIndex:I,
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 407
    .local v1, clutOffset:I
    const/4 v9, 0x6

    sub-int/2addr p1, v9

    .line 409
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 410
    .local v2, colorIndexArray:[I
    if-ne v11, p2, :cond_37

    .line 411
    sub-int v9, v3, v11

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 414
    :cond_37
    const/4 v5, 0x0

    .line 415
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_4a

    .line 416
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 423
    :goto_43
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 419
    :cond_4a
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_43
.end method
