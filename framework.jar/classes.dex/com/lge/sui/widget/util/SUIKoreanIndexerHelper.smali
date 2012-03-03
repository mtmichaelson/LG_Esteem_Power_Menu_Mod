.class public Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;
.super Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;
.source "SUIKoreanIndexerHelper.java"



# static fields
.field public static final UNICODE_COMPLETION_END:Ljava/lang/String; = "\ud7a3"

.field public static final UNICODE_COMPLETION_START:Ljava/lang/String; = "\uac00"

.field public static final UNICODE_INITIAL_SOUND_END:Ljava/lang/String; = "\u314e"

.field public static final UNICODE_INITIAL_SOUND_START:Ljava/lang/String; = "\u3131"

.field public static final UNICODE_POINT_COMPLETION_END:I

.field public static final UNICODE_POINT_COMPLETION_START:I

.field public static final UNICODE_POINT_INITIAL_SOUND_END:I

.field public static final UNICODE_POINT_INITIAL_SOUND_START:I



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-string/jumbo v0, "\u3131"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_INITIAL_SOUND_START:I

    .line 14
    const-string/jumbo v0, "\u314e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_INITIAL_SOUND_END:I

    .line 17
    const-string/jumbo v0, "\uac00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_COMPLETION_START:I

    .line 20
    const-string/jumbo v0, "\ud7a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_COMPLETION_END:I

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

    .line 96
    const-string v0, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_11

    const-string v0, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_21

    :cond_11
    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_24

    const-string v0, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_24

    .line 98
    :cond_21
    const/16 v0, 0xf

    .line 134
    :goto_23
    return v0

    .line 99
    :cond_24
    const-string v0, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_34

    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_44

    :cond_34
    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_47

    const-string v0, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_47

    .line 101
    :cond_44
    const/16 v0, 0x10

    goto :goto_23

    .line 102
    :cond_47
    const-string v0, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_57

    const-string v0, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_67

    :cond_57
    const-string v0, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_6a

    const-string v0, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_6a

    .line 104
    :cond_67
    const/16 v0, 0x11

    goto :goto_23

    .line 105
    :cond_6a
    const-string v0, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_7a

    const-string v0, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_8a

    :cond_7a
    const-string v0, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_8d

    const-string v0, "j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_8d

    .line 107
    :cond_8a
    const/16 v0, 0x12

    goto :goto_23

    .line 108
    :cond_8d
    const-string v0, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_9d

    const-string v0, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_ad

    :cond_9d
    const-string v0, "k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_b1

    const-string v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_b1

    .line 110
    :cond_ad
    const/16 v0, 0x13

    goto/16 :goto_23

    .line 111
    :cond_b1
    const-string v0, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_c1

    const-string v0, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_d2

    :cond_c1
    const-string v0, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_d6

    const-string/jumbo v0, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_d6

    .line 113
    :cond_d2
    const/16 v0, 0x14

    goto/16 :goto_23

    .line 114
    :cond_d6
    const-string v0, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_e6

    const-string v0, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_f8

    :cond_e6
    const-string/jumbo v0, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_fc

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_fc

    .line 116
    :cond_f8
    const/16 v0, 0x15

    goto/16 :goto_23

    .line 117
    :cond_fc
    const-string v0, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_10c

    const-string v0, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_11e

    :cond_10c
    const-string/jumbo v0, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_122

    const-string/jumbo v0, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_122

    .line 119
    :cond_11e
    const/16 v0, 0x16

    goto/16 :goto_23

    .line 120
    :cond_122
    const-string v0, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_132

    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_144

    :cond_132
    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_148

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_148

    .line 122
    :cond_144
    const/16 v0, 0x17

    goto/16 :goto_23

    .line 123
    :cond_148
    const-string v0, "U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_158

    const-string v0, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_16a

    :cond_158
    const-string/jumbo v0, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_16e

    const-string/jumbo v0, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_16e

    .line 125
    :cond_16a
    const/16 v0, 0x18

    goto/16 :goto_23

    .line 126
    :cond_16e
    const-string v0, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_17e

    const-string v0, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_190

    :cond_17e
    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_194

    const-string/jumbo v0, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_194

    .line 128
    :cond_190
    const/16 v0, 0x19

    goto/16 :goto_23

    .line 129
    :cond_194
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1a4

    const-string v0, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_1b6

    :cond_1a4
    const-string/jumbo v0, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1ba

    const-string/jumbo v0, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1ba

    .line 131
    :cond_1b6
    const/16 v0, 0x1a

    goto/16 :goto_23

    .line 134
    :cond_1ba
    const/16 v0, 0x1b

    goto/16 :goto_23
.end method

.method private getSectionIndexForKorean(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string/jumbo v0, "\u3131"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_13

    const-string/jumbo v0, "\u3133"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_25

    :cond_13
    const-string/jumbo v0, "\uac00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_27

    const-string/jumbo v0, "\ub097"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_27

    .line 50
    :cond_25
    const/4 v0, 0x1

    .line 92
    :goto_26
    return v0

    .line 51
    :cond_27
    const-string/jumbo v0, "\u3134"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_39

    const-string/jumbo v0, "\u3136"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_4b

    :cond_39
    const-string/jumbo v0, "\ub098"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_4d

    const-string/jumbo v0, "\ub2e3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_4d

    .line 53
    :cond_4b
    const/4 v0, 0x2

    goto :goto_26

    .line 54
    :cond_4d
    const-string/jumbo v0, "\u3137"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_5f

    const-string/jumbo v0, "\u3138"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_71

    :cond_5f
    const-string/jumbo v0, "\ub2e4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_73

    const-string/jumbo v0, "\ub77b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_73

    .line 56
    :cond_71
    const/4 v0, 0x3

    goto :goto_26

    .line 57
    :cond_73
    const-string/jumbo v0, "\u3139"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_85

    const-string/jumbo v0, "\u3140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_97

    :cond_85
    const-string/jumbo v0, "\ub77c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_99

    const-string/jumbo v0, "\ub9c7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_99

    .line 59
    :cond_97
    const/4 v0, 0x4

    goto :goto_26

    .line 60
    :cond_99
    const-string/jumbo v0, "\u3141"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_b4

    const-string/jumbo v0, "\ub9c8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_b7

    const-string/jumbo v0, "\ubc13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_b7

    .line 62
    :cond_b4
    const/4 v0, 0x5

    goto/16 :goto_26

    .line 63
    :cond_b7
    const-string/jumbo v0, "\u3142"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_c9

    const-string/jumbo v0, "\u3144"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_db

    :cond_c9
    const-string/jumbo v0, "\ubc14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_de

    const-string/jumbo v0, "\uc0ab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_de

    .line 65
    :cond_db
    const/4 v0, 0x6

    goto/16 :goto_26

    .line 66
    :cond_de
    const-string/jumbo v0, "\u3145"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_f0

    const-string/jumbo v0, "\u3146"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_102

    :cond_f0
    const-string/jumbo v0, "\uc0ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_105

    const-string/jumbo v0, "\uc543"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_105

    .line 68
    :cond_102
    const/4 v0, 0x7

    goto/16 :goto_26

    .line 69
    :cond_105
    const-string/jumbo v0, "\u3147"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_120

    const-string/jumbo v0, "\uc544"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_124

    const-string/jumbo v0, "\uc78f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_124

    .line 71
    :cond_120
    const/16 v0, 0x8

    goto/16 :goto_26

    .line 72
    :cond_124
    const-string/jumbo v0, "\u3148"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_136

    const-string/jumbo v0, "\u3149"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_148

    :cond_136
    const-string/jumbo v0, "\uc790"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_14c

    const-string/jumbo v0, "\ucc27"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_14c

    .line 74
    :cond_148
    const/16 v0, 0x9

    goto/16 :goto_26

    .line 75
    :cond_14c
    const-string/jumbo v0, "\u314a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_167

    const-string/jumbo v0, "\ucc28"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_16b

    const-string/jumbo v0, "\uce73"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_16b

    .line 77
    :cond_167
    const/16 v0, 0xa

    goto/16 :goto_26

    .line 78
    :cond_16b
    const-string/jumbo v0, "\u314b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_186

    const-string/jumbo v0, "\uce74"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_18a

    const-string/jumbo v0, "\ud0bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_18a

    .line 80
    :cond_186
    const/16 v0, 0xb

    goto/16 :goto_26

    .line 81
    :cond_18a
    const-string/jumbo v0, "\u314c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1a5

    const-string/jumbo v0, "\ud0c0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1a9

    const-string/jumbo v0, "\ud30b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1a9

    .line 83
    :cond_1a5
    const/16 v0, 0xc

    goto/16 :goto_26

    .line 84
    :cond_1a9
    const-string/jumbo v0, "\u314d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1c4

    const-string/jumbo v0, "\ud30c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1c8

    const-string/jumbo v0, "\ud557"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1c8

    .line 86
    :cond_1c4
    const/16 v0, 0xd

    goto/16 :goto_26

    .line 87
    :cond_1c8
    const-string/jumbo v0, "\u314e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eq p1, v0, :cond_1e3

    const-string/jumbo v0, "\ud558"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1e7

    const-string/jumbo v0, "\ud7a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1e7

    .line 89
    :cond_1e3
    const/16 v0, 0xe

    goto/16 :goto_26

    .line 92
    :cond_1e7
    const/16 v0, 0x1b

    goto/16 :goto_26
.end method

.method private isKorean(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 37
    sget v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_INITIAL_SOUND_START:I

    if-lt p1, v0, :cond_8

    sget v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_INITIAL_SOUND_END:I

    if-le p1, v0, :cond_10

    :cond_8
    sget v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_COMPLETION_START:I

    if-lt p1, v0, :cond_12

    sget v0, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->UNICODE_POINT_COMPLETION_END:I

    if-gt p1, v0, :cond_12

    .line 42
    :cond_10
    const/4 v0, 0x1

    .line 44
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
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->isKorean(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 26
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->getSectionIndexForKorean(I)I

    move-result v1

    .line 33
    :goto_f
    return v1

    .line 27
    :cond_10
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->isAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 28
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->getSectionIndexForAlphabet(I)I

    move-result v1

    goto :goto_f

    .line 29
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIKoreanIndexerHelper;->isNumber(I)Z

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
