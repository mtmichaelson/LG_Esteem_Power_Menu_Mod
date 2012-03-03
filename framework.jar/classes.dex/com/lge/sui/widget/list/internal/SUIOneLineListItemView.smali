.class public Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;
.super Lcom/lge/sui/widget/list/SUIListItemView;
.source "SUIOneLineListItemView.java"



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V
    .registers 5
    .parameter "context"
    .parameter "parent"
    .parameter "childViews"
    .parameter "mode"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/list/SUIListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "parent"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;->getOneLineTextView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    .local v0, itemView:Landroid/widget/TextView;
    iget v1, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mLeftPadding:I

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;->getPixel(I)I

    move-result v1

    iget v2, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mTopPadding:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;->getPixel(I)I

    move-result v2

    iget v3, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mRightPadding:I

    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;->getPixel(I)I

    move-result v3

    iget v4, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mBottomPadding:I

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/list/internal/SUIOneLineListItemView;->getPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 31
    return-object v0
.end method
