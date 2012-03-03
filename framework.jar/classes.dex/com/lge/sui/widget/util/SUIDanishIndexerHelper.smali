.class public Lcom/lge/sui/widget/util/SUIDanishIndexerHelper;
.super Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;
.source "SUIDanishIndexerHelper.java"



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

    .line 19
    const-string v0, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_11

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 21
    :cond_11
    const/4 v0, 0x1

    .line 99
    :goto_12
    return v0

    .line 22
    :cond_13
    const-string v0, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_23

    const-string v0, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 24
    :cond_23
    const/4 v0, 0x2

    goto :goto_12

    .line 25
    :cond_25
    const-string v0, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_35

    const-string v0, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_37

    .line 27
    :cond_35
    const/4 v0, 0x3

    goto :goto_12

    .line 28
    :cond_37
    const-string v0, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_47

    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_49

    .line 30
    :cond_47
    const/4 v0, 0x4

    goto :goto_12

    .line 31
    :cond_49
    const-string v0, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_59

    const-string v0, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_5b

    .line 33
    :cond_59
    const/4 v0, 0x5

    goto :goto_12

    .line 34
    :cond_5b
    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_6b

    const-string v0, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_6d

    .line 36
    :cond_6b
    const/4 v0, 0x6

    goto :goto_12

    .line 37
    :cond_6d
    const-string v0, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_7d

    const-string v0, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_7f

    .line 39
    :cond_7d
    const/4 v0, 0x7

    goto :goto_12

    .line 40
    :cond_7f
    const-string v0, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_8f

    const-string v0, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_92

    .line 42
    :cond_8f
    const/16 v0, 0x8

    goto :goto_12

    .line 43
    :cond_92
    const-string v0, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_a2

    const-string v0, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_a6

    .line 45
    :cond_a2
    const/16 v0, 0x9

    goto/16 :goto_12

    .line 46
    :cond_a6
    const-string v0, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_b6

    const-string v0, "j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_ba

    .line 48
    :cond_b6
    const/16 v0, 0xa

    goto/16 :goto_12

    .line 49
    :cond_ba
    const-string v0, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_ca

    const-string v0, "k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_ce

    .line 51
    :cond_ca
    const/16 v0, 0xb

    goto/16 :goto_12

    .line 52
    :cond_ce
    const-string v0, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_de

    const-string v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_e2

    .line 54
    :cond_de
    const/16 v0, 0xc

    goto/16 :goto_12

    .line 55
    :cond_e2
    const-string v0, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_f2

    const-string v0, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_f6

    .line 57
    :cond_f2
    const/16 v0, 0xd

    goto/16 :goto_12

    .line 58
    :cond_f6
    const-string v0, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_107

    const-string/jumbo v0, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_10b

    .line 60
    :cond_107
    const/16 v0, 0xe

    goto/16 :goto_12

    .line 61
    :cond_10b
    const-string v0, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_11c

    const-string/jumbo v0, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_120

    .line 63
    :cond_11c
    const/16 v0, 0xf

    goto/16 :goto_12

    .line 64
    :cond_120
    const-string v0, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_131

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_135

    .line 66
    :cond_131
    const/16 v0, 0x10

    goto/16 :goto_12

    .line 67
    :cond_135
    const-string v0, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_146

    const-string/jumbo v0, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_14a

    .line 69
    :cond_146
    const/16 v0, 0x11

    goto/16 :goto_12

    .line 70
    :cond_14a
    const-string v0, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_15b

    const-string/jumbo v0, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_15f

    .line 72
    :cond_15b
    const/16 v0, 0x12

    goto/16 :goto_12

    .line 73
    :cond_15f
    const-string v0, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_170

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_174

    .line 75
    :cond_170
    const/16 v0, 0x13

    goto/16 :goto_12

    .line 76
    :cond_174
    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_185

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_189

    .line 78
    :cond_185
    const/16 v0, 0x14

    goto/16 :goto_12

    .line 79
    :cond_189
    const-string v0, "U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_19a

    const-string/jumbo v0, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_19e

    .line 81
    :cond_19a
    const/16 v0, 0x15

    goto/16 :goto_12

    .line 82
    :cond_19e
    const-string v0, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1af

    const-string/jumbo v0, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1b3

    .line 84
    :cond_1af
    const/16 v0, 0x16

    goto/16 :goto_12

    .line 85
    :cond_1b3
    const-string v0, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1c4

    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1c8

    .line 87
    :cond_1c4
    const/16 v0, 0x17

    goto/16 :goto_12

    .line 88
    :cond_1c8
    const-string v0, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1d9

    const-string/jumbo v0, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1dd

    .line 90
    :cond_1d9
    const/16 v0, 0x18

    goto/16 :goto_12

    .line 91
    :cond_1dd
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1ee

    const-string/jumbo v0, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_1f2

    .line 93
    :cond_1ee
    const/16 v0, 0x19

    goto/16 :goto_12

    .line 94
    :cond_1f2
    const-string v0, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_203

    const-string/jumbo v0, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_207

    .line 96
    :cond_203
    const/16 v0, 0x1a

    goto/16 :goto_12

    .line 99
    :cond_207
    const/16 v0, 0x1b

    goto/16 :goto_12
.end method

.method private isDanishExtension(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 103
    const-string/jumbo v0, "\u00c6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_37

    const-string/jumbo v0, "\u00e6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_37

    const-string/jumbo v0, "\u00d8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_37

    const-string/jumbo v0, "\u00f8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_37

    const-string/jumbo v0, "\u00c5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_37

    const-string/jumbo v0, "\u00e5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p1, v0, :cond_39

    .line 109
    :cond_37
    const/4 v0, 0x1

    .line 111
    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38
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
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIDanishIndexerHelper;->isAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIDanishIndexerHelper;->getSectionIndexForEnglish(I)I

    move-result v1

    .line 15
    :goto_f
    return v1

    .line 9
    :cond_10
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIDanishIndexerHelper;->isDanishExtension(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 10
    const/16 v1, 0x1a

    goto :goto_f

    .line 11
    :cond_19
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIDanishIndexerHelper;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v2

    .line 12
    goto :goto_f

    .line 15
    :cond_21
    const/16 v1, 0x1b

    goto :goto_f
.end method
