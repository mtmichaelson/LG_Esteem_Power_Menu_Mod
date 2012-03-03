.class public Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;
.super Ljava/lang/Object;
.source "SUICursorAlphabetIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;
.implements Lcom/lge/sui/widget/list/SUISectionScrollerHelper;


# instance fields
.field protected mColumnIndex:I

.field private mContext:Landroid/content/Context;

.field protected mDataCursor:Landroid/database/Cursor;

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
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "sortedColumnIndex"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSections:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 79
    iput p3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mColumnIndex:I

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->getIndexerHelper(Ljava/util/Locale;)Lcom/lge/sui/widget/util/SUIIndexerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mIndexerHelper:Lcom/lge/sui/widget/util/SUIIndexerHelper;

    .line 83
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->initSectionMap()V

    .line 84
    return-void
.end method

.method private initSectionMap()V
    .registers 10

    .prologue
    .line 87
    iget-object v1, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 89
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_5

    .line 120
    :cond_4
    return-void

    .line 93
    :cond_5
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mContext:Landroid/content/Context;

    const v8, 0x308001a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, sections:Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    .line 95
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    array-length v7, v7

    iput v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionLength:I

    .line 96
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    iget v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionLength:I

    if-ge v2, v7, :cond_39

    .line 97
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 98
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 101
    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 103
    .local v4, savedCursorPos:I
    const/4 v0, 0x0

    .line 104
    .local v0, curName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, position:I
    :goto_3f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_66

    .line 105
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 106
    iget v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mIndexerHelper:Lcom/lge/sui/widget/util/SUIIndexerHelper;

    invoke-interface {v7, v0}, Lcom/lge/sui/widget/util/SUIIndexerHelper;->getSectionIndexForWord(Ljava/lang/String;)I

    move-result v5

    .line 108
    .local v5, sectionIndex:I
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 111
    .end local v5       #sectionIndex:I,
    :cond_66
    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    const/4 v2, 0x0

    :goto_6a
    iget v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionLength:I

    if-ge v2, v7, :cond_4

    .line 114
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_90

    .line 115
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSections:Ljava/util/List;

    iget-object v8, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v7, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    iget-object v8, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
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
    .line 162
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
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
    .line 170
    const/4 v0, -0x1

    .line 172
    .local v0, groupPosition:I
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 173
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v3, p1

    .line 174
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 185
    .end local v2       #title:Ljava/lang/String;,
    :cond_19
    return v0

    .line 176
    :cond_1a
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_1c
    iget v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionLength:I

    if-ge v1, v3, :cond_19

    .line 177
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 178
    .restart local v2       #title:Ljava/lang/String;,
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 179
    const/4 v3, -0x1

    if-gt v0, v3, :cond_19

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method public getPositionForSection(I)I
    .registers 5
    .parameter "sectionIndex"

    .prologue
    const/4 v2, 0x0

    .line 133
    if-gez p1, :cond_5

    move v0, v2

    .line 140
    .end local p0       
    :goto_4
    return v0

    .line 136
    .restart local p0       
    :cond_5
    iget v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionLength:I

    if-lt p1, v0, :cond_e

    .line 137
    iget v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSectionLength:I

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 140
    :cond_e
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
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
    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 146
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 147
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 148
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 149
    move v2, v0

    .line 154
    :cond_1f
    return v2

    .line 146
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSectionTitles()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUICursorAlphabetIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
