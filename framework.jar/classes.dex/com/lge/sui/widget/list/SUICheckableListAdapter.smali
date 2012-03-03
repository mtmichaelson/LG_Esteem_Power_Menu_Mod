.class public Lcom/lge/sui/widget/list/SUICheckableListAdapter;
.super Ljava/lang/Object;
.source "SUICheckableListAdapter.java"


# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field protected static final CHECKBOX_LEFT_PADDING_DIP:I = 0x4

.field protected static final CHECKBOX_RIGHT_PADDING_DIP:I = 0xa



# instance fields
.field protected final mAdapter:Landroid/widget/ListAdapter;

.field protected mChoiceMode:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected final mIsFilterable:Z

.field protected final mScale:F



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V
    .registers 5
    .parameter "context"
    .parameter "adapter"
    .parameter "choiceMode"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 145
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mIsFilterable:Z

    .line 146
    iput p3, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mChoiceMode:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mScale:F

    .line 148
    return-void
.end method

.method private getCheckboxLayoutParam(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4
    .parameter "isLeftSide"

    .prologue
    const/4 v1, -0x2

    .line 277
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    if-eqz p1, :cond_15

    .line 283
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->dip2Pixel(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 289
    :goto_14
    return-object v0

    .line 285
    :cond_15
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->dip2Pixel(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_14
.end method

.method private getContentLayoutParam(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6
    .parameter "isLeftSide"

    .prologue
    const v3, 0x30a001f

    .line 293
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    if-eqz p1, :cond_16

    .line 298
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    :goto_15
    return-object v0

    .line 300
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 301
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_15
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 162
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 165
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
    .line 308
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    int-to-float v0, p1

    iget v1, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    .line 184
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 187
    :cond_b
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 361
    iget-object p0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .end local p0       
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 363
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
    .line 194
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x1020002

    .line 216
    iget v2, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mChoiceMode:I

    .line 218
    .local v2, choiceMode:I
    if-nez p2, :cond_58

    .line 223
    packed-switch v2, :pswitch_data_6e

    .line 245
    const v6, 0x3030005

    .line 246
    .local v6, layoutResId:I
    const/4 v5, 0x1

    .line 247
    .local v5, isLeftSide:Z
    const/4 v7, 0x1

    .line 251
    .local v7, mode:I
    :goto_f
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;

    .line 253
    .local v3, containerView:Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;
    invoke-virtual {v3, v7}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->setMode(I)V

    .line 255
    if-nez v5, :cond_28

    .line 256
    invoke-virtual {v3}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->getCheckableView()Landroid/view/View;

    move-result-object v1

    .line 257
    .local v1, checkbox:Landroid/view/View;
    invoke-direct {p0, v5}, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->getCheckboxLayoutParam(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .end local v1       #checkbox:Landroid/view/View;,
    :cond_28
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 261
    .local v4, contentView:Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/View;->setId(I)V

    .line 262
    invoke-direct {p0, v5}, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->getContentLayoutParam(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 265
    .local v8, tagInfo:Ljava/lang/Object;
    invoke-virtual {v3, v8}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 273
    .end local v5       #isLeftSide:Z,
    .end local v6       #layoutResId:I,
    .end local v7       #mode:I,
    .end local v8       #tagInfo:Ljava/lang/Object;,
    :goto_3f
    return-object v3

    .line 225
    .end local v3       #containerView:Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;,
    .end local v4       #contentView:Landroid/view/View;,
    :pswitch_40
    const v6, 0x3030005

    .line 226
    .restart local v6       #layoutResId:I,
    const/4 v5, 0x1

    .line 227
    .restart local v5       #isLeftSide:Z,
    const/4 v7, 0x1

    .line 228
    .restart local v7       #mode:I,
    goto :goto_f

    .line 230
    .end local v5       #isLeftSide:Z,
    .end local v6       #layoutResId:I,
    .end local v7       #mode:I,
    :pswitch_46
    const v6, 0x3030005

    .line 231
    .restart local v6       #layoutResId:I,
    const/4 v5, 0x0

    .line 232
    .restart local v5       #isLeftSide:Z,
    const/4 v7, 0x2

    .line 233
    .restart local v7       #mode:I,
    goto :goto_f

    .line 235
    .end local v5       #isLeftSide:Z,
    .end local v6       #layoutResId:I,
    .end local v7       #mode:I,
    :pswitch_4c
    const v6, 0x3030004

    .line 236
    .restart local v6       #layoutResId:I,
    const/4 v5, 0x1

    .line 237
    .restart local v5       #isLeftSide:Z,
    const/4 v7, 0x3

    .line 238
    .restart local v7       #mode:I,
    goto :goto_f

    .line 240
    .end local v5       #isLeftSide:Z,
    .end local v6       #layoutResId:I,
    .end local v7       #mode:I,
    :pswitch_52
    const v6, 0x3030004

    .line 241
    .restart local v6       #layoutResId:I,
    const/4 v5, 0x0

    .line 242
    .restart local v5       #isLeftSide:Z,
    const/4 v7, 0x4

    .line 243
    .restart local v7       #mode:I,
    goto :goto_f

    .line 267
    .end local v5       #isLeftSide:Z,
    .end local v6       #layoutResId:I,
    .end local v7       #mode:I,
    :cond_58
    move-object v0, p2

    check-cast v0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;

    move-object v3, v0

    .line 268
    .restart local v3       #containerView:Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;,
    invoke-virtual {v3, v11}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 269
    .restart local v4       #contentView:Landroid/view/View;,
    invoke-virtual {v3}, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1, v4, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_3f

    .line 223
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_40
        :pswitch_46
        :pswitch_4c
        :pswitch_52
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 316
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 318
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 326
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 328
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

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
    .line 172
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 175
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
    .line 342
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 345
    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUICheckableListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 354
    :cond_9
    return-void
.end method
