.class public Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;
.super Lcom/lge/sui/widget/list/SUIListItemView;
.source "SUIExtraInfoIconOneLineListItemView.java"



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V
    .registers 5
    .parameter "context"
    .parameter "parent"
    .parameter "childViews"
    .parameter "mode"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/list/SUIListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "parent"

    .prologue
    const v9, 0x30a0037

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getIconView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 43
    .local v0, iconView:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 45
    .local v3, iv:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mIconWidth:I

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v5

    iget v6, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mIconHeight:I

    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v4, ivParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getOneLineTextViewWithExtra(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, itemView:Landroid/view/View;
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v5

    invoke-virtual {v2, v5, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, itemParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget v5, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mLeftPadding:I

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v5

    iget v6, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mTopPadding:I

    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v6

    iget v7, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mRightPadding:I

    invoke-virtual {p0, v7}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v7

    iget v8, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mBottomPadding:I

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/list/internal/SUIExtraInfoIconOneLineListItemView;->getPixel(I)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 64
    return-object v0
.end method
