.class public Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;
.super Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.source "SUIKoreanIndexerLocaleUtils.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;-><init>()V

    return-void
.end method

.method private static getSectionIndexForHangulCompatibilityJamo(I)Ljava/lang/String;
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, "\ufffd\ufffd"

    .line 101
    const-string/jumbo v0, "\u3134"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_12

    .line 102
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    .line 131
    :goto_11
    return-object v0

    .line 103
    :cond_12
    const-string/jumbo v0, "\u3137"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_20

    .line 104
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 105
    :cond_20
    const-string/jumbo v0, "\u3139"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_2e

    .line 106
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 107
    :cond_2e
    const-string/jumbo v0, "\u3141"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_3c

    .line 108
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 109
    :cond_3c
    const-string/jumbo v0, "\u3142"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_4a

    .line 110
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 111
    :cond_4a
    const-string/jumbo v0, "\u3145"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_58

    .line 112
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 113
    :cond_58
    const-string/jumbo v0, "\u3147"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_66

    .line 114
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 115
    :cond_66
    const-string/jumbo v0, "\u3148"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_74

    .line 116
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 117
    :cond_74
    const-string/jumbo v0, "\u314a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_82

    .line 118
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 119
    :cond_82
    const-string/jumbo v0, "\u314b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_90

    .line 120
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 121
    :cond_90
    const-string/jumbo v0, "\u314c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_9f

    .line 122
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 123
    :cond_9f
    const-string/jumbo v0, "\u314d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_ae

    .line 124
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 125
    :cond_ae
    const-string/jumbo v0, "\u314e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_bd

    .line 126
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 127
    :cond_bd
    const-string/jumbo v0, "\u314f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_cc

    .line 128
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 131
    :cond_cc
    const/4 v0, 0x0

    goto/16 :goto_11
.end method

.method private static getSectionIndexForHangulJamo(I)Ljava/lang/String;
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, "\ufffd\ufffd"

    .line 67
    const-string/jumbo v0, "\u1102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_12

    .line 68
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    .line 97
    :goto_11
    return-object v0

    .line 69
    :cond_12
    const-string/jumbo v0, "\u1103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_20

    .line 70
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 71
    :cond_20
    const-string/jumbo v0, "\u1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_2e

    .line 72
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 73
    :cond_2e
    const-string/jumbo v0, "\u1106"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_3c

    .line 74
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 75
    :cond_3c
    const-string/jumbo v0, "\u1107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_4a

    .line 76
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 77
    :cond_4a
    const-string/jumbo v0, "\u1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_58

    .line 78
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 79
    :cond_58
    const-string/jumbo v0, "\u110b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_66

    .line 80
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 81
    :cond_66
    const-string/jumbo v0, "\u110c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_74

    .line 82
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 83
    :cond_74
    const-string/jumbo v0, "\u110e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_82

    .line 84
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 85
    :cond_82
    const-string/jumbo v0, "\u110f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_90

    .line 86
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 87
    :cond_90
    const-string/jumbo v0, "\u1110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_9f

    .line 88
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 89
    :cond_9f
    const-string/jumbo v0, "\u1111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_ae

    .line 90
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 91
    :cond_ae
    const-string/jumbo v0, "\u1112"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_bd

    .line 92
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 93
    :cond_bd
    const-string/jumbo v0, "\u1113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_cc

    .line 94
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 97
    :cond_cc
    const/4 v0, 0x0

    goto/16 :goto_11
.end method

.method private static getSectionIndexForHangulSyllables(I)Ljava/lang/String;
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, "\ufffd\ufffd"

    .line 33
    const-string/jumbo v0, "\ub098"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_12

    .line 34
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    .line 63
    :goto_11
    return-object v0

    .line 35
    :cond_12
    const-string/jumbo v0, "\ub2e4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_20

    .line 36
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 37
    :cond_20
    const-string/jumbo v0, "\ub77c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_2e

    .line 38
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 39
    :cond_2e
    const-string/jumbo v0, "\ub9c8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_3c

    .line 40
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 41
    :cond_3c
    const-string/jumbo v0, "\ubc14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_4a

    .line 42
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 43
    :cond_4a
    const-string/jumbo v0, "\uc0ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_58

    .line 44
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 45
    :cond_58
    const-string/jumbo v0, "\uc544"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_66

    .line 46
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 47
    :cond_66
    const-string/jumbo v0, "\uc790"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_74

    .line 48
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 49
    :cond_74
    const-string/jumbo v0, "\ucc28"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_82

    .line 50
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 51
    :cond_82
    const-string/jumbo v0, "\uce74"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_90

    .line 52
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto :goto_11

    .line 53
    :cond_90
    const-string/jumbo v0, "\ud0c0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_9f

    .line 54
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 55
    :cond_9f
    const-string/jumbo v0, "\ud30c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_ae

    .line 56
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 57
    :cond_ae
    const-string/jumbo v0, "\ud558"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_bd

    .line 58
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 59
    :cond_bd
    const-string/jumbo v0, "\ud7a4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_cc

    .line 60
    const-string/jumbo v0, "\ufffd\ufffd"

    move-object v0, v2

    goto/16 :goto_11

    .line 63
    :cond_cc
    const/4 v0, 0x0

    goto/16 :goto_11
.end method

.method private static isHangulCompatibilityJamoUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 143
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isHangulJamoUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 139
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isHangulSyllablesUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 135
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getSectionIndex(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    .local v1, firstLetter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 11
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 12
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 13
    const-string v1, "#"

    .line 25
    .end local v0       #codePoint:I,
    .end local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_18
    :goto_18
    if-nez v1, :cond_1c

    .line 26
    const-string v1, "?"

    .line 29
    :cond_1c
    return-object v1

    .line 14
    .restart local v0       #codePoint:I,
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_1d
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->isHangulSyllablesUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 15
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->getSectionIndexForHangulSyllables(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 16
    :cond_28
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->isHangulJamoUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 17
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->getSectionIndexForHangulJamo(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 18
    :cond_33
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->isHangulCompatibilityJamoUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 19
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->getSectionIndexForHangulCompatibilityJamo(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 20
    :cond_3e
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIKoreanIndexerLocaleUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method
