.class public abstract Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;
.super Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;
.source "SUIIndexedListArrayAdapter.java"



# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIIndexable;",
        ">",
        "Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;"
    }
.end annotation


# instance fields
.field private mChildLayout:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 5
    .parameter "context"
    .parameter "childLayout"
    .parameter
    .parameter "indexer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/lge/sui/widget/list/SUISectionIndexer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    .local p3, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p4}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->init(Landroid/content/Context;ILjava/util/List;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/lge/sui/widget/list/SUIIndexable;Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 6
    .parameter "context"
    .parameter "childLayout"
    .parameter
    .parameter "indexer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;",
            "Lcom/lge/sui/widget/list/SUISectionIndexer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    .local p3, data:[Lcom/lge/sui/widget/list/SUIIndexable;,"[TT;"
    invoke-direct {p0, p1, p4}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 49
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->init(Landroid/content/Context;ILjava/util/List;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .parameter "context"
    .parameter "childLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    .local p3, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput p2, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mChildLayout:I

    .line 72
    iput-object p3, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lge/sui/widget/list/SUIIndexable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    .local p1, object:Lcom/lge/sui/widget/list/SUIIndexable;,"TT;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 131
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_c
    return-void
.end method

.method public abstract bindChildView(Landroid/view/View;Lcom/lge/sui/widget/list/SUIIndexable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation.end method

.method public clearChild()V
    .registers 2

    .prologue
    .line 168
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 169
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_c
    return-void
.end method

.method public getChild(II)Lcom/lge/sui/widget/list/SUIIndexable;
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->getDataPosition(II)I

    move-result v0

    .line 82
    .local v0, position:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,, "Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    check-cast p0, Lcom/lge/sui/widget/list/SUIIndexable;

    return-object p0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->getChild(II)Lcom/lge/sui/widget/list/SUIIndexable;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 91
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->getDataPosition(II)I

    move-result v0

    .line 92
    .local v0, position:I
    int-to-long v1, v0

    return-wide v1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 104
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    if-nez p4, :cond_15

    .line 105
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->getInflator()Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mChildLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, v:Landroid/view/View;
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->getChild(II)Lcom/lge/sui/widget/list/SUIIndexable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->bindChildView(Landroid/view/View;Lcom/lge/sui/widget/list/SUIIndexable;)V

    .line 110
    return-object v0

    .line 107
    .end local v0       #v:Landroid/view/View;,
    :cond_15
    move-object v0, p4

    .restart local v0       #v:Landroid/view/View;,
    goto :goto_d
.end method

.method public insertChild(Lcom/lge/sui/widget/list/SUIIndexable;I)V
    .registers 4
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    .local p1, object:Lcom/lge/sui/widget/list/SUIIndexable;,"TT;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->notifyDataSetChanged()V

    .line 149
    :cond_c
    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 180
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->refreshIndexer(Ljava/util/List;)V

    .line 182
    invoke-super {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->notifyDataSetChanged()V

    .line 183
    return-void
.end method

.method public abstract refreshIndexer(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation.end method

.method public removeChild(Lcom/lge/sui/widget/list/SUIIndexable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;,"Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter<TT;>;"
    .local p1, object:Lcom/lge/sui/widget/list/SUIIndexable;,"TT;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListArrayAdapter;->notifyDataSetChanged()V

    .line 162
    :cond_c
    return-void
.end method
