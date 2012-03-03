.class public Lcom/lge/sui/widget/list/SUIListTableModelAdapterFreeLayout;
.super Lcom/lge/sui/widget/list/SUIListTableModelAdapter;
.source "SUIListTableModelAdapterFreeLayout.java"



# instance fields
.field private mChildViews:[I



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;I[I)V
    .registers 5
    .parameter "context"
    .parameter "model"
    .parameter "itemStyle"
    .parameter "childViews"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;I)V

    .line 17
    iput-object p4, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapterFreeLayout;->mChildViews:[I

    .line 18
    return-void
.end method


# virtual methods
.method public newView(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListItemViewFactory;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "viewFactory"
    .parameter "parent"

    .prologue
    .line 23
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 24
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mItemStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, itemView:Landroid/view/View;
    new-instance v2, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;

    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapterFreeLayout;->mChildViews:[I

    invoke-direct {v2, v1, v3}, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;-><init>(Landroid/view/View;[I)V

    .line 27
    .local v2, viewHolder:Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    return-object v1
.end method
