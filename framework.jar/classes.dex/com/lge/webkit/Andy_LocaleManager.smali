.class public Lcom/lge/webkit/Andy_LocaleManager;
.super Ljava/lang/Object;
.source "Andy_LocaleManager.java"



# static fields
.field public static final LOCALE_CO_BE:I = 0x4

.field public static final LOCALE_CO_BR:I = 0x8

.field public static final LOCALE_CO_CA:I = 0x7

.field public static final LOCALE_CO_CH:I = 0x5

.field public static final LOCALE_CO_ES:I = 0x3

.field public static final LOCALE_CO_FR:I = 0x2

.field public static final LOCALE_CO_GB:I = 0x1

.field public static final LOCALE_CO_KR:I = 0x6

.field public static final LOCALE_CO_NONE:I = -0x1

.field public static final LOCALE_OP_ATT:I = 0x1

.field public static final LOCALE_OP_CLARO:I = 0x2

.field public static final LOCALE_OP_CMCC:I = 0x3

.field public static final LOCALE_OP_CUGSM:I = 0x4

.field public static final LOCALE_OP_H3G:I = 0x5

.field public static final LOCALE_OP_MOV:I = 0x6

.field public static final LOCALE_OP_NONE:I = -0x1

.field public static final LOCALE_OP_O2:I = 0x9

.field public static final LOCALE_OP_OPEN:I = 0x8

.field public static final LOCALE_OP_ORG:I = 0x7

.field public static final LOCALE_OP_ROGERS:I = 0x12

.field public static final LOCALE_OP_SMART:I = 0xa

.field public static final LOCALE_OP_TELUS:I = 0x13

.field public static final LOCALE_OP_TIM:I = 0xb

.field public static final LOCALE_OP_TME:I = 0xc

.field public static final LOCALE_OP_TMN:I = 0xe

.field public static final LOCALE_OP_TMO:I = 0xd

.field public static final LOCALE_OP_TNR:I = 0xf

.field public static final LOCALE_OP_VDF:I = 0x10

.field public static final LOCALE_OP_VIVO:I = 0x11

.field private static final LOG_TAG:Ljava/lang/String; = "DownloadManager"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountry()I
    .registers 5

    .prologue
    .line 89
    const-string v1, ""

    .line 90
    .local v1, mccStr:Ljava/lang/String;
    const/4 v0, -0x1

    .line 92
    .local v0, mcc:I
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ !!! Country = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 96
    const/4 v0, 0x1

    .line 114
    :goto_24
    return v0

    .line 97
    :cond_25
    const-string v2, "FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 98
    const/4 v0, 0x2

    goto :goto_24

    .line 99
    :cond_2f
    const-string v2, "ES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 100
    const/4 v0, 0x3

    goto :goto_24

    .line 101
    :cond_39
    const-string v2, "BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 102
    const/4 v0, 0x4

    goto :goto_24

    .line 103
    :cond_43
    const-string v2, "CH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 104
    const/4 v0, 0x5

    goto :goto_24

    .line 105
    :cond_4d
    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 106
    const/4 v0, 0x6

    goto :goto_24

    .line 107
    :cond_57
    const-string v2, "CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 108
    const/4 v0, 0x7

    goto :goto_24

    .line 109
    :cond_61
    const-string v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 110
    const/16 v0, 0x8

    goto :goto_24

    .line 112
    :cond_6c
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public static getOperator()I
    .registers 5

    .prologue
    .line 57
    const-string v0, ""

    .line 59
    .local v0, opStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 61
    .local v1, operator:I
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ !!! Operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, "ORG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 65
    const/4 v1, 0x7

    .line 85
    :goto_24
    return v1

    .line 66
    :cond_25
    const-string v2, "VDF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 67
    const/16 v1, 0x10

    goto :goto_24

    .line 68
    :cond_30
    const-string v2, "TMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 69
    const/16 v1, 0xd

    goto :goto_24

    .line 70
    :cond_3b
    const-string v2, "H3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 71
    const/4 v1, 0x5

    goto :goto_24

    .line 72
    :cond_45
    const-string v2, "TIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 73
    const/16 v1, 0xb

    goto :goto_24

    .line 74
    :cond_50
    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 75
    const/4 v1, 0x1

    goto :goto_24

    .line 76
    :cond_5a
    const-string v2, "RGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 77
    const/16 v1, 0x12

    goto :goto_24

    .line 78
    :cond_65
    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 79
    const/16 v1, 0x8

    goto :goto_24

    .line 80
    :cond_70
    const-string v2, "TELUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 81
    const/16 v1, 0x13

    goto :goto_24

    .line 83
    :cond_7b
    const/16 v1, 0x8

    goto :goto_24
.end method
