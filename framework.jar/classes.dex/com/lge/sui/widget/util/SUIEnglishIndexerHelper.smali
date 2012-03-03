.class public Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;
.super Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;
.source "SUIEnglishIndexerHelper.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;-><init>()V

    return-void
.end method

.method private getSectionIndexForEnglish(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_11

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 19
    :cond_11
    const/4 v0, 0x1

    .line 97
    :goto_12
    return v0

    .line 20
    :cond_13
    const-string v0, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_23

    const-string v0, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 22
    :cond_23
    const/4 v0, 0x2

    goto :goto_12

    .line 23
    :cond_25
    const-string v0, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_35

    const-string v0, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_37

    .line 25
    :cond_35
    const/4 v0, 0x3

    goto :goto_12

    .line 26
    :cond_37
    const-string v0, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_47

    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_49

    .line 28
    :cond_47
    const/4 v0, 0x4

    goto :goto_12

    .line 29
    :cond_49
    const-string v0, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_59

    const-string v0, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_5b

    .line 31
    :cond_59
    const/4 v0, 0x5

    goto :goto_12

    .line 32
    :cond_5b
    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_6b

    const-string v0, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_6d

    .line 34
    :cond_6b
    const/4 v0, 0x6

    goto :goto_12

    .line 35
    :cond_6d
    const-string v0, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_7d

    const-string v0, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_7f

    .line 37
    :cond_7d
    const/4 v0, 0x7

    goto :goto_12

    .line 38
    :cond_7f
    const-string v0, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_8f

    const-string v0, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_92

    .line 40
    :cond_8f
    const/16 v0, 0x8

    goto :goto_12

    .line 41
    :cond_92
    const-string v0, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_a2

    const-string v0, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_a6

    .line 43
    :cond_a2
    const/16 v0, 0x9

    goto/16 :goto_12

    .line 44
    :cond_a6
    const-string v0, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_b6

    const-string v0, "j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_ba

    .line 46
    :cond_b6
    const/16 v0, 0xa

    goto/16 :goto_12

    .line 47
    :cond_ba
    const-string v0, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_ca

    const-string v0, "k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_ce

    .line 49
    :cond_ca
    const/16 v0, 0xb

    goto/16 :goto_12

    .line 50
    :cond_ce
    const-string v0, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_de

    const-string v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_e2

    .line 52
    :cond_de
    const/16 v0, 0xc

    goto/16 :goto_12

    .line 53
    :cond_e2
    const-string v0, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_f2

    const-string v0, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_f6

    .line 55
    :cond_f2
    const/16 v0, 0xd

    goto/16 :goto_12

    .line 56
    :cond_f6
    const-string v0, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_107

    const-string/jumbo v0, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_10b

    .line 58
    :cond_107
    const/16 v0, 0xe

    goto/16 :goto_12

    .line 59
    :cond_10b
    const-string v0, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_11c

    const-string/jumbo v0, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_120

    .line 61
    :cond_11c
    const/16 v0, 0xf

    goto/16 :goto_12

    .line 62
    :cond_120
    const-string v0, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_131

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_135

    .line 64
    :cond_131
    const/16 v0, 0x10

    goto/16 :goto_12

    .line 65
    :cond_135
    const-string v0, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_146

    const-string/jumbo v0, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_14a

    .line 67
    :cond_146
    const/16 v0, 0x11

    goto/16 :goto_12

    .line 68
    :cond_14a
    const-string v0, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_15b

    const-string/jumbo v0, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_15f

    .line 70
    :cond_15b
    const/16 v0, 0x12

    goto/16 :goto_12

    .line 71
    :cond_15f
    const-string v0, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_170

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_174

    .line 73
    :cond_170
    const/16 v0, 0x13

    goto/16 :goto_12

    .line 74
    :cond_174
    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_185

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_189

    .line 76
    :cond_185
    const/16 v0, 0x14

    goto/16 :goto_12

    .line 77
    :cond_189
    const-string v0, "U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_19a

    const-string/jumbo v0, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_19e

    .line 79
    :cond_19a
    const/16 v0, 0x15

    goto/16 :goto_12

    .line 80
    :cond_19e
    const-string v0, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1af

    const-string/jumbo v0, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1b3

    .line 82
    :cond_1af
    const/16 v0, 0x16

    goto/16 :goto_12

    .line 83
    :cond_1b3
    const-string v0, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1c4

    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1c8

    .line 85
    :cond_1c4
    const/16 v0, 0x17

    goto/16 :goto_12

    .line 86
    :cond_1c8
    const-string v0, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1d9

    const-string/jumbo v0, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1dd

    .line 88
    :cond_1d9
    const/16 v0, 0x18

    goto/16 :goto_12

    .line 89
    :cond_1dd
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1ee

    const-string/jumbo v0, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1f2

    .line 91
    :cond_1ee
    const/16 v0, 0x19

    goto/16 :goto_12

    .line 92
    :cond_1f2
    const-string v0, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_203

    const-string/jumbo v0, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_207

    .line 94
    :cond_203
    const/16 v0, 0x1a

    goto/16 :goto_12

    .line 97
    :cond_207
    const/16 v0, 0x1b

    goto/16 :goto_12
.end method


# virtual methods
.method public getSectionIndexForWord(Ljava/lang/String;)I
    .registers 5
    .parameter "word"

    .prologue
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 7
    .local v0, codePoint:I
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;->isAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;->getSectionIndexForEnglish(I)I

    move-result v1

    .line 13
    :goto_f
    return v1

    .line 9
    :cond_10
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    .line 10
    goto :goto_f

    .line 13
    :cond_18
    const/16 v1, 0x1b

    goto :goto_f
.end method
