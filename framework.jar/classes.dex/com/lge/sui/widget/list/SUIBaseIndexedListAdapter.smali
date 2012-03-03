.class public abstract Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SUIBaseIndexedListAdapter.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIIndexedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$1;,
        Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupLayout:I

.field private mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPinnedHeaderBackgroundColor:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 49
    const v0, 0x303000d

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->init(Landroid/content/Context;ILcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 4
    .parameter "context"
    .parameter "indexer"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 61
    const v0, 0x303000d

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->init(Landroid/content/Context;ILcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 62
    return-void
.end method

.method private bindGroupView(Landroid/view/View;Ljava/lang/Object;IZ)V
    .registers 8
    .parameter "view"
    .parameter "title"
    .parameter "count"
    .parameter "isExpanded"

    .prologue
    .line 148
    const v2, 0x30a0039

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, titleView:Landroid/widget/TextView;
    if-eqz v1, :cond_10

    .line 150
    check-cast p2, Ljava/lang/String;

    .end local p2       
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_10
    const v2, 0x30a003a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, countView:Landroid/widget/TextView;
    if-eqz v0, :cond_22

    .line 155
    if-eqz p4, :cond_23

    .line 156
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :cond_22
    :goto_22
    return-void

    .line 158
    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method private init(Landroid/content/Context;ILcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 6
    .parameter "context"
    .parameter "groupLayout"
    .parameter "indexer"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p3, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    .line 70
    iput p2, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mGroupLayout:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mPinnedHeaderBackgroundColor:I

    .line 74
    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;III)V
    .registers 12
    .parameter "headerView"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "alpha"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;

    .line 333
    .local v0, cache:Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;
    if-nez v0, :cond_2a

    .line 334
    new-instance v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;

    .end local v0       #cache:Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;,
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;-><init>(Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$1;)V

    .line 335
    .restart local v0       #cache:Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;,
    const v3, 0x30a0039

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    .line 337
    iget-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->background:Landroid/graphics/drawable/Drawable;

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 342
    :cond_2a
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    invoke-interface {v3}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, p2

    check-cast v2, Ljava/lang/String;

    .line 343
    .local v2, title:Ljava/lang/String;
    iget-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const/16 v3, 0xff

    if-ne p4, v3, :cond_4a

    .line 347
    iget-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 362
    :goto_49
    return-void

    .line 352
    :cond_4a
    iget v3, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mPinnedHeaderBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    mul-int/2addr v3, p4

    div-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mPinnedHeaderBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    mul-int/2addr v4, p4

    div-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mPinnedHeaderBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    mul-int/2addr v5, p4

    div-int/lit16 v5, v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 357
    iget-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 358
    .local v1, textColor:I
    iget-object v3, v0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {p4, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_49
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getDataCount(I)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    if-nez v0, :cond_6

    .line 237
    const/4 v0, -0x1

    .line 240
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    invoke-interface {v0, p1}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getDataCount(I)I

    move-result v0

    goto :goto_5
.end method

.method public getDataPosition(II)I
    .registers 4
    .parameter "sectionIndex"
    .parameter "dataIndex"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    if-nez v0, :cond_6

    .line 250
    const/4 v0, -0x1

    .line 253
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    invoke-interface {v0, p1, p2}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getDataPosition(II)I

    move-result v0

    goto :goto_5
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_a

    .line 101
    const/4 v1, 0x0

    .line 105
    :goto_9
    return-object v1

    .line 104
    :cond_a
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, groups:[Ljava/lang/Object;
    aget-object v1, v0, p1

    goto :goto_9
.end method

.method public getGroupCount()I
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, groups:[Ljava/lang/Object;
    array-length v1, v0

    return v1
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 136
    if-nez p3, :cond_17

    .line 137
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mGroupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, v:Landroid/view/View;
    :goto_b
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getChildrenCount(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->bindGroupView(Landroid/view/View;Ljava/lang/Object;IZ)V

    .line 143
    return-object v0

    .line 139
    .end local v0       #v:Landroid/view/View;,
    :cond_17
    move-object v0, p3

    .restart local v0       #v:Landroid/view/View;,
    goto :goto_b
.end method

.method public getIndexer()Lcom/lge/sui/widget/list/SUISectionIndexer;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    return-object v0
.end method

.method public getInflator()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getPinnedHeaderState(II)I
    .registers 7
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v3, 0x1

    .line 304
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    if-nez v2, :cond_7

    .line 305
    const/4 v2, 0x0

    .line 320
    :goto_6
    return v2

    .line 310
    :cond_7
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getGroupCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_23

    .line 311
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int v0, v2, p2

    .line 313
    .local v0, currentPosition:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getPositionForSection(I)I

    move-result v1

    .line 314
    .local v1, nextSectionPosition:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    sub-int v2, v1, v3

    if-ne v0, v2, :cond_23

    .line 316
    const/4 v2, 0x2

    goto :goto_6

    .end local v0       #currentPosition:I,
    .end local v1       #nextSectionPosition:I,
    :cond_23
    move v2, v3

    .line 320
    goto :goto_6
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    if-nez v0, :cond_6

    .line 211
    const/4 v0, -0x1

    .line 214
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    invoke-interface {v0, p1}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    if-nez v0, :cond_6

    .line 224
    const/4 v0, -0x1

    .line 227
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    invoke-interface {v0, p1}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    if-nez v0, :cond_d

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 200
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    invoke-interface {v0}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 283
    instance-of v0, p1, Lcom/lge/sui/widget/list/SUIIndexedListView;

    if-eqz v0, :cond_9

    .line 284
    check-cast p1, Lcom/lge/sui/widget/list/SUIIndexedListView;

    .end local p1       
    invoke-virtual {p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->configureHeaderView(I)V

    .line 286
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 296
    return-void
.end method

.method public setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 2
    .parameter "indexer"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUISectionIndexer;

    .line 264
    return-void
.end method
