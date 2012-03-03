.class public Lcom/lge/sui/widget/list/SUIMovableListAdapter;
.super Ljava/lang/Object;
.source "SUIMovableListAdapter.java"


# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mIsFilterable:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 49
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mIsFilterable:Z

    .line 50
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 198
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    .line 81
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 84
    :cond_b
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 68
    iget-object p0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .end local p0       
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 70
    :goto_c
    return-object v0

    .restart local p0       
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x1020002

    const/4 v7, -0x2

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_3c

    .line 120
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x3030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 122
    const v4, 0x30a003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 124
    .local v1, itemView:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    .line 126
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    const v5, 0x30a003d

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    const/16 v4, 0x9

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .end local v1       #itemView:Landroid/view/ViewGroup;,
    .end local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;,
    :goto_3b
    return-object v3

    .line 134
    .end local v0       #contentView:Landroid/view/View;,
    :cond_3c
    move-object v3, p2

    .line 135
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .restart local v0       #contentView:Landroid/view/View;,
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v0, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_3b
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 150
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 152
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 162
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 164
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 183
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 185
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 210
    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    :cond_9
    return-void
.end method
