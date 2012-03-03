.class public Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
.super Ljava/lang/Object;
.source "SUIInlineCommandListAdapter.java"


# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;,
        Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;
    }
.end annotation


# static fields
.field protected static final CHECKBOX_LEFT_PADDING_DIP:I = 0x4

.field protected static final CHECKBOX_RIGHT_PADDING_DIP:I = 0xa



# instance fields
.field protected final mAdapter:Landroid/widget/ListAdapter;

.field protected mButtonImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mButtonText:Ljava/lang/CharSequence;

.field protected mCmdMode:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mInlineCommandListener:Lcom/lge/sui/widget/list/SUIInlineCommandListListener;

.field protected final mIsFilterable:Z

.field protected final mScale:F

.field private mViewBinder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;



# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "cmdMode"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 147
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mIsFilterable:Z

    .line 148
    iput p3, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mCmdMode:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mScale:F

    .line 150
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;II)V
    .registers 6
    .parameter "context"
    .parameter "adapter"
    .parameter "cmdMode"
    .parameter "btnImgResId"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "cmdMode"
    .parameter "btnImgDrawable"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V

    .line 161
    iput-object p4, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/CharSequence;)V
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "cmdMode"
    .parameter "btnName"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V

    .line 167
    iput-object p4, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonText:Ljava/lang/CharSequence;

    .line 168
    return-void
.end method

.method public static createImageButtonAdapter(Landroid/content/Context;Landroid/widget/ListAdapter;I)Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "btnImgResId"

    .prologue
    .line 197
    new-instance v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;II)V

    .line 199
    .local v0, cmdAdapter:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
    return-object v0
.end method

.method public static createImageButtonAdapter(Landroid/content/Context;Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "btnImgDrawable"

    .prologue
    .line 214
    new-instance v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V

    .line 216
    .local v0, cmdAdapter:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
    return-object v0
.end method

.method public static createTextButtonAdapter(Landroid/content/Context;Landroid/widget/ListAdapter;Ljava/lang/CharSequence;)Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "btnName"

    .prologue
    .line 180
    new-instance v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/CharSequence;)V

    .line 182
    .local v0, cmdAdapter:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;
    return-object v0
.end method

.method private getContentLayoutParam()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    .prologue
    .line 357
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    const/4 v1, 0x0

    const v2, 0x30a003b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 362
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 364
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 246
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected dip2Pixel(I)I
    .registers 4
    .parameter "dip"

    .prologue
    .line 368
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    int-to-float v0, p1

    iget v1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    .line 265
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 268
    :cond_b
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 421
    iget-object p0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .end local p0       
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 423
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
    .line 275
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mCmdMode:I

    move v7, v0

    .line 301
    .local v7, cmdMode:I
    if-nez p2, :cond_b4

    .line 302
    const/4 v14, 0x5

    if-ne v7, v14, :cond_9a

    const v14, 0x303000e

    move v11, v14

    .line 306
    .local v11, layoutResId:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const/4 v15, 0x0

    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p3

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;

    .line 309
    .local v8, containerView:Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;
    const v14, 0x30a003b

    invoke-virtual {v8, v14}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 311
    .local v6, cmdButtonView:Landroid/view/View;
    if-eqz v6, :cond_56

    .line 312
    const/4 v14, 0x5

    if-ne v7, v14, :cond_a0

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonText:Ljava/lang/CharSequence;

    move-object v14, v0

    if-eqz v14, :cond_3e

    .line 314
    move-object v0, v6

    check-cast v0, Lcom/lge/sui/widget/control/SUIButton;

    move-object v7, v0

    .end local v7       #cmdMode:I,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonText:Ljava/lang/CharSequence;

    move-object v14, v0

    invoke-virtual {v7, v14}, Lcom/lge/sui/widget/control/SUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_3e
    :goto_3e
    new-instance v14, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;

    invoke-virtual/range {p0 .. p1}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->getItemId(I)J

    move-result-wide v15

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;-><init>(Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;IJ)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 327
    .local v9, contentView:Landroid/view/View;
    const v14, 0x1020002

    invoke-virtual {v9, v14}, Landroid/view/View;->setId(I)V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->getContentLayoutParam()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v8, v9, v14}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 331
    .local v12, tagInfo:Ljava/lang/Object;
    invoke-virtual {v8, v12}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->setTag(Ljava/lang/Object;)V

    .line 340
    .end local v11       #layoutResId:I,
    .end local v12       #tagInfo:Ljava/lang/Object;,
    :goto_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mViewBinder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;

    move-object v5, v0

    .line 343
    .local v5, binder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;
    if-eqz v5, :cond_99

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .line 345
    .local v10, data:Ljava/lang/Object;
    if-nez v10, :cond_dd

    const-string v14, ""

    move-object v13, v14

    .line 346
    .local v13, text:Ljava/lang/String;
    :goto_92
    if-nez v13, :cond_96

    .line 347
    const-string v13, ""

    .line 349
    :cond_96
    invoke-interface {v5, v6, v10, v13}, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 353
    .end local v10       #data:Ljava/lang/Object;,
    .end local v13       #text:Ljava/lang/String;,
    :cond_99
    return-object v8

    .line 302
    .end local v5       #binder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;,
    .end local v6       #cmdButtonView:Landroid/view/View;,
    .end local v8       #containerView:Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;,
    .end local v9       #contentView:Landroid/view/View;,
    .restart local v7       #cmdMode:I,
    :cond_9a
    const v14, 0x303000f

    move v11, v14

    goto/16 :goto_e

    .line 317
    .restart local v6       #cmdButtonView:Landroid/view/View;,
    .restart local v8       #containerView:Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;,
    .restart local v11       #layoutResId:I,
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonImageDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    if-eqz v14, :cond_3e

    .line 318
    move-object v0, v6

    check-cast v0, Lcom/lge/sui/widget/control/SUIImageButton;

    move-object v7, v0

    .end local v7       #cmdMode:I,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mButtonImageDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    invoke-virtual {v7, v14}, Lcom/lge/sui/widget/control/SUIImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    .line 333
    .end local v6       #cmdButtonView:Landroid/view/View;,
    .end local v8       #containerView:Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;,
    .end local v11       #layoutResId:I,
    .restart local v7       #cmdMode:I,
    :cond_b4
    move-object/from16 v0, p2

    check-cast v0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;

    move-object v8, v0

    .line 334
    .restart local v8       #containerView:Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;,
    const v14, 0x30a003b

    invoke-virtual {v8, v14}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 335
    .restart local v6       #cmdButtonView:Landroid/view/View;,
    const v14, 0x1020002

    invoke-virtual {v8, v14}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 336
    .restart local v9       #contentView:Landroid/view/View;,
    invoke-virtual {v8}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_7a

    .line 345
    .end local v7       #cmdMode:I,
    .restart local v5       #binder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;,
    .restart local v10       #data:Ljava/lang/Object;,
    :cond_dd
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    goto :goto_92
.end method

.method public getViewBinder()Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mViewBinder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 376
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 378
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 386
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 388
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

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
    .line 253
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 254
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 256
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mInlineCommandListener:Lcom/lge/sui/widget/list/SUIInlineCommandListListener;

    if-eqz v1, :cond_15

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;

    .line 432
    .local v0, itemInfo:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;
    if-eqz v0, :cond_15

    .line 433
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mInlineCommandListener:Lcom/lge/sui/widget/list/SUIInlineCommandListListener;

    iget v2, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;->position:I

    iget-wide v3, v0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;->id:J

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/lge/sui/widget/list/SUIInlineCommandListListener;->onCommand(Landroid/view/View;IJ)V

    .line 437
    .end local v0       #itemInfo:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ItemInfo;,
    :cond_15
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 403
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 405
    :cond_9
    return-void
.end method

.method public setInlineCommandListener(Lcom/lge/sui/widget/list/SUIInlineCommandListListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mInlineCommandListener:Lcom/lge/sui/widget/list/SUIInlineCommandListListener;

    .line 229
    return-void
.end method

.method public setViewBinder(Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;)V
    .registers 2
    .parameter "viewBinder"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mViewBinder:Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter$ViewBinder;

    .line 505
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 412
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIInlineCommandListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 414
    :cond_9
    return-void
.end method
