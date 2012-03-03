.class public abstract Lcom/lge/sui/widget/list/item/SUIListItemView;
.super Ljava/lang/Object;
.source "SUIListItemView.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIListItemConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;
    }
.end annotation


# static fields
.field protected static final CHECKBOX_TEXT_GAP_DIP:I = 0xa

.field protected static final CHOICELIST_LEFT_PADDING_DIP:I = 0x4

.field protected static final CHOICELIST_RIGHT_PADDING_DIP:I = 0xa

.field protected static final DEFAULT_BOTTOM_PADDING_DIP:I = 0x0

.field protected static final DEFAULT_ICON_HEIGHT_DIP:I = 0x20

.field protected static final DEFAULT_ICON_WIDTH_DIP:I = 0x20

.field protected static final DEFAULT_LEFT_PADDING_DIP:I = 0xa

.field protected static final DEFAULT_RIGHT_PADDING_DIP:I = 0xa

.field protected static final DEFAULT_TOP_PADDING_DIP:I = 0x0

.field protected static final ICON_TEXT_GAP_DIP:I = 0xa



# instance fields
.field protected mBottomPadding:I

.field protected mChildViews:[I

.field protected mContext:Landroid/content/Context;

.field protected mIconHeight:I

.field protected mIconWidth:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLeftPadding:I

.field protected mMode:I

.field protected mRightPadding:I

.field protected mScale:F

.field protected mTopPadding:I

.field protected mView:Landroid/view/View;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;[I)V
    .registers 5
    .parameter "context"
    .parameter "parent"
    .parameter "childViews"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/sui/widget/list/item/SUIListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V
    .registers 6
    .parameter "context"
    .parameter "parent"
    .parameter "childViews"
    .parameter "mode"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/sui/widget/list/item/SUIListItemView;->init(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 66
    iput-object p3, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mChildViews:[I

    .line 67
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/sui/widget/list/item/SUIListItemView;->setupView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, p3}, Lcom/lge/sui/widget/list/item/SUIListItemView;->createViewHolder(Landroid/view/View;[I)V

    .line 69
    return-void
.end method

.method private getInlineCommandView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 10
    .parameter "parent"
    .parameter "itemView"
    .parameter "mode"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 168
    const/4 v2, 0x5

    if-ne p3, v2, :cond_30

    .line 169
    iget-object v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x303000e

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 176
    .local v0, commandView:Landroid/widget/RelativeLayout;
    :goto_10
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x30a003b

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mLeftPadding:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getPixel(I)I

    move-result v2

    invoke-virtual {p2, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    return-object v0

    .line 172
    .end local v0       #commandView:Landroid/widget/RelativeLayout;,
    .end local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_30
    iget-object v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x303000f

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .restart local v0       #commandView:Landroid/widget/RelativeLayout;,
    goto :goto_10
.end method

.method private getLeftCheckableView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "parent"
    .parameter "itemView"
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 111
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getCheckboxView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;

    .line 112
    .local v0, checkableView:Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;
    invoke-virtual {v0, p3}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->setMode(I)V

    .line 113
    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v0}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->getCheckableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .local v1, checkbox:Landroid/widget/ImageView;
    if-eq p3, v6, :cond_19

    const/4 v4, 0x2

    if-ne p3, v4, :cond_42

    .line 116
    :cond_19
    const v4, 0x3020023

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :goto_1f
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v2, lp1:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getPixel(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v3, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const v4, 0x30a001f

    invoke-virtual {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-object v0

    .line 118
    .end local v2       #lp1:Landroid/widget/RelativeLayout$LayoutParams;,
    .end local v3       #lp2:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_42
    const v4, 0x3020013

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method

.method private getRightCheckableView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 10
    .parameter "parent"
    .parameter "itemView"
    .parameter "mode"

    .prologue
    const/4 v5, -0x2

    .line 136
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getCheckboxView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;

    .line 137
    .local v0, checkableView:Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;
    invoke-virtual {v0, p3}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->setMode(I)V

    .line 138
    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v0}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->getCheckableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 140
    .local v1, checkbox:Landroid/widget/ImageView;
    const/4 v4, 0x1

    if-eq p3, v4, :cond_19

    const/4 v4, 0x2

    if-ne p3, v4, :cond_4e

    .line 141
    :cond_19
    const v4, 0x3020023

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :goto_1f
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v2, lp1:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getPixel(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v3, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    const v5, 0x30a001f

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-object v0

    .line 143
    .end local v2       #lp1:Landroid/widget/RelativeLayout$LayoutParams;,
    .end local v3       #lp2:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_4e
    const v4, 0x3020013

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method

.method private init(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 8
    .parameter "context"
    .parameter "parent"
    .parameter "mode"

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 72
    iput-object p1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mContext:Landroid/content/Context;

    .line 73
    iput p3, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mMode:I

    .line 74
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mScale:F

    .line 78
    iput v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mLeftPadding:I

    .line 79
    iput v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mTopPadding:I

    .line 80
    iput v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mRightPadding:I

    .line 81
    iput v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mBottomPadding:I

    .line 82
    iput v3, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mIconWidth:I

    .line 83
    iput v3, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mIconHeight:I

    .line 84
    return-void
.end method

.method private setupView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "parent"
    .parameter "mode"

    .prologue
    .line 88
    packed-switch p3, :pswitch_data_2e

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, errMsg:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v0       #errMsg:Ljava/lang/String;,
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    move-object v2, v1

    .line 103
    :goto_12
    return-object v2

    .line 94
    .end local v1       #v:Landroid/view/View;,
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .restart local v1       #v:Landroid/view/View;,
    invoke-direct {p0, p2, v1, p3}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getLeftCheckableView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    .line 98
    .end local v1       #v:Landroid/view/View;,
    :pswitch_1c
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    .restart local v1       #v:Landroid/view/View;,
    invoke-direct {p0, p2, v1, p3}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getRightCheckableView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    .line 102
    .end local v1       #v:Landroid/view/View;,
    :pswitch_25
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    .restart local v1       #v:Landroid/view/View;,
    invoke-direct {p0, p2, v1, p3}, Lcom/lge/sui/widget/list/item/SUIListItemView;->getInlineCommandView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    .line 88
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_13
        :pswitch_1c
        :pswitch_13
        :pswitch_1c
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method protected createViewHolder(Landroid/view/View;[I)V
    .registers 5
    .parameter "v"
    .parameter "childViews"

    .prologue
    .line 256
    new-instance v0, Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;

    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mView:Landroid/view/View;

    invoke-direct {v0, v1, p2}, Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;-><init>(Landroid/view/View;[I)V

    .line 257
    .local v0, viewHolder:Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method protected getCheckboxView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x3030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public getChildViews()[I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mChildViews:[I

    return-object v0
.end method

.method protected getIconView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x303000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected abstract getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mMode:I

    return v0
.end method

.method protected getOneLineTextView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x3030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method protected getOneLineTextViewWithExtra(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x303000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method protected getPixel(I)I
    .registers 4
    .parameter "dip"

    .prologue
    .line 250
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    int-to-float v0, p1

    iget v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected getThreeLineTextView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x3030019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method protected getTwoLineTextView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x303001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method protected getTwoLineTextViewWithExtra(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x303000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 205
    iput p1, p0, Lcom/lge/sui/widget/list/item/SUIListItemView;->mMode:I

    .line 206
    return-void
.end method
