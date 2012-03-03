.class public abstract Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SUIIndexedGroupListAdapter.java"


# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/lge/sui/widget/list/SUIPinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$1;,
        Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;,
        Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field protected mCollapsedGroupLayout:I

.field protected mContext:Landroid/content/Context;

.field protected mExpandedGroupLayout:I

.field protected mIndexer:Landroid/widget/SectionIndexer;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mPinnedHeaderBackgroundColor:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SectionIndexer;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/SectionIndexer;)V
    .registers 5
    .parameter "context"
    .parameter "indexer"

    .prologue
    const v1, 0x303000d

    .line 73
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 78
    iput v1, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mExpandedGroupLayout:I

    .line 79
    iput v1, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mCollapsedGroupLayout:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mPinnedHeaderBackgroundColor:I

    .line 82
    return-void
.end method


# virtual methods
.method public bindGroupView(Landroid/view/View;Ljava/lang/Object;IZ)V
    .registers 8
    .parameter "view"
    .parameter "title"
    .parameter "count"
    .parameter "isExpanded"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;

    .line 195
    .local v0, holder:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;
    if-eqz v0, :cond_18

    .line 196
    iget-object v1, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/String;

    .end local p2       
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    if-eqz p4, :cond_19

    .line 199
    iget-object v1, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;->groupCount:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :cond_18
    :goto_18
    return-void

    .line 201
    :cond_19
    iget-object v1, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;->groupCount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v1, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;->groupCount:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method public configurePinnedHeader(Landroid/view/View;III)V
    .registers 13
    .parameter "headerView"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "alpha"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;

    .line 315
    .local v0, cache:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;
    if-nez v0, :cond_35

    .line 316
    new-instance v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;

    .end local v0       #cache:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;,
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;-><init>(Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$1;)V

    .line 317
    .restart local v0       #cache:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;,
    const v4, 0x30a0039

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    .line 319
    const v4, 0x30a003a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->countView:Landroid/widget/TextView;

    .line 321
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->background:Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 326
    :cond_35
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v4

    aget-object v3, v4, p2

    check-cast v3, Ljava/lang/String;

    .line 327
    .local v3, title:Ljava/lang/String;
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getChildrenCount(I)I

    move-result v1

    .line 330
    .local v1, count:I
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->countView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const/16 v4, 0xff

    if-ne p4, v4, :cond_69

    .line 334
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 336
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->countView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 353
    :goto_68
    return-void

    .line 340
    :cond_69
    iget v4, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mPinnedHeaderBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    mul-int/2addr v4, p4

    div-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mPinnedHeaderBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    mul-int/2addr v5, p4

    div-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mPinnedHeaderBackgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    mul-int/2addr v6, p4

    div-int/lit16 v6, v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 345
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 346
    .local v2, textColor:I
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {p4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    iget-object v4, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$PinnedHeaderViewHolder;->countView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {p4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_68
.end method

.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public abstract getChildId(II)J
.end method

.method public abstract getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, groups:[Ljava/lang/Object;
    aget-object v1, v0, p1

    return-object v1
.end method

.method public getGroupCount()I
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, groups:[Ljava/lang/Object;
    array-length v1, v0

    return v1
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 163
    if-nez p3, :cond_3a

    .line 164
    new-instance v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;-><init>()V

    .line 165
    .local v0, holder:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p2, :cond_37

    iget v3, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mExpandedGroupLayout:I

    :goto_d
    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, v:Landroid/view/View;
    const v2, 0x30a0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    .line 168
    const v2, 0x30a003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;->groupCount:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    .end local v0       #holder:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;,
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getChildrenCount(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->bindGroupView(Landroid/view/View;Ljava/lang/Object;IZ)V

    .line 176
    return-object v1

    .line 165
    .end local v1       #v:Landroid/view/View;,
    .restart local v0       #holder:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;,
    :cond_37
    iget v3, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mCollapsedGroupLayout:I

    goto :goto_d

    .line 171
    .end local v0       #holder:Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter$ViewHolder;,
    :cond_3a
    move-object v1, p3

    .restart local v1       #v:Landroid/view/View;,
    goto :goto_2b
.end method

.method public getPinnedHeaderState(II)I
    .registers 7
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v3, 0x1

    .line 360
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v2, :cond_7

    .line 361
    const/4 v2, 0x0

    .line 374
    :goto_6
    return v2

    .line 366
    :cond_7
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int v0, v2, p2

    .line 368
    .local v0, currentPosition:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->getPositionForSection(I)I

    move-result v1

    .line 369
    .local v1, nextSectionPosition:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    sub-int v2, v1, v3

    if-ne v0, v2, :cond_1c

    .line 371
    const/4 v2, 0x2

    goto :goto_6

    :cond_1c
    move v2, v3

    .line 374
    goto :goto_6
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_6

    .line 241
    const/4 v0, -0x1

    .line 244
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_6

    .line 255
    const/4 v0, -0x1

    .line 258
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_5
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_d

    .line 269
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 271
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 227
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
    .line 286
    instance-of v0, p1, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;

    if-eqz v0, :cond_9

    .line 287
    check-cast p1, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;

    .end local p1       
    invoke-virtual {p1, p2}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->configureHeaderView(I)V

    .line 290
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 301
    return-void
.end method

.method public setSectionIndexer(Landroid/widget/SectionIndexer;)V
    .registers 2
    .parameter "indexer"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedGroupListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 92
    return-void
.end method
