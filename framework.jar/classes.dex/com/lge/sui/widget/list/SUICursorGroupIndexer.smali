.class public Lcom/lge/sui/widget/list/SUICursorGroupIndexer;
.super Ljava/lang/Object;
.source "SUICursorGroupIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;


# instance fields
.field private mAllGroupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mDataCursor:Landroid/database/Cursor;

.field protected mGroupColumnIndex:I

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



# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/database/Cursor;I)V
    .registers 7
    .parameter "context"
    .parameter
    .parameter "cursor"
    .parameter "groupColumnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, allGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mAllGroupNames:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mAllGroupNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    .line 78
    iput-object p3, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 79
    iput p4, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mGroupColumnIndex:I

    .line 81
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->initSectionMap()V

    .line 82
    return-void
.end method

.method private findSectionIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "group"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initSectionMap()V
    .registers 9

    .prologue
    .line 85
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    if-nez v6, :cond_5

    .line 115
    :goto_4
    return-void

    .line 89
    :cond_5
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 90
    .local v5, sectionSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v5, :cond_1b

    .line 91
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 94
    :cond_1b
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 96
    .local v3, savedCursorPos:I
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 97
    .local v0, dataSize:I
    const/4 v2, 0x0

    .local v2, position:I
    :goto_28
    if-ge v2, v0, :cond_4d

    .line 98
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mGroupColumnIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->findSectionIndex(Ljava/lang/String;)I

    move-result v4

    .line 100
    .local v4, sectionIndex:I
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 103
    .end local v4       #sectionIndex:I,
    :cond_4d
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 106
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v1, v6, v7

    :goto_5b
    const/4 v6, -0x1

    if-le v1, v6, :cond_79

    .line 107
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_76

    .line 108
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    :cond_76
    add-int/lit8 v1, v1, -0x1

    goto :goto_5b

    .line 113
    :cond_79
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionLength:I

    goto :goto_4
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

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
    .line 166
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

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

.method public getPositionForSection(I)I
    .registers 5
    .parameter "sectionIndex"

    .prologue
    const/4 v2, 0x0

    .line 132
    if-gez p1, :cond_5

    move v0, v2

    .line 144
    .end local p0       
    :goto_4
    return v0

    .line 140
    .restart local p0       
    :cond_5
    iget v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionLength:I

    if-lt p1, v0, :cond_e

    .line 141
    iget v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionLength:I

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 144
    :cond_e
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

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
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 150
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v3, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionLength:I

    if-ge v0, v3, :cond_1b

    .line 151
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 152
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    .line 153
    move v2, v0

    .line 158
    :cond_1b
    return v2

    .line 150
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized refresh(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 177
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mAllGroupNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->mSections:Ljava/util/ArrayList;

    .line 180
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->initSectionMap()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 181
    monitor-exit p0

    return-void

    .line 176
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
