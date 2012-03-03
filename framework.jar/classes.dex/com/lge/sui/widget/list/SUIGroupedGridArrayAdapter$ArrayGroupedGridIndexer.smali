.class Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;
.super Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;
.source "SUIGroupedGridArrayAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayGroupedGridIndexer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIGroupIndexable;",
        ">",
        "Lcom/lge/sui/widget/list/SUIArrayGroupIndexer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mSectionItemMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mSectionRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "numColumns"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    .local p3, allGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, dataList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 358
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->initSectionMap(I)V

    .line 359
    return-void
.end method


# virtual methods
.method public getSectionItemSize(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 436
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->getSectionItems(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionItems(I)Ljava/util/List;
    .registers 3
    .parameter "sectionIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionItemMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,, "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getSectionRowItems(II)Ljava/util/List;
    .registers 5
    .parameter "sectionIndex"
    .parameter "rowIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionRowMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,, "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method protected initSectionMap(I)V
    .registers 15
    .parameter "numColumns"

    .prologue
    .line 396
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    .line 397
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionRowMap:Ljava/util/HashMap;

    .line 399
    const/4 v2, 0x0

    .local v2, rowPosition:I
    const/4 v5, 0x0

    .local v5, sectionIndex:I
    :goto_10
    iget v11, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionLength:I

    if-ge v5, v11, :cond_5f

    .line 400
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->getSectionItems(I)Ljava/util/List;

    move-result-object v7

    .line 401
    .local v7, sectionItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 402
    .local v6, sectionItemSize:I
    invoke-static {v6, p1}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getRowCount(II)I

    move-result v8

    .line 405
    .local v8, sectionRowCount:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v10, sectionRowPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v9, sectionRowItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v2

    .end local v2       #rowPosition:I,
    .local v3, rowPosition:I
    :goto_2c
    if-ge v0, v8, :cond_4d

    .line 410
    mul-int v1, v0, p1

    .line 411
    .local v1, rowFromIndex:I
    add-int v11, v1, p1

    if-le v11, v6, :cond_49

    move v4, v6

    .line 413
    .local v4, rowToIndex:I
    :goto_35
    invoke-interface {v7, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v2, v3, 0x1

    .end local v3       #rowPosition:I,
    .restart local v2       #rowPosition:I,
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2       #rowPosition:I,
    .restart local v3       #rowPosition:I,
    goto :goto_2c

    .line 411
    .end local v4       #rowToIndex:I,
    :cond_49
    add-int v11, v1, p1

    move v4, v11

    goto :goto_35

    .line 417
    .end local v1       #rowFromIndex:I,
    :cond_4d
    iget-object v11, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionRowMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v11, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v5, v5, 0x1

    move v2, v3

    .end local v3       #rowPosition:I,
    .restart local v2       #rowPosition:I,
    goto :goto_10

    .line 420
    .end local v0       #i:I,
    .end local v6       #sectionItemSize:I,
    .end local v7       #sectionItems:Ljava/util/List;,, "Ljava/util/List<TT;>;"
    .end local v8       #sectionRowCount:I,
    .end local v9       #sectionRowItems:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/util/List<TT;>;>;"
    .end local v10       #sectionRowPositions:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5f
    return-void
.end method

.method protected initSections()V
    .registers 7

    .prologue
    .line 362
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer<TT;>;"
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 388
    :goto_4
    return-void

    .line 366
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionItemMap:Ljava/util/ArrayList;

    .line 368
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 369
    .local v3, sectionSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v3, :cond_22

    .line 370
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionItemMap:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 373
    :cond_22
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 374
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_4f

    .line 375
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sui/widget/list/SUIGroupIndexable;

    invoke-interface {v4}, Lcom/lge/sui/widget/list/SUIGroupIndexable;->getTargetGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->findSectionIndex(Ljava/lang/String;)I

    move-result v2

    .line 376
    .local v2, sectionIndex:I
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionItemMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 380
    .end local v2       #sectionIndex:I,
    :cond_4f
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    :goto_58
    const/4 v4, -0x1

    if-le v1, v4, :cond_76

    .line 381
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionItemMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_73

    .line 382
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->mSectionItemMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_73
    add-int/lit8 v1, v1, -0x1

    goto :goto_58

    .line 387
    :cond_76
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionLength:I

    goto :goto_4
.end method
