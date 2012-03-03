.class public Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;
.super Ljava/lang/Object;
.source "SUIArrayAlphabetIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;
.implements Lcom/lge/sui/widget/list/SUISectionScrollerHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIAlphabetIndexable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lge/sui/widget/list/SUISectionIndexer;",
        "Lcom/lge/sui/widget/list/SUISectionScrollerHelper;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIndexerHelper:Lcom/lge/sui/widget/util/SUIIndexerHelper;

.field private mSectionLength:I

.field private mSectionMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSections:[Ljava/lang/String;

.field private mValidSectionMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValidSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
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
    .line 61
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mData:Ljava/util/List;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->getIndexerHelper(Ljava/util/Locale;)Lcom/lge/sui/widget/util/SUIIndexerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mIndexerHelper:Lcom/lge/sui/widget/util/SUIIndexerHelper;

    .line 67
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->initSectionMap()V

    .line 68
    return-void
.end method

.method private initSectionMap()V
    .registers 9

    .prologue
    .line 71
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v1, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mData:Ljava/util/List;

    .line 73
    .local v1, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-nez v1, :cond_5

    .line 99
    :cond_4
    return-void

    .line 77
    :cond_5
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mContext:Landroid/content/Context;

    const v7, 0x308001a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, sections:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    .line 79
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    array-length v6, v6

    iput v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionLength:I

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    iget v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionLength:I

    if-ge v2, v6, :cond_39

    .line 81
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 82
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 85
    :cond_39
    const/4 v0, 0x0

    .line 86
    .local v0, curName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, position:I
    :goto_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_63

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sui/widget/list/SUIAlphabetIndexable;

    invoke-interface {v6}, Lcom/lge/sui/widget/list/SUIAlphabetIndexable;->getTargetWord()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mIndexerHelper:Lcom/lge/sui/widget/util/SUIIndexerHelper;

    invoke-interface {v6, v0}, Lcom/lge/sui/widget/util/SUIIndexerHelper;->getSectionIndexForWord(Ljava/lang/String;)I

    move-result v4

    .line 89
    .local v4, sectionIndex:I
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 92
    .end local v4       #sectionIndex:I,
    :cond_63
    const/4 v2, 0x0

    :goto_64
    iget v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionLength:I

    if-ge v2, v6, :cond_4

    .line 93
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8a

    .line 94
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    iget-object v7, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    iget-object v7, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_64
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 137
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataPosition(II)I
    .registers 4
    .parameter "sectionIndex"
    .parameter "dataIndex"

    .prologue
    .line 141
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupPosition(I)I
    .registers 6
    .parameter "sectionIndex"

    .prologue
    .line 149
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    const/4 v0, -0x1

    .line 151
    .local v0, groupPosition:I
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 152
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v3, p1

    .line 153
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 164
    .end local v2       #title:Ljava/lang/String;,
    :cond_19
    return v0

    .line 155
    :cond_1a
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_1c
    iget v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSectionLength:I

    if-ge v1, v3, :cond_19

    .line 156
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 157
    .restart local v2       #title:Ljava/lang/String;,
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 158
    const/4 v3, -0x1

    if-gt v0, v3, :cond_19

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method public getPositionForSection(I)I
    .registers 5
    .parameter "sectionIndex"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    const/4 v2, 0x0

    .line 112
    if-gez p1, :cond_5

    move v0, v2

    .line 119
    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    :goto_4
    return v0

    .line 115
    .restart local p0       #this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    :cond_5
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 116
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 119
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .line 123
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    const/4 v2, 0x0

    .line 124
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 125
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 126
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 127
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 128
    move v2, v0

    .line 133
    :cond_1f
    return v2

    .line 125
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSectionTitles()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 108
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;,"Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
