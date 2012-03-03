.class public Lcom/lge/sui/widget/list/internal/SUISimplifiedChineseIndexerLocaleUtils;
.super Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;
.source "SUISimplifiedChineseIndexerLocaleUtils.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUIBaseIndexerLocaleUtils;-><init>()V

    return-void
.end method

.method private static getSectionIndexForCJK(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "word"

    .prologue
    .line 32
    invoke-static {}, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin;->getInstance()Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 33
    .local v2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;>;"
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2e

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;

    .line 35
    .local v1, token:Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;
    const/4 v3, 0x2

    iget v4, v1, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;->type:I

    if-ne v3, v4, :cond_14

    .line 36
    iget-object v3, v1, Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 41
    .end local v0       #i$:Ljava/util/Iterator;,
    .end local v1       #token:Lcom/lge/sui/widget/list/internal/SUIHanziToPinyin$Token;,
    :goto_2d
    return-object v3

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2
    .parameter "block"

    .prologue
    .line 45
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_24

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public getSectionIndex(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    .local v1, firstLetter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 14
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 15
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUISimplifiedChineseIndexerLocaleUtils;->isNumber(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 16
    const-string v1, "#"

    .line 24
    .end local v0       #codePoint:I,
    .end local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_19
    :goto_19
    if-nez v1, :cond_1d

    .line 25
    const-string v1, "?"

    .line 28
    :cond_1d
    return-object v1

    .line 17
    .restart local v0       #codePoint:I,
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;,
    :cond_1e
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUISimplifiedChineseIndexerLocaleUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 18
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/sui/widget/list/internal/SUISimplifiedChineseIndexerLocaleUtils;->getSectionIndexForCJK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 19
    :cond_2d
    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUISimplifiedChineseIndexerLocaleUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 20
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method
