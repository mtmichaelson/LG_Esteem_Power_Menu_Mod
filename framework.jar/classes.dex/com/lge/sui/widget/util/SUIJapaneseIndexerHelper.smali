.class public Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;
.super Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;
.source "SUIJapaneseIndexerHelper.java"



# static fields
.field public static final HIRAGANA_END_UNICODE:Ljava/lang/String; = "\u3096"

#the value of this static final field might be set in the static constructor
.field public static final HIRAGANA_END_UNICODE_POINT:I = 0x0

.field public static final HIRAGANA_START_UNICODE:Ljava/lang/String; = "\u3041"

#the value of this static final field might be set in the static constructor
.field public static final HIRAGANA_START_UNICODE_POINT:I = 0x0

.field public static final KATAKANA_END_UNICODE:Ljava/lang/String; = "\u30fa"

#the value of this static final field might be set in the static constructor
.field public static final KATAKANA_END_UNICODE_POINT:I = 0x0

.field public static final KATAKANA_START_UNICODE:Ljava/lang/String; = "\u30a1"

.field public static final KATAKANA_START_UNICODE_POINT:I



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-string/jumbo v0, "\u3041"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->HIRAGANA_START_UNICODE_POINT:I

    .line 14
    const-string/jumbo v0, "\u3096"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->HIRAGANA_END_UNICODE_POINT:I

    .line 17
    const-string/jumbo v0, "\u30a1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->KATAKANA_START_UNICODE_POINT:I

    .line 20
    const-string/jumbo v0, "\u30fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->KATAKANA_END_UNICODE_POINT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;-><init>()V

    return-void
.end method

.method private getSectionIndexForAlphabet(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 86
    const-string v0, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_11

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 88
    :cond_11
    const/16 v0, 0xc

    .line 133
    :goto_13
    return v0

    .line 89
    :cond_14
    const-string v0, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_24

    const-string v0, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_27

    .line 91
    :cond_24
    const/16 v0, 0xd

    goto :goto_13

    .line 92
    :cond_27
    const-string v0, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_37

    const-string v0, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_47

    :cond_37
    const-string v0, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_4a

    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_4a

    .line 94
    :cond_47
    const/16 v0, 0xe

    goto :goto_13

    .line 95
    :cond_4a
    const-string v0, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_5a

    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_6a

    :cond_5a
    const-string v0, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_6d

    const-string v0, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_6d

    .line 97
    :cond_6a
    const/16 v0, 0xf

    goto :goto_13

    .line 98
    :cond_6d
    const-string v0, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_7d

    const-string v0, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_8d

    :cond_7d
    const-string v0, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_90

    const-string v0, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_90

    .line 100
    :cond_8d
    const/16 v0, 0x10

    goto :goto_13

    .line 101
    :cond_90
    const-string v0, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_a0

    const-string v0, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_b0

    :cond_a0
    const-string v0, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_b4

    const-string v0, "j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_b4

    .line 103
    :cond_b0
    const/16 v0, 0x11

    goto/16 :goto_13

    .line 104
    :cond_b4
    const-string v0, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_c4

    const-string v0, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_d4

    :cond_c4
    const-string v0, "k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_d8

    const-string v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_d8

    .line 106
    :cond_d4
    const/16 v0, 0x12

    goto/16 :goto_13

    .line 107
    :cond_d8
    const-string v0, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_e8

    const-string v0, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_f9

    :cond_e8
    const-string v0, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_fd

    const-string/jumbo v0, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_fd

    .line 109
    :cond_f9
    const/16 v0, 0x13

    goto/16 :goto_13

    .line 110
    :cond_fd
    const-string v0, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_10d

    const-string v0, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_11f

    :cond_10d
    const-string/jumbo v0, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_123

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_123

    .line 112
    :cond_11f
    const/16 v0, 0x14

    goto/16 :goto_13

    .line 113
    :cond_123
    const-string v0, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_133

    const-string v0, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_145

    :cond_133
    const-string/jumbo v0, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_149

    const-string/jumbo v0, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_149

    .line 115
    :cond_145
    const/16 v0, 0x15

    goto/16 :goto_13

    .line 116
    :cond_149
    const-string v0, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_159

    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_16b

    :cond_159
    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_16f

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_16f

    .line 118
    :cond_16b
    const/16 v0, 0x16

    goto/16 :goto_13

    .line 119
    :cond_16f
    const-string v0, "U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_17f

    const-string v0, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_191

    :cond_17f
    const-string/jumbo v0, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_195

    const-string/jumbo v0, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_195

    .line 121
    :cond_191
    const/16 v0, 0x17

    goto/16 :goto_13

    .line 122
    :cond_195
    const-string v0, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1a5

    const-string v0, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_1b7

    :cond_1a5
    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1bb

    const-string/jumbo v0, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1bb

    .line 124
    :cond_1b7
    const/16 v0, 0x18

    goto/16 :goto_13

    .line 125
    :cond_1bb
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1cc

    const-string/jumbo v0, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1d0

    .line 127
    :cond_1cc
    const/16 v0, 0x19

    goto/16 :goto_13

    .line 128
    :cond_1d0
    const-string v0, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1e1

    const-string/jumbo v0, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1e5

    .line 130
    :cond_1e1
    const/16 v0, 0x1a

    goto/16 :goto_13

    .line 133
    :cond_1e5
    const/16 v0, 0x1b

    goto/16 :goto_13
.end method

.method private getSectionIndexForJapanese(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "\u3041"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_15

    const-string/jumbo v0, "\u304a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_15

    .line 49
    const/4 v0, 0x1

    .line 82
    :goto_14
    return v0

    .line 50
    :cond_15
    const-string/jumbo v0, "\u304b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_29

    const-string/jumbo v0, "\u3054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_29

    .line 52
    const/4 v0, 0x2

    goto :goto_14

    .line 53
    :cond_29
    const-string/jumbo v0, "\u3055"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_3d

    const-string/jumbo v0, "\u305e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_3d

    .line 55
    const/4 v0, 0x3

    goto :goto_14

    .line 56
    :cond_3d
    const-string/jumbo v0, "\u305f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_51

    const-string/jumbo v0, "\u3069"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_51

    .line 58
    const/4 v0, 0x4

    goto :goto_14

    .line 59
    :cond_51
    const-string/jumbo v0, "\u306a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_65

    const-string/jumbo v0, "\u306e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_65

    .line 61
    const/4 v0, 0x5

    goto :goto_14

    .line 62
    :cond_65
    const-string/jumbo v0, "\u306f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_79

    const-string/jumbo v0, "\u307d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_79

    .line 64
    const/4 v0, 0x6

    goto :goto_14

    .line 65
    :cond_79
    const-string/jumbo v0, "\u307e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_8d

    const-string/jumbo v0, "\u3082"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_8d

    .line 67
    const/4 v0, 0x7

    goto :goto_14

    .line 68
    :cond_8d
    const-string/jumbo v0, "\u3083"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_a3

    const-string/jumbo v0, "\u3088"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_a3

    .line 70
    const/16 v0, 0x8

    goto/16 :goto_14

    .line 71
    :cond_a3
    const-string/jumbo v0, "\u3089"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_b9

    const-string/jumbo v0, "\u308d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_b9

    .line 73
    const/16 v0, 0x9

    goto/16 :goto_14

    .line 74
    :cond_b9
    const-string/jumbo v0, "\u308e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_cf

    const-string/jumbo v0, "\u3092"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_cf

    .line 76
    const/16 v0, 0xa

    goto/16 :goto_14

    .line 77
    :cond_cf
    const-string/jumbo v0, "\u3093"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_e5

    const-string/jumbo v0, "\u3096"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_e5

    .line 79
    const/16 v0, 0xb

    goto/16 :goto_14

    .line 82
    :cond_e5
    const/16 v0, 0x1b

    goto/16 :goto_14
.end method

.method private isJapanese(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 37
    sget v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->HIRAGANA_START_UNICODE_POINT:I

    if-lt p1, v0, :cond_8

    sget v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->HIRAGANA_END_UNICODE_POINT:I

    if-le p1, v0, :cond_10

    :cond_8
    sget v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->KATAKANA_START_UNICODE_POINT:I

    if-lt p1, v0, :cond_12

    sget v0, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->KATAKANA_END_UNICODE_POINT:I

    if-gt p1, v0, :cond_12

    .line 41
    :cond_10
    const/4 v0, 0x1

    .line 43
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public getSectionIndexForWord(Ljava/lang/String;)I
    .registers 5
    .parameter "word"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 25
    .local v0, codePoint:I
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->isJapanese(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 26
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->getSectionIndexForJapanese(I)I

    move-result v1

    .line 33
    :goto_f
    return v1

    .line 27
    :cond_10
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->isAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 28
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->getSectionIndexForAlphabet(I)I

    move-result v1

    goto :goto_f

    .line 29
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIJapaneseIndexerHelper;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v2

    .line 30
    goto :goto_f

    .line 33
    :cond_23
    const/16 v1, 0x1b

    goto :goto_f
.end method
