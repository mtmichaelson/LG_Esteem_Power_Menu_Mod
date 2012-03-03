.class public Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;
.super Ljava/lang/Object;
.source "SUICursorAlphabetIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;
.implements Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field private mContext:Landroid/content/Context;

.field protected mDataCursor:Landroid/database/Cursor;

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
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "sortedColumnIndex"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 78
    iput p3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mColumnIndex:I

    .line 80
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 81
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->getLocaleUtils(Ljava/util/Locale;)Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    .line 85
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->initSectionMap()V

    .line 86
    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "letter1"
    .parameter "letter2"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initSectionMap()V
    .registers 11

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 95
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_5

    .line 133
    :goto_4
    return-void

    .line 99
    :cond_5
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    iget-object v9, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mContext:Landroid/content/Context;

    invoke-interface {v8, v9}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;->getSectionIndexArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, indexArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v8, v3

    if-ge v1, v8, :cond_2c

    .line 101
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 106
    :cond_2c
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 108
    .local v5, savedCursorPos:I
    const/4 v7, 0x0

    .line 109
    .local v7, targetLetter:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, position:I
    :goto_32
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_75

    .line 110
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 111
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    iget v9, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;->getSectionIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    const/4 v6, 0x0

    .line 113
    .local v6, sectionIndex:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_49
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_60

    .line 114
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_72

    .line 115
    move v6, v2

    .line 120
    :cond_60
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 113
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 123
    .end local v2       #index:I,
    .end local v6       #sectionIndex:I,
    :cond_75
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int v1, v8, v9

    :goto_81
    const/4 v8, -0x1

    if-le v1, v8, :cond_9f

    .line 126
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_9c

    .line 127
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_9c
    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    .line 131
    :cond_9f
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionLength:I

    goto/16 :goto_4
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
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
    .line 175
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
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
    const/4 v5, -0x1

    .line 179
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 180
    .local v1, position:I
    if-ne v1, v5, :cond_28

    .line 181
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 182
    .local v2, start:I
    move v0, v2

    .local v0, i:I
    :goto_12
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 183
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 184
    if-le v1, v5, :cond_30

    .line 190
    .end local v0       #i:I,
    .end local v2       #start:I,
    :cond_28
    if-ne v1, v5, :cond_2f

    .line 191
    iget v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionLength:I

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 194
    :cond_2f
    return v1

    .line 182
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
    const/4 v2, 0x0

    .line 146
    if-gez p1, :cond_5

    move v0, v2

    .line 153
    .end local p0       
    :goto_4
    return v0

    .line 149
    .restart local p0       
    :cond_5
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 150
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 153
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
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
    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 159
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 160
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 161
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 162
    move v2, v0

    .line 167
    :cond_1f
    return v2

    .line 159
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
