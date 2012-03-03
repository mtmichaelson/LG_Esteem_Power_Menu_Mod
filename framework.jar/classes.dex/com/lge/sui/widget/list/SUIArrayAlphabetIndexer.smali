.class public Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;
.super Ljava/lang/Object;
.source "SUIArrayAlphabetIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;
.implements Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIAlphabetIndexable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lge/sui/widget/list/SUISectionIndexer;",
        "Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

.field private mSectionLength:I

.field private mSectionMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mData:Ljava/util/List;

    .line 64
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 65
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->getLocaleUtils(Ljava/util/Locale;)Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    .line 69
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->initSectionMap()V

    .line 70
    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 74
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 75
    const-string v0, " "

    .line 80
    .local v0, firstLetter:Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 77
    .end local v0       #firstLetter:Ljava/lang/String;,
    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #firstLetter:Ljava/lang/String;,
    goto :goto_8
.end method

.method private initSectionMap()V
    .registers 10

    .prologue
    .line 84
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mData:Ljava/util/List;

    .line 86
    .local v0, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-nez v0, :cond_5

    .line 119
    :goto_4
    return-void

    .line 90
    :cond_5
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;->getSectionIndexArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, indexArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v7, v3

    if-ge v1, v7, :cond_2c

    .line 92
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 97
    :cond_2c
    const/4 v6, 0x0

    .line 98
    .local v6, targetLetter:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, position:I
    :goto_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_72

    .line 99
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/sui/widget/list/SUIAlphabetIndexable;

    invoke-interface {v7}, Lcom/lge/sui/widget/list/SUIAlphabetIndexable;->getTargetWord()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;->getSectionIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, sectionIndex:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_46
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5d

    .line 102
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6f

    .line 103
    move v5, v2

    .line 108
    :cond_5d
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 101
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 111
    .end local v2       #index:I,
    .end local v5       #sectionIndex:I,
    :cond_72
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int v1, v7, v8

    :goto_7b
    const/4 v7, -0x1

    if-le v1, v7, :cond_99

    .line 112
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_96

    .line 113
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    :cond_96
    add-int/lit8 v1, v1, -0x1

    goto :goto_7b

    .line 117
    :cond_99
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionLength:I

    goto/16 :goto_4
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 157
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataPosition(II)I
    .registers 4
    .parameter "sectionIndex"
    .parameter "dataIndex"

    .prologue
    .line 161
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupPosition(Ljava/lang/String;)I
    .registers 8
    .parameter "sectionTitle"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    const/4 v5, -0x1

    .line 165
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, position:I
    if-ne v1, v5, :cond_28

    .line 167
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 168
    .local v2, start:I
    move v0, v2

    .local v0, i:I
    :goto_12
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 169
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 170
    if-le v1, v5, :cond_30

    .line 176
    .end local v0       #i:I,
    .end local v2       #start:I,
    :cond_28
    if-ne v1, v5, :cond_2f

    .line 177
    iget v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionLength:I

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 180
    :cond_2f
    return v1

    .line 168
    .restart local v0       #i:I,
    .restart local v2       #start:I,
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public getPositionForSection(I)I
    .registers 5
    .parameter "sectionIndex"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    const/4 v2, 0x0

    .line 132
    if-gez p1, :cond_5

    move v0, v2

    .line 139
    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    :goto_4
    return v0

    .line 135
    .restart local p0       #this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    :cond_5
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 136
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 139
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4
.end method

.method public getSectionForPosition(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 143
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    const/4 v2, 0x0

    .line 144
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 145
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 146
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 147
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 148
    move v2, v0

    .line 153
    :cond_1f
    return v2

    .line 145
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
