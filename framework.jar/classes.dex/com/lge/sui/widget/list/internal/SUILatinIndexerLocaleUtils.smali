.class public Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;
.super Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.source "SUILatinIndexerLocaleUtils.java"



# static fields
.field public static final CROATIAN_INDEX:[Ljava/lang/String;

.field public static final CZECH_INDEX:[Ljava/lang/String;

.field public static final DANISH_INDEX:[Ljava/lang/String;

.field public static final ESTONIAN_INDEX:[Ljava/lang/String;

.field public static final FINNISH_INDEX:[Ljava/lang/String;

.field public static final HUNGARIAN_INDEX:[Ljava/lang/String;

.field public static final LATVIAN_INDEX:[Ljava/lang/String;

.field public static final LITHUANIAN_INDEX:[Ljava/lang/String;

.field public static final NORWEGIAN_INDEX:[Ljava/lang/String;

.field public static final POLISH_INDEX:[Ljava/lang/String;

.field public static final ROMANIAN_INDEX:[Ljava/lang/String;

.field public static final SERBIAN_INDEX:[Ljava/lang/String;

.field public static final SLOVAK_INDEX:[Ljava/lang/String;

.field public static final SLOVENIAN_INDEX:[Ljava/lang/String;

.field public static final SPANISH_INDEX:[Ljava/lang/String;

.field public static final SWEDISH_INDEX:[Ljava/lang/String;

.field public static final TURKISH_INDEX:[Ljava/lang/String;

.field public static final VIETNAMESE_INDEX:[Ljava/lang/String;

.field static sIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u010c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0106"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u01c5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0110"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u01c8"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u01cb"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->CROATIAN_INDEX:[Ljava/lang/String;

    .line 57
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00c1"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u010c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u010e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u00c9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u011a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Ch"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u00cd"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u0147"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u00d3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u0158"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "\u0164"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u00da"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u016e"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "\u00dd"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->CZECH_INDEX:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00c6"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u00d8"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u00c5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->DANISH_INDEX:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00d5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u00c4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u00d6"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u00dc"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->ESTONIAN_INDEX:[Ljava/lang/String;

    .line 85
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00c5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u00c4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u00d6"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->FINNISH_INDEX:[Ljava/lang/String;

    .line 94
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00c1"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u01f2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u01f2s"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u00c9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Gy"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u00cd"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Ly"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Ny"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u00d3"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u00d6"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u0150"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Sz"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Ty"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00da"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u00dc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\u0170"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Zs"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->HUNGARIAN_INDEX:[Ljava/lang/String;

    .line 105
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0100"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u010c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0112"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u0122"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u012a"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u0136"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u013b"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u0145"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\u016a"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->LATVIAN_INDEX:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0104"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u010c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0118"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u0116"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u012e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u0172"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u016a"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->LITHUANIAN_INDEX:[Ljava/lang/String;

    .line 124
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00c6"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u00d8"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u00c5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->NORWEGIAN_INDEX:[Ljava/lang/String;

    .line 133
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0104"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0106"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0118"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u0141"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u0143"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u00d3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u015a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u0179"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u017b"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->POLISH_INDEX:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0102"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00c2"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u00ce"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u015e"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u0162"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->ROMANIAN_INDEX:[Ljava/lang/String;

    .line 151
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u010c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0106"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u01c5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0110"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u01c8"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u01cb"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SERBIAN_INDEX:[Ljava/lang/String;

    .line 160
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u010c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u010e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u01f1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u01c5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u0139"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u0147"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u0154"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u0164"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SLOVAK_INDEX:[Ljava/lang/String;

    .line 170
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u010c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u0160"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u017d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SLOVENIAN_INDEX:[Ljava/lang/String;

    .line 179
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u00d1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SPANISH_INDEX:[Ljava/lang/String;

    .line 188
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00c5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u00c4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u00d6"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SWEDISH_INDEX:[Ljava/lang/String;

    .line 197
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u00c7"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u011e"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u0130"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u00d6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u015e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00dc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->TURKISH_INDEX:[Ljava/lang/String;

    .line 206
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0102"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00c2"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u0110"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u00ca"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u00d4"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u01a0"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u01af"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->VIETNAMESE_INDEX:[Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    .line 217
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "hr"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->CROATIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "cs"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->CZECH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "da"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->DANISH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "et"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->ESTONIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "fi"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->FINNISH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "hu"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->HUNGARIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "lv"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->LATVIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "lt"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->LITHUANIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "no"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->NORWEGIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pl"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->POLISH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ro"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->ROMANIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sr"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SERBIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sk"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SLOVAK_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sl"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SLOVENIAN_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string v1, "es"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SPANISH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sv"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->SWEDISH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tr"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->TURKISH_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vi"

    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->VIETNAMESE_INDEX:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;-><init>()V

    return-void
.end method

.method public static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 31
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_14

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_14

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_14

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_14

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public getSectionIndex(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    .local v1, firstLetter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 15
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 16
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 17
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

    .line 18
    .restart local v0       #codePoint:I,
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_1d
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method public getSectionIndexArray(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, language:Ljava/lang/String;
    sget-object v2, Lcom/lge/sui/widget/list/internal/SUILatinIndexerLocaleUtils;->sIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 41
    .local v0, indexArray:[Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 42
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;->getSectionIndexArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_1c
    return-object v0
.end method
