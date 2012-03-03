.class public Lcom/lge/appwidget/Andy_RollerScrollView;
.super Landroid/widget/FrameLayout;
.source "Andy_RollerScrollView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f



# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsLayoutDirty:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 98
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    .line 114
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mSmoothScrollingEnabled:Z

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    .line 142
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->initScrollView()V

    .line 144
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->setFillViewport(Z)V

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 242
    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1b

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 245
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_19

    const/4 v2, 0x1

    .line 247
    .end local v1       #childHeight:I,
    :goto_18
    return v2

    .restart local v1       #childHeight:I,
    :cond_19
    move v2, v5

    .line 245
    goto :goto_18

    .end local v1       #childHeight:I,
    :cond_1b
    move v2, v5

    .line 247
    goto :goto_18
.end method

.method private clamp(III)I
    .registers 5
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1304
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1320
    :cond_4
    const/4 v0, 0x0

    .line 1330
    :goto_5
    return v0

    .line 1322
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_d

    .line 1328
    sub-int v0, p3, p2

    goto :goto_5

    :cond_d
    move v0, p1

    .line 1330
    goto :goto_5
.end method

.method private doScrollY(I)V
    .registers 4
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 898
    if-eqz p1, :cond_a

    .line 899
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 900
    invoke-virtual {p0, v1, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->smoothScrollBy(II)V

    .line 905
    :cond_a
    :goto_a
    return-void

    .line 902
    :cond_b
    invoke-virtual {p0, v1, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 638
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/lge/appwidget/Andy_RollerScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 639
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 648
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 650
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 651
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v0, :cond_56

    .line 652
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 653
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 654
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 656
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_2a

    if-ge v9, p3, :cond_2a

    .line 662
    if-ge p2, v9, :cond_2d

    if-ge v6, p3, :cond_2d

    const/4 v10, 0x1

    move v8, v10

    .line 665
    .local v8, viewIsFullyContained:Z
    :goto_26
    if-nez v1, :cond_30

    .line 667
    move-object v1, v5

    .line 668
    move v3, v8

    .line 651
    .end local v8       #viewIsFullyContained:Z,
    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 662
    :cond_2d
    const/4 v10, 0x0

    move v8, v10

    goto :goto_26

    .line 670
    .restart local v8       #viewIsFullyContained:Z,
    :cond_30
    if-eqz p1, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_40

    :cond_38
    if-nez p1, :cond_4a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_4a

    :cond_40
    const/4 v10, 0x1

    move v7, v10

    .line 675
    .local v7, viewIsCloserToBoundary:Z
    :goto_42
    if-eqz v3, :cond_4d

    .line 676
    if-eqz v8, :cond_2a

    if-eqz v7, :cond_2a

    .line 682
    move-object v1, v5

    goto :goto_2a

    .line 670
    .end local v7       #viewIsCloserToBoundary:Z,
    :cond_4a
    const/4 v10, 0x0

    move v7, v10

    goto :goto_42

    .line 685
    .restart local v7       #viewIsCloserToBoundary:Z,
    :cond_4d
    if-eqz v8, :cond_52

    .line 687
    move-object v1, v5

    .line 688
    const/4 v3, 0x1

    goto :goto_2a

    .line 689
    :cond_52
    if-eqz v7, :cond_2a

    .line 694
    move-object v1, v5

    goto :goto_2a

    .line 701
    .end local v5       #view:Landroid/view/View;,
    .end local v6       #viewBottom:I,
    .end local v7       #viewIsCloserToBoundary:Z,
    .end local v8       #viewIsFullyContained:Z,
    .end local v9       #viewTop:I,
    :cond_56
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 608
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 609
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 611
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_1f

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_1f

    move-object v3, p3

    .line 617
    :goto_1e
    return-object v3

    :cond_1f
    invoke-direct {p0, p1, v2, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_1e
.end method

.method private getScrollRange()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 576
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 580
    .end local v0       #child:Landroid/view/View;,
    :cond_1f
    return v1
.end method

.method private inChild(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 377
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 378
    .local v1, scrollY:I
    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p2, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p2, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_29

    const/4 v2, 0x1

    .line 384
    .end local v0       #child:Landroid/view/View;,
    .end local v1       #scrollY:I,
    :goto_28
    return v2

    .restart local v0       #child:Landroid/view/View;,
    .restart local v1       #scrollY:I,
    :cond_29
    move v2, v3

    .line 379
    goto :goto_28

    .end local v0       #child:Landroid/view/View;,
    .end local v1       #scrollY:I,
    :cond_2b
    move v2, v3

    .line 384
    goto :goto_28
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 192
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    .line 193
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->setFocusable(Z)V

    .line 194
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->setDescendantFocusability(I)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->setWillNotDraw(Z)V

    .line 196
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTouchSlop:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mMinimumVelocity:I

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mMaximumVelocity:I

    .line 200
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1244
    if-ne p1, p2, :cond_5

    move v1, v2

    .line 1249
    :goto_4
    return v1

    .line 1248
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1249
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    .end local v0       #theParent:Landroid/view/ViewParent;,
    invoke-direct {p0, v0, p2}, Lcom/lge/appwidget/Andy_RollerScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 886
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 888
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 559
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 560
    .local v1, pointerId:I
    iget v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2b

    .line 564
    if-nez v2, :cond_2c

    const/4 v3, 0x1

    move v0, v3

    .line 565
    .local v0, newPointerIndex:I
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    .line 567
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2b

    .line 568
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 571
    .end local v0       #newPointerIndex:I,
    :cond_2b
    return-void

    .line 564
    :cond_2c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_16
.end method

.method private scrollAndFocus(III)Z
    .registers 14
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 785
    const/4 v3, 0x1

    .line 787
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v4

    .line 788
    .local v4, height:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v1

    .line 789
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 790
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2f

    move v6, v9

    .line 792
    .local v6, up:Z
    :goto_12
    invoke-direct {p0, v6, p2, p3}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 793
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_19

    .line 794
    move-object v5, p0

    .line 797
    :cond_19
    if-lt p2, v1, :cond_31

    if-gt p3, v0, :cond_31

    .line 798
    const/4 v3, 0x0

    .line 804
    :goto_1e
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_2e

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 805
    iput-boolean v9, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScrollViewMovedFocus:Z

    .line 806
    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScrollViewMovedFocus:Z

    .line 809
    :cond_2e
    return v3

    .end local v5       #newFocused:Landroid/view/View;,
    .end local v6       #up:Z,
    :cond_2f
    move v6, v8

    .line 790
    goto :goto_12

    .line 800
    .restart local v5       #newFocused:Landroid/view/View;,
    .restart local v6       #up:Z,
    :cond_31
    if-eqz v6, :cond_3a

    sub-int v7, p2, v1

    move v2, v7

    .line 801
    .local v2, delta:I
    :goto_36
    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->doScrollY(I)V

    goto :goto_1e

    .line 800
    .end local v2       #delta:I,
    :cond_3a
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_36
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1046
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1048
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1050
    .local v0, scrollDelta:I
    if-eqz v0, :cond_16

    .line 1051
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollBy(II)V

    .line 1053
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1064
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1065
    .local v0, delta:I
    if-eqz v0, :cond_11

    const/4 v2, 0x1

    move v1, v2

    .line 1066
    .local v1, scroll:Z
    :goto_9
    if-eqz v1, :cond_10

    .line 1067
    if-eqz p2, :cond_13

    .line 1068
    invoke-virtual {p0, v3, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollBy(II)V

    .line 1073
    :cond_10
    :goto_10
    return v1

    .end local v1       #scroll:Z,
    :cond_11
    move v1, v3

    .line 1065
    goto :goto_9

    .line 1070
    .restart local v1       #scroll:Z,
    :cond_13
    invoke-virtual {p0, v3, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->smoothScrollBy(II)V

    goto :goto_10
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 218
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 821
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 822
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 824
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 826
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 828
    .local v3, maxJump:I
    if-eqz v4, :cond_57

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 829
    iget-object v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 830
    iget-object v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 831
    iget-object v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 832
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/lge/appwidget/Andy_RollerScrollView;->doScrollY(I)V

    .line 833
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 857
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 864
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getDescendantFocusability()I

    move-result v2

    .line 865
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->setDescendantFocusability(I)V

    .line 866
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->requestFocus()Z

    .line 867
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->setDescendantFocusability(I)V

    .line 869
    .end local v2       #descendantFocusability:I,
    :cond_55
    const/4 v7, 0x1

    :goto_56
    return v7

    .line 836
    .end local v6       #scrollDelta:I,
    :cond_57
    move v6, v3

    .line 838
    .restart local v6       #scrollDelta:I,
    const/16 v7, 0x21

    if-ne p1, v7, :cond_6a

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_6a

    .line 839
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v6

    .line 851
    :cond_66
    :goto_66
    if-nez v6, :cond_8b

    move v7, v9

    .line 852
    goto :goto_56

    .line 840
    :cond_6a
    if-ne p1, v10, :cond_66

    .line 841
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_66

    .line 842
    invoke-virtual {p0, v9}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 844
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    .line 846
    .local v5, screenBottom:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_66

    .line 847
    sub-int v6, v1, v5

    goto :goto_66

    .line 854
    .end local v1       #daBottom:I,
    .end local v5       #screenBottom:I,
    :cond_8b
    if-ne p1, v10, :cond_92

    move v7, v6

    :goto_8e
    invoke-direct {p0, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->doScrollY(I)V

    goto :goto_38

    :cond_92
    neg-int v7, v6

    goto :goto_8e
.end method

.method public computeScroll()V
    .registers 8

    .prologue
    .line 998
    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1015
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 1016
    .local v1, oldX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1017
    .local v2, oldY:I
    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1018
    .local v3, x:I
    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1020
    .local v4, y:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_52

    .line 1021
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1022
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/lge/appwidget/Andy_RollerScrollView;->clamp(III)I

    move-result v3

    .line 1023
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/appwidget/Andy_RollerScrollView;->clamp(III)I

    move-result v4

    .line 1024
    if-ne v3, v1, :cond_4b

    if-eq v4, v2, :cond_52

    .line 1025
    :cond_4b
    iput v3, p0, Landroid/view/View;->mScrollX:I

    .line 1026
    iput v4, p0, Landroid/view/View;->mScrollY:I

    .line 1027
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->onScrollChanged(IIII)V

    .line 1030
    .end local v0       #child:Landroid/view/View;,
    :cond_52
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->awakenScrollBars()Z

    .line 1033
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->postInvalidate()V

    .line 1035
    .end local v1       #oldX:I,
    .end local v2       #oldY:I,
    .end local v3       #x:I,
    .end local v4       #y:I,
    :cond_58
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1085
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_9

    move v7, v9

    .line 1139
    :goto_8
    return v7

    .line 1087
    :cond_9
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v3

    .line 1088
    .local v3, height:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v5

    .line 1089
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1091
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1094
    .local v2, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1c

    .line 1095
    add-int/2addr v5, v2

    .line 1099
    :cond_1c
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_29

    .line 1100
    sub-int/2addr v4, v2

    .line 1103
    :cond_29
    const/4 v6, 0x0

    .line 1105
    .local v6, scrollYDelta:I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_51

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_51

    .line 1110
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4c

    .line 1112
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 1119
    :goto_3c
    invoke-virtual {p0, v9}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1120
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1121
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v0       #bottom:I,
    .end local v1       #distanceToBottom:I,
    :cond_4a
    :goto_4a
    move v7, v6

    .line 1139
    goto :goto_8

    .line 1115
    :cond_4c
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_3c

    .line 1123
    :cond_51
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_4a

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_4a

    .line 1128
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6e

    .line 1130
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1137
    :goto_64
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4a

    .line 1133
    :cond_6e
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_64
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 964
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 5

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v1

    .line 954
    .local v1, count:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 955
    .local v0, contentHeight:I
    if-nez v1, :cond_13

    move v2, v0

    .line 959
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_12
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 334
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 336
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 337
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3a

    .line 338
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    .line 340
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_38

    if-eq v2, p0, :cond_38

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    .line 372
    .end local v0       #currentFocused:Landroid/view/View;,
    .end local v2       #nextFocused:Landroid/view/View;,
    :goto_37
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;,
    .restart local v2       #nextFocused:Landroid/view/View;,
    :cond_38
    move v3, v6

    .line 342
    goto :goto_37

    .end local v0       #currentFocused:Landroid/view/View;,
    .end local v2       #nextFocused:Landroid/view/View;,
    :cond_3a
    move v3, v6

    .line 346
    goto :goto_37

    .line 349
    :cond_3c
    const/4 v1, 0x0

    .line 350
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4a

    .line 351
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7a

    :cond_4a
    :goto_4a
    move v3, v1

    .line 372
    goto :goto_37

    .line 353
    :sswitch_4c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_57

    .line 354
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_4a

    .line 356
    :cond_57
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->fullScroll(I)Z

    move-result v1

    .line 358
    goto :goto_4a

    .line 360
    :sswitch_5c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_67

    .line 361
    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_RollerScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_4a

    .line 363
    :cond_67
    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_RollerScrollView;->fullScroll(I)Z

    move-result v1

    .line 365
    goto :goto_4a

    .line 367
    :sswitch_6c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_77

    move v3, v4

    :goto_73
    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RollerScrollView;->pageScroll(I)Z

    goto :goto_4a

    :cond_77
    move v3, v5

    goto :goto_73

    .line 351
    nop

    :sswitch_data_7a
    .sparse-switch
        0x13 -> :sswitch_4c
        0x14 -> :sswitch_5c
        0x3e -> :sswitch_6c
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 16
    .parameter "velocityY"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1260
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_59

    .line 1261
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, v0, v1

    .line 1262
    .local v10, height:I
    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1264
    .local v9, bottom:I
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1267
    if-lez p1, :cond_5a

    move v11, v13

    .line 1269
    .local v11, movingDown:Z
    :goto_31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1271
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_42

    .line 1272
    move-object v12, p0

    .line 1275
    :cond_42
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_56

    if-eqz v11, :cond_5c

    const/16 v0, 0x82

    :goto_4c
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1277
    iput-boolean v13, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScrollViewMovedFocus:Z

    .line 1278
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScrollViewMovedFocus:Z

    .line 1281
    :cond_56
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->invalidate()V

    .line 1283
    .end local v9       #bottom:I,
    .end local v10       #height:I,
    .end local v11       #movingDown:Z,
    .end local v12       #newFocused:Landroid/view/View;,
    :cond_59
    return-void

    .restart local v9       #bottom:I,
    .restart local v10       #height:I,
    :cond_5a
    move v11, v3

    .line 1267
    goto :goto_31

    .line 1275
    .restart local v11       #movingDown:Z,
    .restart local v12       #newFocused:Landroid/view/View;,
    :cond_5c
    const/16 v0, 0x21

    goto :goto_4c
.end method

.method public fullScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 753
    const/16 v4, 0x82

    if-ne p1, v4, :cond_3f

    move v1, v6

    .line 754
    .local v1, down:Z
    :goto_7
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v2

    .line 756
    .local v2, height:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 757
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 759
    if-eqz v1, :cond_32

    .line 760
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    .line 761
    .local v0, count:I
    if-lez v0, :cond_32

    .line 762
    sub-int v4, v0, v6

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 763
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 764
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 768
    .end local v0       #count:I,
    .end local v3       #view:Landroid/view/View;,
    :cond_32
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1       #down:Z,
    .end local v2       #height:I,
    :cond_3f
    move v1, v5

    .line 753
    goto :goto_7
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 169
    const/4 v3, 0x0

    .line 179
    :goto_7
    return v3

    .line 172
    :cond_8
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 173
    .local v1, length:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 174
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 175
    .local v2, span:I
    if-ge v2, v1, :cond_28

    .line 176
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_7

    .line 179
    :cond_28
    const/high16 v3, 0x3f80

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 187
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 155
    const/4 v1, 0x0

    .line 163
    :goto_7
    return v1

    .line 158
    :cond_8
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 159
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_16

    .line 160
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 163
    :cond_16
    const/high16 v1, 0x3f80

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 974
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 977
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 979
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 980
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 985
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 987
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 990
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 993
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 994
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 401
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_10

    iget-boolean v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_10

    move v5, v8

    .line 470
    :goto_f
    return v5

    .line 405
    :cond_10
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_68

    .line 470
    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    goto :goto_f

    .line 416
    :pswitch_18
    iget v1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    .line 417
    .local v1, activePointerId:I
    if-eq v1, v6, :cond_15

    .line 422
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 423
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 424
    .local v3, y:F
    iget v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 425
    .local v4, yDiff:I
    iget v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_15

    .line 426
    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    .line 427
    iput v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    goto :goto_15

    .line 433
    .end local v1       #activePointerId:I,
    .end local v2       #pointerIndex:I,
    .end local v3       #y:F,
    .end local v4       #yDiff:I,
    :pswitch_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 434
    .restart local v3       #y:F,
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    float-to-int v6, v3

    invoke-direct {p0, v5, v6}, Lcom/lge/appwidget/Andy_RollerScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_49

    .line 435
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    goto :goto_15

    .line 443
    :cond_49
    iput v3, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    .line 444
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    .line 451
    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5d

    move v5, v8

    :goto_5a
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    goto :goto_15

    :cond_5d
    move v5, v7

    goto :goto_5a

    .line 458
    .end local v3       #y:F,
    :pswitch_5f
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    .line 459
    iput v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    goto :goto_15

    .line 462
    :pswitch_64
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_15

    .line 405
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_36
        :pswitch_5f
        :pswitch_18
        :pswitch_5f
        :pswitch_15
        :pswitch_15
        :pswitch_64
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1209
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsLayoutDirty:Z

    .line 1212
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1213
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1215
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1218
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollTo(II)V

    .line 1219
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 292
    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mFillViewport:Z

    if-nez v6, :cond_8

    .line 317
    :cond_7
    :goto_7
    return-void

    .line 296
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 297
    .local v4, heightMode:I
    if-eqz v4, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 302
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getMeasuredHeight()I

    move-result v3

    .line 304
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_7

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 309
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 310
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 311
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 314
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1169
    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    .line 1170
    const/16 p1, 0x82

    .line 1175
    :cond_6
    :goto_6
    if-nez p2, :cond_1c

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1180
    .local v0, nextFocus:Landroid/view/View;
    :goto_12
    if-nez v0, :cond_26

    move v1, v3

    .line 1188
    :goto_15
    return v1

    .line 1171
    .end local v0       #nextFocus:Landroid/view/View;,
    :cond_16
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 1172
    const/16 p1, 0x21

    goto :goto_6

    .line 1175
    :cond_1c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_12

    .line 1184
    .restart local v0       #nextFocus:Landroid/view/View;,
    :cond_26
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_RollerScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v3

    .line 1185
    goto :goto_15

    .line 1188
    :cond_2e
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_15
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1225
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1226
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1238
    :cond_b
    :goto_b
    return-void

    .line 1232
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/lge/appwidget/Andy_RollerScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1233
    iget-object v2, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1234
    iget-object v2, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1235
    iget-object v2, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1236
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->doScrollY(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    if-eqz v6, :cond_11

    move v6, v8

    .line 553
    :goto_10
    return v6

    .line 482
    :cond_11
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1b

    .line 483
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 485
    :cond_1b
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 489
    .local v0, action:I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_c4

    .line 553
    :cond_29
    :goto_29
    :pswitch_29
    const/4 v6, 0x1

    goto :goto_10

    .line 491
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 492
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    float-to-int v7, v5

    invoke-direct {p0, v6, v7}, Lcom/lge/appwidget/Andy_RollerScrollView;->inChild(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    if-nez v6, :cond_3f

    move v6, v8

    .line 493
    goto :goto_10

    .line 500
    :cond_3f
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 501
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 505
    :cond_4c
    iput v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    .line 506
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    goto :goto_29

    .line 510
    .end local v5       #y:F,
    :pswitch_55
    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_29

    .line 512
    iget v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 513
    .local v1, activePointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 514
    .restart local v5       #y:F,
    iget v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 515
    .local v2, deltaY:I
    iput v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastMotionY:F

    .line 517
    invoke-virtual {p0, v8, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollBy(II)V

    goto :goto_29

    .line 521
    .end local v1       #activePointerIndex:I,
    .end local v2       #deltaY:I,
    .end local v5       #y:F,
    :pswitch_6d
    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_29

    .line 522
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 523
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 524
    iget v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    float-to-int v3, v6

    .line 526
    .local v3, initialVelocity:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_94

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mMinimumVelocity:I

    if-le v6, v7, :cond_94

    .line 527
    neg-int v6, v3

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_RollerScrollView;->fling(I)V

    .line 530
    :cond_94
    iput v9, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    .line 531
    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    .line 533
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_29

    .line 534
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 535
    iput-object v10, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_29

    .line 540
    .end local v3       #initialVelocity:I,
    .end local v4       #velocityTracker:Landroid/view/VelocityTracker;,
    :pswitch_a4
    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_29

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_29

    .line 541
    iput v9, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mActivePointerId:I

    .line 542
    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsBeingDragged:Z

    .line 543
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_29

    .line 544
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 545
    iput-object v10, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_29

    .line 550
    :pswitch_bf
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_29

    .line 489
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_6d
        :pswitch_55
        :pswitch_a4
        :pswitch_29
        :pswitch_29
        :pswitch_bf
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 717
    const/16 v4, 0x82

    if-ne p1, v4, :cond_4c

    move v1, v7

    .line 718
    .local v1, down:Z
    :goto_7
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v2

    .line 720
    .local v2, height:I
    if-eqz v1, :cond_4e

    .line 721
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 722
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v0

    .line 723
    .local v0, count:I
    if-lez v0, :cond_36

    .line 724
    sub-int v4, v0, v7

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 725
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_36

    .line 726
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 735
    .end local v0       #count:I,
    .end local v3       #view:Landroid/view/View;,
    :cond_36
    :goto_36
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 737
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1       #down:Z,
    .end local v2       #height:I,
    :cond_4c
    move v1, v6

    .line 717
    goto :goto_7

    .line 730
    .restart local v1       #down:Z,
    .restart local v2       #height:I,
    :cond_4e
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 731
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_36

    .line 732
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_36
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_b

    .line 1145
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_f

    .line 1146
    invoke-direct {p0, p2}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1152
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1153
    return-void

    .line 1149
    :cond_f
    iput-object p2, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_b
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1195
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1198
    invoke-direct {p0, p2, p3}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mIsLayoutDirty:Z

    .line 1204
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1205
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1294
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1295
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->clamp(III)I

    move-result p1

    .line 1296
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/lge/appwidget/Andy_RollerScrollView;->clamp(III)I

    move-result p2

    .line 1297
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1298
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1301
    .end local v0       #child:Landroid/view/View;,
    :cond_3a
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .parameter "fillViewport"

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 268
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mFillViewport:Z

    .line 269
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->requestLayout()V

    .line 271
    :cond_9
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mSmoothScrollingEnabled:Z

    .line 286
    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 935
    :goto_7
    return-void

    .line 918
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 919
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_4e

    .line 920
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 921
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/lge/appwidget/Andy_RollerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 922
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 923
    .local v4, maxY:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 924
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 926
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 927
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->invalidate()V

    .line 934
    .end local v0       #bottom:I,
    .end local v3       #height:I,
    .end local v4       #maxY:I,
    .end local v5       #scrollY:I,
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mLastScroll:J

    goto :goto_7

    .line 929
    :cond_4e
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 930
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RollerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 932
    :cond_5b
    invoke-virtual {p0, p1, p2}, Lcom/lge/appwidget/Andy_RollerScrollView;->scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 944
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/appwidget/Andy_RollerScrollView;->smoothScrollBy(II)V

    .line 945
    return-void
.end method
