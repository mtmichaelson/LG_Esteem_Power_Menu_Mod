.class public Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;
.super Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;
.source "SUIBulgarianIndexerHelper.java"



# static fields
.field public static final UNICODE_BULGARIAN_LOWERCASE_END:Ljava/lang/String; = "\u044f"

.field public static final UNICODE_BULGARIAN_LOWERCASE_START:Ljava/lang/String; = "\u0430"

.field public static final UNICODE_BULGARIAN_UPPERCASE_END:Ljava/lang/String; = "\u042f"

.field public static final UNICODE_BULGARIAN_UPPERCASE_START:Ljava/lang/String; = "\u0410"

.field public static final UNICODE_POINT_BULGARIAN_LOWERCASE_END:I

.field public static final UNICODE_POINT_BULGARIAN_LOWERCASE_START:I

.field public static final UNICODE_POINT_BULGARIAN_UPPERCASE_END:I

.field public static final UNICODE_POINT_BULGARIAN_UPPERCASE_START:I



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-string/jumbo v0, "\u0410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_UPPERCASE_START:I

    .line 14
    const-string/jumbo v0, "\u042f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_UPPERCASE_END:I

    .line 17
    const-string/jumbo v0, "\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_LOWERCASE_START:I

    .line 20
    const-string/jumbo v0, "\u044f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sput v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_LOWERCASE_END:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIBaseIndexerHelper;-><init>()V

    return-void
.end method

.method private getSectionIndexForBulgarian(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "\u0410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_13

    const-string/jumbo v0, "\u0411"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_25

    :cond_13
    const-string/jumbo v0, "\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_27

    const-string/jumbo v0, "\u0431"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_27

    .line 49
    :cond_25
    const/4 v0, 0x1

    .line 94
    :goto_26
    return v0

    .line 50
    :cond_27
    const-string/jumbo v0, "\u0412"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_39

    const-string/jumbo v0, "\u0413"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_4b

    :cond_39
    const-string/jumbo v0, "\u0432"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_4d

    const-string/jumbo v0, "\u0433"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_4d

    .line 52
    :cond_4b
    const/4 v0, 0x2

    goto :goto_26

    .line 53
    :cond_4d
    const-string/jumbo v0, "\u0414"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_5f

    const-string/jumbo v0, "\u0415"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_71

    :cond_5f
    const-string/jumbo v0, "\u0434"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_73

    const-string/jumbo v0, "\u0435"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_73

    .line 55
    :cond_71
    const/4 v0, 0x3

    goto :goto_26

    .line 56
    :cond_73
    const-string/jumbo v0, "\u0416"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_85

    const-string/jumbo v0, "\u0417"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_97

    :cond_85
    const-string/jumbo v0, "\u0436"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_99

    const-string/jumbo v0, "\u0437"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_99

    .line 58
    :cond_97
    const/4 v0, 0x4

    goto :goto_26

    .line 59
    :cond_99
    const-string/jumbo v0, "\u0418"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_ab

    const-string/jumbo v0, "\u0419"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_bd

    :cond_ab
    const-string/jumbo v0, "\u0438"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_c0

    const-string/jumbo v0, "\u0439"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_c0

    .line 61
    :cond_bd
    const/4 v0, 0x5

    goto/16 :goto_26

    .line 62
    :cond_c0
    const-string/jumbo v0, "\u041a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_d2

    const-string/jumbo v0, "\u041b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_e4

    :cond_d2
    const-string/jumbo v0, "\u043a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_e7

    const-string/jumbo v0, "\u043b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_e7

    .line 64
    :cond_e4
    const/4 v0, 0x6

    goto/16 :goto_26

    .line 65
    :cond_e7
    const-string/jumbo v0, "\u041c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_f9

    const-string/jumbo v0, "\u041d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_10b

    :cond_f9
    const-string/jumbo v0, "\u043c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_10e

    const-string/jumbo v0, "\u043d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_10e

    .line 67
    :cond_10b
    const/4 v0, 0x7

    goto/16 :goto_26

    .line 68
    :cond_10e
    const-string/jumbo v0, "\u041e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_120

    const-string/jumbo v0, "\u041f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_132

    :cond_120
    const-string/jumbo v0, "\u043e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_136

    const-string/jumbo v0, "\u043f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_136

    .line 70
    :cond_132
    const/16 v0, 0x8

    goto/16 :goto_26

    .line 71
    :cond_136
    const-string/jumbo v0, "\u0420"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_148

    const-string/jumbo v0, "\u0421"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_15a

    :cond_148
    const-string/jumbo v0, "\u0440"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_15e

    const-string/jumbo v0, "\u0441"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_15e

    .line 73
    :cond_15a
    const/16 v0, 0x9

    goto/16 :goto_26

    .line 74
    :cond_15e
    const-string/jumbo v0, "\u0422"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_170

    const-string/jumbo v0, "\u0423"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_182

    :cond_170
    const-string/jumbo v0, "\u0442"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_186

    const-string/jumbo v0, "\u0443"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_186

    .line 76
    :cond_182
    const/16 v0, 0xa

    goto/16 :goto_26

    .line 77
    :cond_186
    const-string/jumbo v0, "\u0424"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_198

    const-string/jumbo v0, "\u0425"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_1aa

    :cond_198
    const-string/jumbo v0, "\u0444"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1ae

    const-string/jumbo v0, "\u0445"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1ae

    .line 79
    :cond_1aa
    const/16 v0, 0xb

    goto/16 :goto_26

    .line 80
    :cond_1ae
    const-string/jumbo v0, "\u0426"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1c0

    const-string/jumbo v0, "\u0427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_1d2

    :cond_1c0
    const-string/jumbo v0, "\u0446"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1d6

    const-string/jumbo v0, "\u0447"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1d6

    .line 82
    :cond_1d2
    const/16 v0, 0xc

    goto/16 :goto_26

    .line 83
    :cond_1d6
    const-string/jumbo v0, "\u0428"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1e8

    const-string/jumbo v0, "\u0429"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_1fa

    :cond_1e8
    const-string/jumbo v0, "\u0448"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1fe

    const-string/jumbo v0, "\u0449"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_1fe

    .line 85
    :cond_1fa
    const/16 v0, 0xd

    goto/16 :goto_26

    .line 86
    :cond_1fe
    const-string/jumbo v0, "\u042a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_210

    const-string/jumbo v0, "\u042d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_222

    :cond_210
    const-string/jumbo v0, "\u044a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_226

    const-string/jumbo v0, "\u044d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_226

    .line 88
    :cond_222
    const/16 v0, 0xe

    goto/16 :goto_26

    .line 89
    :cond_226
    const-string/jumbo v0, "\u042e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_238

    const-string/jumbo v0, "\u042f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_24a

    :cond_238
    const-string/jumbo v0, "\u044e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_24e

    const-string/jumbo v0, "\u044f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_24e

    .line 91
    :cond_24a
    const/16 v0, 0xf

    goto/16 :goto_26

    .line 94
    :cond_24e
    const/16 v0, 0x1b

    goto/16 :goto_26
.end method

.method private getSectionIndexForEnglish(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x0

    .line 98
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

    .line 100
    :cond_21
    const/16 v0, 0x10

    .line 133
    :goto_23
    return v0

    .line 101
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

    .line 103
    :cond_44
    const/16 v0, 0x11

    goto :goto_23

    .line 104
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

    .line 106
    :cond_67
    const/16 v0, 0x12

    goto :goto_23

    .line 107
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

    .line 109
    :cond_8a
    const/16 v0, 0x13

    goto :goto_23

    .line 110
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

    .line 112
    :cond_ad
    const/16 v0, 0x14

    goto/16 :goto_23

    .line 113
    :cond_b1
    const-string v0, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_c1

    const-string v0, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_d2

    :cond_c1
    const-string v0, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_d6

    const-string/jumbo v0, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_d6

    .line 115
    :cond_d2
    const/16 v0, 0x15

    goto/16 :goto_23

    .line 116
    :cond_d6
    const-string v0, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_e6

    const-string v0, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_f8

    :cond_e6
    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_fc

    const-string/jumbo v0, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_fc

    .line 118
    :cond_f8
    const/16 v0, 0x16

    goto/16 :goto_23

    .line 119
    :cond_fc
    const-string v0, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_10c

    const-string v0, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_11e

    :cond_10c
    const-string/jumbo v0, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_122

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_122

    .line 121
    :cond_11e
    const/16 v0, 0x17

    goto/16 :goto_23

    .line 122
    :cond_122
    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_132

    const-string v0, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_144

    :cond_132
    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_148

    const-string/jumbo v0, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_148

    .line 124
    :cond_144
    const/16 v0, 0x18

    goto/16 :goto_23

    .line 125
    :cond_148
    const-string v0, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_158

    const-string v0, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_16a

    :cond_158
    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_16e

    const-string/jumbo v0, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_16e

    .line 127
    :cond_16a
    const/16 v0, 0x19

    goto/16 :goto_23

    .line 128
    :cond_16e
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_17e

    const-string v0, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-le p1, v0, :cond_190

    :cond_17e
    const-string/jumbo v0, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-lt p1, v0, :cond_194

    const-string/jumbo v0, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt p1, v0, :cond_194

    .line 130
    :cond_190
    const/16 v0, 0x1a

    goto/16 :goto_23

    .line 133
    :cond_194
    const/16 v0, 0x1b

    goto/16 :goto_23
.end method

.method private isBulgarian(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 37
    sget v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_UPPERCASE_START:I

    if-lt p1, v0, :cond_8

    sget v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_UPPERCASE_END:I

    if-le p1, v0, :cond_10

    :cond_8
    sget v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_LOWERCASE_START:I

    if-lt p1, v0, :cond_12

    sget v0, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->UNICODE_POINT_BULGARIAN_LOWERCASE_END:I

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
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->isBulgarian(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 26
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->getSectionIndexForBulgarian(I)I

    move-result v1

    .line 33
    :goto_f
    return v1

    .line 27
    :cond_10
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->isAlphabet(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 28
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->getSectionIndexForEnglish(I)I

    move-result v1

    goto :goto_f

    .line 29
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/util/SUIBulgarianIndexerHelper;->isNumber(I)Z

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
