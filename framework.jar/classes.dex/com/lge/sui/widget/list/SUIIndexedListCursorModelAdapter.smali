.class public Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;
.super Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;
.source "SUIIndexedListCursorModelAdapter.java"



# instance fields
.field protected mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

.field protected mSortedColumnIndex:I



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;I)V
    .registers 6
    .parameter "context"
    .parameter "cursorAdapter"
    .parameter "sortedColumnIndex"

    .prologue
    .line 83
    invoke-virtual {p2}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 84
    new-instance v0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;

    invoke-virtual {p2}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 86
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    .line 87
    iput p3, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->mSortedColumnIndex:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 5
    .parameter "context"
    .parameter "cursorAdapter"
    .parameter "indexer"

    .prologue
    .line 105
    invoke-virtual {p2}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 106
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    .line 107
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
    .line 111
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 112
    return-void
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->mCursorAdapter:Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;

    invoke-virtual {v0, p1, p2, p4}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public refreshIndexer(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 120
    new-instance v0, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->mSortedColumnIndex:I

    invoke-direct {v0, v1, p1, v2}, Lcom/lge/sui/widget/list/SUICursorAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 122
    .local v0, indexer:Lcom/lge/sui/widget/list/SUISectionIndexer;
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorModelAdapter;->setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 123
    return-void
.end method
