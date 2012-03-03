.class public Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;
.super Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;
.source "SUIIndexedListTableModelAdapter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;
    }
.end annotation


# instance fields
.field protected mTableAdapter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)V
    .registers 6
    .parameter "context"
    .parameter "tableAdapter"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;

    invoke-virtual {p2}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->getModel()Lcom/lge/sui/widget/list/SUIListTableModel;

    move-result-object v1

    const-string v2, "TEXT1"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 92
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->mTableAdapter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModelAdapter;Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 4
    .parameter "context"
    .parameter "tableAdapter"
    .parameter "indexer"

    .prologue
    .line 110
    invoke-direct {p0, p1, p3}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 111
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->mTableAdapter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    .line 112
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->getDataPosition(II)I

    move-result v0

    .line 119
    .local v0, position:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->mTableAdapter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 126
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->mTableAdapter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    .line 136
    .local v2, tableAdapter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;
    invoke-super {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, context:Landroid/content/Context;
    if-nez p4, :cond_18

    .line 140
    invoke-virtual {v2}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->getViewFactory()Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    move-result-object v4

    invoke-virtual {v2, v0, v4, p5}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->newView(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListItemViewFactory;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 146
    .local v3, v:Landroid/view/View;
    :goto_10
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->getDataPosition(II)I

    move-result v1

    .line 147
    .local v1, position:I
    invoke-virtual {v2, v0, v1, v3}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->bindView(Landroid/content/Context;ILandroid/view/View;)V

    .line 148
    return-object v3

    .line 143
    .end local v1       #position:I,
    .end local v3       #v:Landroid/view/View;,
    :cond_18
    move-object v3, p4

    .restart local v3       #v:Landroid/view/View;,
    goto :goto_10
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;->getDataCount(I)I

    move-result v0

    return v0
.end method
