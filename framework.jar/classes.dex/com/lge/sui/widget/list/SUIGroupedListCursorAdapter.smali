.class public Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;
.super Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;
.source "SUIGroupedListCursorAdapter.java"



# instance fields
.field protected mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

.field protected mSortedColumnIndex:I



# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;I)V
    .registers 7
    .parameter "context"
    .parameter
    .parameter "cursorAdapter"
    .parameter "groupColumnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, allGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 57
    new-instance v0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;

    invoke-virtual {p3}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/database/Cursor;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;->setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 59
    iput-object p3, p0, Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    .line 60
    iput p4, p0, Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;->mSortedColumnIndex:I

    .line 61
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 65
    return-void
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    invoke-virtual {v0, p1, p2, p4}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public refreshIndexer(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIGroupedListCursorAdapter;->getIndexer()Lcom/lge/sui/widget/list/SUISectionIndexer;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;

    .line 79
    .local v0, indexer:Lcom/lge/sui/widget/list/SUICursorGroupIndexer;
    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/SUICursorGroupIndexer;->refresh(Landroid/database/Cursor;)V

    .line 80
    return-void
.end method
