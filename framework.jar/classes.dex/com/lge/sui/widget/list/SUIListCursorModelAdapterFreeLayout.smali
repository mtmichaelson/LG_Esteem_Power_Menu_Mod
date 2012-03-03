.class public Lcom/lge/sui/widget/list/SUIListCursorModelAdapterFreeLayout;
.super Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;
.source "SUIListCursorModelAdapterFreeLayout.java"



# instance fields
.field private mChildViews:[I



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModel;I[I)V
    .registers 5
    .parameter "context"
    .parameter "model"
    .parameter "itemStyle"
    .parameter "childViews"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModel;I)V

    .line 17
    iput-object p4, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapterFreeLayout;->mChildViews:[I

    .line 18
    return-void
.end method


# virtual methods
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 22
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 23
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mItemStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, itemView:Landroid/view/View;
    new-instance v2, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;

    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapterFreeLayout;->mChildViews:[I

    invoke-direct {v2, v1, v3}, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;-><init>(Landroid/view/View;[I)V

    .line 26
    .local v2, viewHolder:Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    return-object v1
.end method
