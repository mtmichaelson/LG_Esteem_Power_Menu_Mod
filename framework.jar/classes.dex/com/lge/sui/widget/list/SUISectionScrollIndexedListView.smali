.class public Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;
.super Lcom/lge/sui/widget/list/SUIIndexedListView;
.source "SUISectionScrollIndexedListView.java"



# instance fields
.field private mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

.field private mScrollViewHeight:I

.field private mScrollViewVisible:Z

.field private mScrollViewWidth:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/list/SUIIndexedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private configureScrollView()V
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 189
    .local v1, totalCount:I
    const/4 v0, 0x0

    .local v0, groupPosition:I
    :goto_9
    if-ge v0, v1, :cond_18

    .line 190
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 191
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewVisible:Z

    .line 197
    :goto_14
    return-void

    .line 189
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 196
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewVisible:Z

    goto :goto_14
.end method

.method private setScrollView(Lcom/lge/sui/widget/list/SUISectionScroller;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    .line 184
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->requestLayout()V

    .line 185
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewVisible:Z

    if-eqz v0, :cond_14

    .line 173
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 175
    :cond_14
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->draw(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/SUISectionScroller;->draw(Landroid/graphics/Canvas;)V

    .line 84
    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewVisible:Z

    if-eqz v1, :cond_12

    .line 106
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/list/SUISectionScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 107
    .local v0, intercepted:Z
    if-eqz v0, :cond_12

    .line 108
    const/4 v1, 0x1

    .line 112
    .end local v0       #intercepted:Z,
    :goto_11
    return v1

    :cond_12
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 154
    invoke-super/range {p0 .. p5}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onLayout(ZIIII)V

    .line 156
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v1, :cond_1f

    .line 157
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 158
    .local v0, scrollTop:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewWidth:I

    sub-int v2, p4, v2

    iget v3, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p4, v3}, Lcom/lge/sui/widget/list/SUISectionScroller;->layout(IIII)V

    .line 160
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->configureScrollView()V

    .line 162
    .end local v0       #scrollTop:I,
    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onMeasure(II)V

    .line 140
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v0, :cond_1c

    .line 141
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->measureChild(Landroid/view/View;II)V

    .line 142
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewWidth:I

    .line 143
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewHeight:I

    .line 145
    :cond_1c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onSizeChanged(IIII)V

    .line 93
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/sui/widget/list/SUISectionScroller;->onSizeChanged(IIII)V

    .line 96
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollViewVisible:Z

    if-eqz v1, :cond_12

    .line 123
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->mScrollView:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/list/SUISectionScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 124
    .local v0, intercepted:Z
    if-eqz v0, :cond_12

    .line 125
    const/4 v1, 0x1

    .line 129
    .end local v0       #intercepted:Z,
    :goto_11
    return v1

    :cond_12
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_11
.end method

.method public setIndexedListAdapter(Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->setIndexedListAdapter(Lcom/lge/sui/widget/list/SUIIndexedListAdapter;)V

    .line 71
    new-instance v0, Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lge/sui/widget/list/SUISectionScroller;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIIndexedListView;)V

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUISectionScrollIndexedListView;->setScrollView(Lcom/lge/sui/widget/list/SUISectionScroller;)V

    .line 72
    return-void
.end method
