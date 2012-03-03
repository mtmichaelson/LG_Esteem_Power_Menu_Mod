.class public abstract Lcom/lge/sui/widget/list/internal/SUIThaiIndexerLocaleUtils;
.super Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.source "SUIThaiIndexerLocaleUtils.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;-><init>()V

    return-void
.end method

.method private static isThaiUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 29
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->THAI:Ljava/lang/Character$UnicodeBlock;

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
    .registers 8
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    .local v1, firstLetter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 11
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 12
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIThaiIndexerLocaleUtils;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 13
    const-string v1, "#"

    .line 21
    .end local v0       #codePoint:I,
    .end local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_19
    :goto_19
    if-nez v1, :cond_1d

    .line 22
    const-string v1, "?"

    .line 25
    :cond_1d
    return-object v1

    .line 14
    .restart local v0       #codePoint:I,
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_1e
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIThaiIndexerLocaleUtils;->isThaiUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 15
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 16
    :cond_29
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIThaiIndexerLocaleUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 17
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method
