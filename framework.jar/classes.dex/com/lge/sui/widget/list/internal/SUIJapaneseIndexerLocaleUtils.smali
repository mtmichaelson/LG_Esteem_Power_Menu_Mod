.class public Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;
.super Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.source "SUIJapaneseIndexerLocaleUtils.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;-><init>()V

    return-void
.end method

.method private static getSectionIndexForJapaneseHiragana(I)Ljava/lang/String;
    .registers 7
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    const-string v5, "/u306A"

    const-string v4, "/u305F"

    const-string v3, "/u3055"

    const-string v2, "/u304B"

    .line 31
    const-string v0, "/u304B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_14

    .line 32
    const-string v0, "/u3042"

    .line 55
    :goto_13
    return-object v0

    .line 33
    :cond_14
    const-string v0, "/u3055"

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_20

    .line 34
    const-string v0, "/u304B"

    move-object v0, v2

    goto :goto_13

    .line 35
    :cond_20
    const-string v0, "/u305F"

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_2c

    .line 36
    const-string v0, "/u3055"

    move-object v0, v3

    goto :goto_13

    .line 37
    :cond_2c
    const-string v0, "/u306A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_38

    .line 38
    const-string v0, "/u305F"

    move-object v0, v4

    goto :goto_13

    .line 39
    :cond_38
    const-string v0, "/u306F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_44

    .line 40
    const-string v0, "/u306A"

    move-object v0, v5

    goto :goto_13

    .line 41
    :cond_44
    const-string v0, "/u307E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_4f

    .line 42
    const-string v0, "/u306F"

    goto :goto_13

    .line 43
    :cond_4f
    const-string v0, "/u3083"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_5a

    .line 44
    const-string v0, "/u307E"

    goto :goto_13

    .line 45
    :cond_5a
    const-string v0, "/u3089"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_65

    .line 46
    const-string v0, "/u3083"

    goto :goto_13

    .line 47
    :cond_65
    const-string v0, "/u308E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_70

    .line 48
    const-string v0, "/u3089"

    goto :goto_13

    .line 49
    :cond_70
    const-string v0, "/u3093"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_7b

    .line 50
    const-string v0, "/u308E"

    goto :goto_13

    .line 51
    :cond_7b
    const-string v0, "/u3099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_86

    .line 52
    const-string v0, "/u3096"

    goto :goto_13

    .line 55
    :cond_86
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static getSectionIndexForJapaneseKatakana(I)Ljava/lang/String;
    .registers 3
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "/u30AB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_c

    .line 60
    const-string v0, "/u3042"

    .line 83
    :goto_b
    return-object v0

    .line 61
    :cond_c
    const-string v0, "/u30B5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_17

    .line 62
    const-string v0, "/u304B"

    goto :goto_b

    .line 63
    :cond_17
    const-string v0, "/u30BF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_22

    .line 64
    const-string v0, "/u3055"

    goto :goto_b

    .line 65
    :cond_22
    const-string v0, "/u30CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_2d

    .line 66
    const-string v0, "/u305F"

    goto :goto_b

    .line 67
    :cond_2d
    const-string v0, "/u30CF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_38

    .line 68
    const-string v0, "/u306A"

    goto :goto_b

    .line 69
    :cond_38
    const-string v0, "/u30DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_43

    .line 70
    const-string v0, "/u306F"

    goto :goto_b

    .line 71
    :cond_43
    const-string v0, "/u30E3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_4e

    .line 72
    const-string v0, "/u307E"

    goto :goto_b

    .line 73
    :cond_4e
    const-string v0, "/u30E9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_59

    .line 74
    const-string v0, "/u3083"

    goto :goto_b

    .line 75
    :cond_59
    const-string v0, "/u30EE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_64

    .line 76
    const-string v0, "/u3089"

    goto :goto_b

    .line 77
    :cond_64
    const-string v0, "/u30F3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_6f

    .line 78
    const-string v0, "/u308E"

    goto :goto_b

    .line 79
    :cond_6f
    const-string v0, "/u30F9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ge p0, v0, :cond_7a

    .line 80
    const-string v0, "/u3096"

    goto :goto_b

    .line 83
    :cond_7a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isJapaneseHiraganaUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 87
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isJapaneseKatakanaUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 91
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_8

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 13
    const-string v1, "#"

    .line 23
    .end local v0       #codePoint:I,
    .end local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_18
    :goto_18
    if-nez v1, :cond_1c

    .line 24
    const-string v1, "?"

    .line 27
    :cond_1c
    return-object v1

    .line 14
    .restart local v0       #codePoint:I,
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_1d
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;->isJapaneseHiraganaUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 15
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;->getSectionIndexForJapaneseHiragana(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 16
    :cond_28
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;->isJapaneseKatakanaUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 17
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;->getSectionIndexForJapaneseKatakana(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 18
    :cond_33
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIJapaneseIndexerLocaleUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method
