.class public Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;
.super Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.source "SUIEnglishIndexerLocaleUtils.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;-><init>()V

    return-void
.end method

.method public static isEnglishUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "unicodeBlock"

    .prologue
    .line 29
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

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
    .registers 7
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    .local v1, firstLetter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 13
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 14
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 15
    const-string v1, "#"

    .line 21
    .end local v0       #codePoint:I,
    .end local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_18
    :goto_18
    if-nez v1, :cond_1c

    .line 22
    const-string v1, "?"

    .line 25
    :cond_1c
    return-object v1

    .line 16
    .restart local v0       #codePoint:I,
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_1d
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;->isEnglishUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method
