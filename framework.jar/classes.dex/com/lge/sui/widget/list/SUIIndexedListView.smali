.class public Lcom/lge/sui/widget/list/SUIIndexedListView;
.super Landroid/widget/ExpandableListView;
.source "SUIIndexedListView.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIIndexedListView$1;,
        Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;,
        Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;,
        Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff



# instance fields
.field private mAdapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

.field private mFastScrollDetector:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;

.field private mPinchDetector:Lcom/lge/sui/widget/util/SUIPinchGestureDetector;

.field private mPinnedHeader:Landroid/view/View;

.field private mPinnedHeaderEnable:Z

.field private mPinnedHeaderHeight:I

.field private mPinnedHeaderVisible:Z

.field private mPinnedHeaderWidth:I

.field private mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

.field private mSectionScrollerHeight:I

.field private mSectionScrollerVisible:Z

.field private mSectionScrollerWidth:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const v0, 0x3010016

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget-object v3, Lcom/lge/sui/widget/R$styleable;->IndexedListView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderEnable:Z

    .line 85
    iget-boolean v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderEnable:Z

    if-eqz v3, :cond_27

    .line 86
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 88
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x303000d

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, pinnedHeader:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 93
    .end local v1       #inflater:Landroid/view/LayoutInflater;,
    .end local v2       #pinnedHeader:Landroid/view/View;,
    :cond_27
    new-instance v3, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;

    invoke-direct {v3, p0, v5}, Lcom/lge/sui/widget/list/SUIIndexedListView$GroupClickListener;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListView;Lcom/lge/sui/widget/list/SUIIndexedListView$1;)V

    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 95
    new-instance v3, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;

    new-instance v4, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;

    invoke-direct {v4, p0, v5}, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListView;Lcom/lge/sui/widget/list/SUIIndexedListView$1;)V

    invoke-direct {v3, p1, v4}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;)V

    iput-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinchDetector:Lcom/lge/sui/widget/util/SUIPinchGestureDetector;

    .line 97
    new-instance v3, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;

    new-instance v4, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;

    invoke-direct {v4, p0, v5}, Lcom/lge/sui/widget/list/SUIIndexedListView$MultiTouchScrollListener;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListView;Lcom/lge/sui/widget/list/SUIIndexedListView$1;)V

    invoke-direct {v3, p1, v4}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;)V

    iput-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mFastScrollDetector:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;

    .line 99
    return-void
.end method

.method private configureSectionScroller()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 360
    .local v0, totalCount:I
    if-lez v0, :cond_15

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->isGroupExpanded(I)Z

    move-result v1

    if-ne v1, v3, :cond_15

    .line 362
    iput-boolean v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerVisible:Z

    .line 367
    :goto_14
    return-void

    .line 366
    :cond_15
    iput-boolean v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerVisible:Z

    goto :goto_14
.end method

.method private initSectionScroller(Lcom/lge/sui/widget/list/internal/SUISectionScroller;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    .line 354
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->requestLayout()V

    .line 355
    return-void
.end method


# virtual methods
.method public collapseAllGroup()V
    .registers 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 236
    .local v1, totalCount:I
    const/4 v0, 0x0

    .local v0, groupPosition:I
    :goto_9
    if-ge v0, v1, :cond_18

    .line 237
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->isGroupExpanded(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 238
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->collapseGroup(I)Z

    .line 236
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 241
    :cond_18
    return-void
.end method

.method public configureHeaderView(I)V
    .registers 17
    .parameter "position"

    .prologue
    .line 403
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    if-nez v10, :cond_5

    .line 455
    :goto_4
    return-void

    .line 407
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListPosition(I)J

    move-result-wide v6

    .line 408
    .local v6, packedPosition:J
    invoke-static {v6, v7}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 409
    .local v4, groupPosition:I
    invoke-static {v6, v7}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getPackedPositionChild(J)I

    move-result v2

    .line 410
    .local v2, childPosition:I
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mAdapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    invoke-interface {v10, v4, v2}, Lcom/lge/sui/widget/list/SUIIndexedListAdapter;->getPinnedHeaderState(II)I

    move-result v8

    .line 412
    .local v8, state:I
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/list/SUIIndexedListView;->isGroupExpanded(I)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 413
    const/4 v8, 0x0

    .line 416
    :cond_1e
    packed-switch v8, :pswitch_data_82

    goto :goto_4

    .line 418
    :pswitch_22
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderVisible:Z

    goto :goto_4

    .line 423
    :pswitch_26
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mAdapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    iget-object v11, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    const/16 v12, 0xff

    invoke-interface {v10, v11, v4, v2, v12}, Lcom/lge/sui/widget/list/SUIIndexedListAdapter;->configurePinnedHeader(Landroid/view/View;III)V

    .line 425
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz v10, :cond_42

    .line 426
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderWidth:I

    iget v14, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 428
    :cond_42
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderVisible:Z

    goto :goto_4

    .line 433
    :pswitch_46
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 434
    .local v3, firstView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 435
    .local v1, bottom:I
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 438
    .local v5, headerHeight:I
    if-ge v1, v5, :cond_7d

    .line 439
    sub-int v9, v1, v5

    .line 440
    .local v9, y:I
    add-int v10, v5, v9

    mul-int/lit16 v10, v10, 0xff

    div-int v0, v10, v5

    .line 445
    .local v0, alpha:I
    :goto_5f
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mAdapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    iget-object v11, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-interface {v10, v11, v4, v2, v0}, Lcom/lge/sui/widget/list/SUIIndexedListAdapter;->configurePinnedHeader(Landroid/view/View;III)V

    .line 447
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    if-eq v10, v9, :cond_79

    .line 448
    iget-object v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    const/4 v11, 0x0

    iget v12, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderWidth:I

    iget v13, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderHeight:I

    add-int/2addr v13, v9

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 451
    :cond_79
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderVisible:Z

    goto :goto_4

    .line 442
    .end local v0       #alpha:I,
    .end local v9       #y:I,
    :cond_7d
    const/4 v9, 0x0

    .line 443
    .restart local v9       #y:I,
    const/16 v0, 0xff

    .restart local v0       #alpha:I,
    goto :goto_5f

    .line 416
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_22
        :pswitch_26
        :pswitch_46
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 295
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerVisible:Z

    if-eqz v0, :cond_14

    .line 296
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 299
    :cond_14
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderVisible:Z

    if-eqz v0, :cond_21

    .line 300
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 302
    :cond_21
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->draw(Landroid/graphics/Canvas;)V

    .line 282
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    if-eqz v0, :cond_c

    .line 283
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->draw(Landroid/graphics/Canvas;)V

    .line 285
    :cond_c
    return-void
.end method

.method public expandAllGroup()V
    .registers 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 224
    .local v1, totalCount:I
    const/4 v0, 0x0

    .local v0, groupPosition:I
    :goto_9
    if-ge v0, v1, :cond_17

    .line 225
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 226
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->expandGroup(I)Z

    .line 224
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 229
    :cond_17
    return-void
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedListAdapter()Lcom/lge/sui/widget/list/SUIIndexedListAdapter;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mAdapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerVisible:Z

    if-eqz v1, :cond_12

    .line 129
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 130
    .local v0, intercepted:Z
    if-eqz v0, :cond_12

    .line 131
    const/4 v1, 0x1

    .line 135
    .end local v0       #intercepted:Z,
    :goto_11
    return v1

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 332
    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    .line 334
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    if-eqz v1, :cond_20

    .line 335
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 336
    .local v0, scrollTop:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    iget v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerWidth:I

    sub-int v2, p4, v2

    iget v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p4, v3}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->layout(IIII)V

    .line 338
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->configureSectionScroller()V

    .line 341
    .end local v0       #scrollTop:I,
    :cond_20
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    if-eqz v1, :cond_34

    .line 342
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    iget v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderWidth:I

    iget v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 343
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->configureHeaderView(I)V

    .line 345
    :cond_34
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 312
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    if-eqz v0, :cond_1c

    .line 313
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->measureChild(Landroid/view/View;II)V

    .line 314
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerWidth:I

    .line 315
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerHeight:I

    .line 318
    :cond_1c
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 319
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->measureChild(Landroid/view/View;II)V

    .line 320
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderWidth:I

    .line 321
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeaderHeight:I

    .line 323
    :cond_35
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinchDetector:Lcom/lge/sui/widget/util/SUIPinchGestureDetector;

    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mFastScrollDetector:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;

    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScrollerVisible:Z

    if-eqz v1, :cond_1c

    .line 112
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mSectionScroller:Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    .local v0, intercepted:Z
    if-eqz v0, :cond_1c

    .line 114
    const/4 v1, 0x1

    .line 118
    .end local v0       #intercepted:Z,
    :goto_1b
    return v1

    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For IndexedListView, use setIndexedListAdapter(SUIIndexedListAdapter) instead of setAdapter(ExpandableListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndexedListAdapter(Lcom/lge/sui/widget/list/SUIIndexedListAdapter;)V
    .registers 6
    .parameter "adapter"

    .prologue
    .line 261
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    move-object v2, v0

    invoke-super {p0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 263
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mAdapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    .line 265
    invoke-interface {p1}, Lcom/lge/sui/widget/list/SUIIndexedListAdapter;->getIndexer()Lcom/lge/sui/widget/list/SUISectionIndexer;

    move-result-object v1

    .line 266
    .local v1, indexer:Lcom/lge/sui/widget/list/SUISectionIndexer;
    instance-of v2, v1, Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;

    if-eqz v2, :cond_1d

    .line 267
    new-instance v2, Lcom/lge/sui/widget/list/internal/SUISectionScroller;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIIndexedListView;)V

    invoke-direct {p0, v2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->initSectionScroller(Lcom/lge/sui/widget/list/internal/SUISectionScroller;)V

    .line 269
    :cond_1d
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    .line 390
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView;->mPinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setFadingEdgeLength(I)V

    .line 393
    :cond_a
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->requestLayout()V

    .line 394
    return-void
.end method
