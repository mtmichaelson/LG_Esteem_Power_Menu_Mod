.class Landroid/pim/vcard/VCardParserImpl_V40;
.super Landroid/pim/vcard/VCardParserImpl_V30;
.source "VCardParserImpl_V40.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V30;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V30;-><init>(I)V

    .line 39
    return-void
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .registers 2
    .parameter "ch"

    .prologue
    .line 81
    const/16 v0, 0x6e

    if-eq p0, v0, :cond_8

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_b

    .line 82
    :cond_8
    const-string v0, "\n"

    .line 84
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "text"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 64
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_37

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 66
    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_33

    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v2, v5, :cond_33

    .line 67
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 68
    .local v4, next_ch:C
    const/16 v5, 0x6e

    if-eq v4, v5, :cond_27

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_2f

    .line 69
    :cond_27
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .end local v4       #next_ch:C,
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 71
    .restart local v4       #next_ch:C,
    :cond_2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 74
    .end local v4       #next_ch:C,
    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 77
    .end local v1       #ch:C,
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Landroid/pim/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getVersion()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x2

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "4.0"

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "text"

    .prologue
    .line 56
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V40;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
