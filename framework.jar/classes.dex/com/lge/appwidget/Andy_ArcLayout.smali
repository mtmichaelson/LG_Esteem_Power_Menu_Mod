.class public Lcom/lge/appwidget/Andy_ArcLayout;
.super Landroid/view/ViewGroup;
.source "Andy_ArcLayout.java"


# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;,
        Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;
    }
.end annotation


# static fields
.field private static final ANGLE:I = 0xf

.field private static ANIMATION_DESTINATION:I = 0x0

.field private static final ANIMATION_DURATION_BOUNCING:I = 0x96

.field private static final ANIMATION_DURATION_LONG:I = 0x1f4

.field private static final ANIMATION_DURATION_SHORT:I = 0xfa

.field private static final ENABLE_LOG:Z = false

.field public static final INVALID_POSITION:I = -0x1

.field private static final SCALE_SIZE:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "Andy_ArcLayout"

.field private static final TOUCH_SENSE_LONG_DISTANCE:I = 0x1f4

.field private static final TOUCH_SENSE_MINIMUM_DISTANCE:I = 0x14

.field private static final TOUCH_SENSE_NORMAL_DISTANCE:I = 0x15e

.field private static final TOUCH_SENSE_SHORT_DISTANCE:I = 0x64

.field private static final TOUCH_TYPE_LONG:I = 0x3

.field private static final TOUCH_TYPE_NORMAL:I = 0x1

.field private static final TOUCH_TYPE_SHORT:I = 0x2

.field private static final TOUCH_TYPE_SINGLETAP:I



# instance fields
.field private mDefaultPoint:I

.field private mDownTouchPosition:I

.field private mFirstItem:I

.field private mFirstMotionY:F

.field private mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsBeingDragged:Z

.field private mLastItem:I

.field private mLastMotionY:F

.field private mRectView:Landroid/graphics/Rect;

.field private mReservedPosition:I

.field private mSelectedPosition:I

.field private mTotalLength:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchType:I

.field private mdoSingleTapUp:Z

.field private misAnimation:Z

.field private misChangedItem:Z

.field private misReservedAnimation:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/lge/appwidget/Andy_ArcLayout;->ANIMATION_DESTINATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 51
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    .line 54
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDefaultPoint:I

    .line 57
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    .line 59
    new-instance v0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;-><init>(Lcom/lge/appwidget/Andy_ArcLayout;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    .line 61
    iput-object v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mRectView:Landroid/graphics/Rect;

    .line 66
    iput v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstMotionY:F

    .line 68
    iput v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    .line 71
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    .line 73
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchSlop:I

    .line 75
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misAnimation:Z

    .line 78
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDownTouchPosition:I

    .line 81
    iput-object v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misReservedAnimation:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mReservedPosition:I

    .line 90
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    .line 93
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    .line 95
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misChangedItem:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    .line 115
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mdoSingleTapUp:Z

    .line 122
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->setGestureDetector(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->initArcLayout(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    .line 54
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDefaultPoint:I

    .line 57
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    .line 59
    new-instance v0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;-><init>(Lcom/lge/appwidget/Andy_ArcLayout;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    .line 61
    iput-object v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mRectView:Landroid/graphics/Rect;

    .line 66
    iput v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstMotionY:F

    .line 68
    iput v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    .line 71
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    .line 73
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchSlop:I

    .line 75
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misAnimation:Z

    .line 78
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDownTouchPosition:I

    .line 81
    iput-object v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misReservedAnimation:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mReservedPosition:I

    .line 90
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    .line 93
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    .line 95
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misChangedItem:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    .line 115
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mdoSingleTapUp:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->setGestureDetector(Landroid/content/Context;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->initArcLayout(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method static synthetic access$302(Lcom/lge/appwidget/Andy_ArcLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/appwidget/Andy_ArcLayout;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/appwidget/Andy_ArcLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/appwidget/Andy_ArcLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDefaultPoint:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/appwidget/Andy_ArcLayout;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->trackMotionScroll(I)V

    return-void
.end method

.method private canMoveWidget(FF)Z
    .registers 5
    .parameter "prev"
    .parameter "cur"

    .prologue
    .line 489
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->access$100(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 491
    const/4 v0, 0x0

    .line 494
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private getCenterOfWidget()I
    .registers 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getChildHeight(Landroid/view/View;)I
    .registers 5
    .parameter "child"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    .line 245
    .local v0, lp:Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getDefaultPoint(Landroid/view/View;)I
    .registers 5
    .parameter "child"

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    .line 359
    .local v0, lp:Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;
    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDefaultPoint:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getLimitedMotionScrollAmount(ZI)I
    .registers 9
    .parameter "motionToDown"
    .parameter "deltaY"

    .prologue
    const/4 v5, 0x0

    .line 321
    const/4 v3, 0x0

    .line 322
    .local v3, targetView:Landroid/view/View;
    const/4 v1, 0x0

    .line 323
    .local v1, childBase:I
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getCenterOfWidget()I

    move-result v0

    .line 325
    .local v0, centerOfWidget:I
    if-eqz p1, :cond_19

    .line 328
    iget v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/lit8 v1, v4, 0x2f

    .line 331
    if-lt v1, v0, :cond_27

    move v4, v5

    .line 347
    :goto_18
    return v4

    .line 337
    :cond_19
    iget v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 340
    if-gt v1, v0, :cond_27

    move v4, v5

    .line 341
    goto :goto_18

    .line 345
    :cond_27
    sub-int v2, v0, v1

    .line 347
    .local v2, difference:I
    if-eqz p1, :cond_30

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_18

    :cond_30
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_18
.end method

.method private initArcLayout(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 868
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->setFocusable(Z)V

    .line 869
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->setDescendantFocusability(I)V

    .line 870
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->setWillNotDraw(Z)V

    .line 873
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->setStaticTransformationsEnabled(Z)V

    .line 874
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 877
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 878
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchSlop:I

    .line 879
    return-void
.end method

.method private isChangedItem(II)Z
    .registers 4
    .parameter "prev"
    .parameter "cur"

    .prologue
    .line 402
    if-eq p1, p2, :cond_4

    .line 403
    const/4 v0, 0x1

    .line 406
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private moveNext(I)Z
    .registers 4
    .parameter "step"

    .prologue
    .line 817
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    .line 818
    .local v0, count:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    if-ge v1, v0, :cond_11

    .line 819
    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->scrollToChild(I)Z

    move-result v1

    .line 822
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private movePrevious(I)Z
    .registers 3
    .parameter "step"

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    if-lez v0, :cond_12

    .line 810
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->scrollToChild(I)Z

    move-result v0

    .line 813
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private offsetChildrenTopAndDown(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 310
    iget v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    add-int/lit8 v1, v3, 0x1

    .line 311
    .local v1, count:I
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    .local v2, index:I
    :goto_6
    if-ge v2, v1, :cond_1a

    .line 312
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_17

    .line 314
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 311
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 317
    .end local v0       #child:Landroid/view/View;,
    :cond_1a
    return-void
.end method

.method private onChangedLayout(I)I
    .registers 13
    .parameter "position"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v5

    .line 203
    .local v5, count:I
    const/4 v8, 0x1

    .line 205
    .local v8, savedFirstItem:Z
    const/4 v6, 0x0

    .local v6, index:I
    :goto_6
    if-ge v6, v5, :cond_45

    .line 206
    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_42

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    .line 210
    .local v7, lp:Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 211
    .local v2, childLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v3, v2, v9

    .line 212
    .local v3, childRight:I
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    add-int v4, v9, p1

    .line 213
    .local v4, childTop:I
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildHeight(Landroid/view/View;)I

    move-result v9

    add-int v1, v4, v9

    .line 215
    .local v1, childBottom:I
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr p1, v9

    .line 217
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 219
    if-eqz v8, :cond_40

    .line 220
    iput v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    .line 221
    const/4 v8, 0x0

    .line 224
    :cond_40
    iput v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    .line 205
    .end local v1       #childBottom:I,
    .end local v2       #childLeft:I,
    .end local v3       #childRight:I,
    .end local v4       #childTop:I,
    .end local v7       #lp:Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;,
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 228
    .end local v0       #child:Landroid/view/View;,
    :cond_45
    return p1
.end method

.method private onUnChangedLayout()V
    .registers 8

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v1

    .line 234
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_5
    if-ge v2, v1, :cond_29

    .line 235
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_26

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 234
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 240
    .end local v0       #child:Landroid/view/View;,
    :cond_29
    return-void
.end method

.method private onUp()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->access$000(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 287
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->scrollIntoSlots()V

    .line 289
    :cond_f
    return-void
.end method

.method private pointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 922
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 923
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 924
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 925
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 928
    :cond_d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v1

    .line 929
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, index:I
    :goto_14
    if-ltz v3, :cond_30

    .line 930
    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 931
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2d

    .line 932
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 933
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 934
    iget v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    add-int/2addr v4, v3

    .line 939
    .end local v0       #child:Landroid/view/View;,
    :goto_2c
    return v4

    .line 929
    .restart local v0       #child:Landroid/view/View;,
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 939
    .end local v0       #child:Landroid/view/View;,
    :cond_30
    const/4 v4, -0x1

    goto :goto_2c
.end method

.method private scrollIntoSlots()V
    .registers 5

    .prologue
    .line 294
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 297
    .local v1, distance:I
    if-eqz v1, :cond_24

    .line 298
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misAnimation:Z

    if-nez v2, :cond_1c

    .line 299
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startUsingDistance(I)V

    .line 306
    :goto_1b
    return-void

    .line 301
    :cond_1c
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    const/16 v3, 0xfa

    invoke-virtual {v2, v1, v3}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startUsingDistance(II)V

    goto :goto_1b

    .line 304
    :cond_24
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1b
.end method

.method private scrollToChild(I)Z
    .registers 6
    .parameter "childPosition"

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_19

    .line 830
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 832
    .local v1, distance:I
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    const/16 v3, 0xfa

    invoke-virtual {v2, v1, v3}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startUsingDistance(II)V

    .line 834
    const/4 v2, 0x1

    .line 837
    .end local v1       #distance:I,
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private setChildrenLocation()V
    .registers 6

    .prologue
    .line 250
    iget v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    add-int/lit8 v0, v3, 0x1

    .line 251
    .local v0, count:I
    const/4 v2, 0x0

    .line 252
    .local v2, prevHeight:I
    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    .line 254
    .local v1, index:I
    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    :goto_9
    iget v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    if-ge v1, v3, :cond_25

    .line 255
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_22

    .line 256
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 254
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 260
    :cond_25
    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    :goto_27
    if-ge v1, v0, :cond_35

    .line 261
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 263
    :cond_35
    return-void
.end method

.method private setFlingType(FF)V
    .registers 6
    .parameter "prev"
    .parameter "cur"

    .prologue
    const/high16 v2, 0x43fa

    .line 498
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 500
    .local v0, distance:F
    const/high16 v1, 0x42c8

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 502
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    .line 512
    :cond_11
    :goto_11
    return-void

    .line 503
    :cond_12
    const/high16 v1, 0x43af

    cmpl-float v1, v0, v1

    if-lez v1, :cond_20

    cmpg-float v1, v0, v2

    if-gez v1, :cond_20

    .line 506
    const/4 v1, 0x1

    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    goto :goto_11

    .line 507
    :cond_20
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_11

    .line 509
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    goto :goto_11
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 724
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 725
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 726
    return-void
.end method

.method private setSelectionToCenterChild(Z)V
    .registers 11
    .parameter "toDown"

    .prologue
    const/16 v8, 0x8

    .line 364
    iget v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    .line 365
    .local v4, prevPosition:I
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 366
    .local v3, nearChildView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 368
    .local v2, nearChild:I
    if-eqz p1, :cond_50

    .line 369
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    if-ne v5, v6, :cond_17

    .line 399
    :cond_16
    :goto_16
    return-void

    .line 373
    :cond_17
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    const/4 v6, 0x1

    sub-int v1, v5, v6

    .local v1, index:I
    :goto_1c
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    if-lt v1, v5, :cond_44

    .line 374
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_4d

    .line 376
    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_4d

    .line 377
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    .line 398
    .end local v0       #child:Landroid/view/View;,
    :cond_44
    :goto_44
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    invoke-direct {p0, v4, v5}, Lcom/lge/appwidget/Andy_ArcLayout;->isChangedItem(II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misChangedItem:Z

    goto :goto_16

    .line 373
    .restart local v0       #child:Landroid/view/View;,
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 383
    .end local v0       #child:Landroid/view/View;,
    .end local v1       #index:I,
    :cond_50
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    if-eq v5, v6, :cond_16

    .line 387
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    add-int/lit8 v1, v5, 0x1

    .restart local v1       #index:I,
    :goto_5a
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    if-gt v1, v5, :cond_44

    .line 388
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 389
    .restart local v0       #child:Landroid/view/View;,
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_83

    .line 390
    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_83

    .line 391
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    goto :goto_44

    .line 387
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a
.end method

.method private trackMotionScroll(I)V
    .registers 6
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 586
    :goto_7
    return-void

    .line 574
    :cond_8
    if-lez p1, :cond_23

    const/4 v2, 0x1

    move v1, v2

    .line 576
    .local v1, toDown:Z
    :goto_c
    invoke-direct {p0, v1, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 577
    .local v0, limitedDeltaY:I
    if-eq v0, p1, :cond_17

    .line 578
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-static {v2, v3}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->access$200(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;Z)V

    .line 581
    :cond_17
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->offsetChildrenTopAndDown(I)V

    .line 583
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->setSelectionToCenterChild(Z)V

    .line 585
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    .end local v0       #limitedDeltaY:I,
    .end local v1       #toDown:Z,
    :cond_23
    move v1, v3

    .line 574
    goto :goto_c
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 272
    instance-of v0, p1, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 730
    const/4 v0, 0x1

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 735
    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastItem:I

    .line 736
    .local v1, count:I
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, child:Landroid/view/View;
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    if-eq v2, v1, :cond_13

    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    sub-int v3, v1, v4

    if-ne v2, v3, :cond_16

    .line 740
    :cond_13
    sub-int v2, v1, v4

    .line 748
    :goto_15
    return v2

    .line 744
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_21

    .line 745
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 748
    :cond_21
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    goto :goto_15
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 267
    new-instance v0, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 277
    new-instance v0, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generatedDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 281
    new-instance v0, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/lge/appwidget/Andy_ArcLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 18
    .parameter "child"
    .parameter "t"

    .prologue
    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v6

    .line 768
    .local v6, right:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 769
    .local v2, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 770
    .local v1, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v10

    .line 772
    .local v10, top:I
    iget v12, p0, Landroid/view/View;->mTop:I

    if-ge v12, v10, :cond_18

    iget v12, p0, Landroid/view/View;->mBottom:I

    if-lt v10, v12, :cond_20

    :cond_18
    iget v12, p0, Landroid/view/View;->mTop:I

    if-ge v12, v1, :cond_63

    iget v12, p0, Landroid/view/View;->mBottom:I

    if-ge v1, v12, :cond_63

    .line 774
    :cond_20
    sub-int v12, v6, v2

    div-int/lit8 v12, v12, 0x2

    int-to-float v4, v12

    .line 775
    .local v4, pivotX:F
    sub-int v12, v1, v10

    div-int/lit8 v12, v12, 0x2

    int-to-float v5, v12

    .line 776
    .local v5, pivotY:F
    iget v12, p0, Landroid/view/View;->mRight:I

    iget v13, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v8, v12

    .line 777
    .local v8, scalePivotX:F
    iget v12, p0, Landroid/view/View;->mBottom:I

    iget v13, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v9, v12

    .line 779
    .local v9, scalePivotY:F
    invoke-direct/range {p0 .. p1}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v12, v10

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 781
    .local v11, value:F
    const/high16 v12, 0x4170

    mul-float v0, v11, v12

    .line 782
    .local v0, angle:F
    const/high16 v12, 0x3f80

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3e4ccccd

    mul-float/2addr v13, v14

    sub-float v7, v12, v13

    .line 784
    .local v7, scale:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 786
    .local v3, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v3, v7, v7, v8, v9}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 787
    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 789
    const/4 v12, 0x1

    .line 792
    .end local v0       #angle:F,
    .end local v3       #matrix:Landroid/graphics/Matrix;,
    .end local v4       #pivotX:F,
    .end local v5       #pivotY:F,
    .end local v7       #scale:F,
    .end local v8       #scalePivotX:F,
    .end local v9       #scalePivotY:F,
    .end local v11       #value:F,
    :goto_62
    return v12

    :cond_63
    const/4 v12, 0x0

    goto :goto_62
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 758
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->stop(Z)V

    .line 763
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-virtual {v0, v2}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->stop(Z)V

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDownTouchPosition:I

    .line 522
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mdoSingleTapUp:Z

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 535
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 536
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startUsingVelocity(I)V

    :cond_d
    move v0, v2

    .line 543
    :goto_e
    return v0

    .line 537
    :cond_f
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    if-ne v0, v2, :cond_d

    .line 538
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x44fa

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 539
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_27

    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->moveNext(I)Z

    move-result v0

    goto :goto_e

    :cond_27
    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->movePrevious(I)Z

    move-result v0

    goto :goto_e
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 412
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_f

    move v3, v5

    .line 437
    :goto_e
    return v3

    .line 416
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 418
    .local v1, y:F
    packed-switch v0, :pswitch_data_44

    .line 437
    :cond_16
    :goto_16
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    goto :goto_e

    .line 420
    :pswitch_19
    iget v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 421
    .local v2, yDiff:I
    iget v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchSlop:I

    if-le v2, v3, :cond_16

    .line 422
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    goto :goto_16

    .line 426
    .end local v2       #yDiff:I,
    :pswitch_29
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misChangedItem:Z

    .line 427
    iput v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    .line 428
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    .line 429
    iget-object v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->access$000(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3f

    move v3, v5

    :goto_3c
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    goto :goto_16

    :cond_3f
    move v3, v4

    goto :goto_3c

    .line 433
    :pswitch_41
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mIsBeingDragged:Z

    goto :goto_16

    .line 418
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_29
        :pswitch_41
        :pswitch_19
        :pswitch_41
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 798
    packed-switch p1, :pswitch_data_14

    .line 805
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 800
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->movePrevious(I)Z

    move-result v0

    goto :goto_8

    .line 802
    :pswitch_e
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->moveNext(I)Z

    move-result v0

    goto :goto_8

    .line 798
    nop

    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 176
    if-nez p1, :cond_1d

    .line 177
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->onUnChangedLayout()V

    .line 189
    :goto_5
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misReservedAnimation:Z

    if-eqz v0, :cond_d

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->setAnimation(Z)V

    .line 194
    :cond_d
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mReservedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 195
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mReservedPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->setSelection(I)V

    .line 198
    :cond_17
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 199
    return-void

    .line 179
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    .line 180
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0xde

    div-int/lit16 v0, v0, 0x320

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDefaultPoint:I

    .line 181
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDefaultPoint:I

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->onChangedLayout(I)I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    .line 183
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mRectView:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->setChildrenLocation()V

    goto :goto_5
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 548
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v3

    .line 142
    .local v3, count:I
    const/4 v5, 0x0

    .line 143
    .local v5, maxHeight:I
    const/4 v6, 0x0

    .line 144
    .local v6, maxWidth:I
    const/4 v7, 0x0

    .line 147
    .local v7, y:I
    invoke-virtual {p0, p1, p2}, Lcom/lge/appwidget/Andy_ArcLayout;->measureChildren(II)V

    .line 150
    const/4 v4, 0x0

    .local v4, index:I
    :goto_b
    if-ge v4, v3, :cond_33

    .line 151
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_30

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 154
    .local v2, childRight:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v1, v8, v7

    .line 156
    .local v1, childBottom:I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 157
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 150
    .end local v1       #childBottom:I,
    .end local v2       #childRight:I,
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 164
    .end local v0       #child:Landroid/view/View;,
    :cond_33
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 165
    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 168
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 169
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 171
    invoke-static {v6, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->resolveSize(II)I

    move-result v8

    invoke-static {v5, p2}, Lcom/lge/appwidget/Andy_ArcLayout;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/lge/appwidget/Andy_ArcLayout;->setMeasuredDimension(II)V

    .line 172
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 552
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 556
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mdoSingleTapUp:Z

    .line 558
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    if-nez v0, :cond_1b

    .line 559
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDownTouchPosition:I

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDownTouchPosition:I

    if-ltz v0, :cond_1b

    .line 560
    iget v0, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstItem:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->scrollToChild(I)Z

    move v0, v2

    .line 566
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    .line 444
    iget-object v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 446
    .local v3, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 447
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 449
    .local v0, action:I
    packed-switch v0, :pswitch_data_64

    .line 485
    :cond_12
    :goto_12
    return v3

    .line 451
    :pswitch_13
    iput v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstMotionY:F

    .line 452
    iput v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    goto :goto_12

    .line 455
    :pswitch_18
    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    sub-float/2addr v6, v5

    float-to-int v6, v6

    mul-int/lit8 v1, v6, -0x1

    .line 456
    .local v1, deltaY:I
    iput v5, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    .line 458
    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstMotionY:F

    iget v7, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    invoke-direct {p0, v6, v7}, Lcom/lge/appwidget/Andy_ArcLayout;->canMoveWidget(FF)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 459
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->trackMotionScroll(I)V

    .line 460
    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstMotionY:F

    iget v7, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    invoke-direct {p0, v6, v7}, Lcom/lge/appwidget/Andy_ArcLayout;->setFlingType(FF)V

    goto :goto_12

    .line 466
    .end local v1       #deltaY:I,
    :pswitch_35
    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    if-ne v6, v8, :cond_58

    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mdoSingleTapUp:Z

    if-nez v6, :cond_58

    .line 468
    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mLastMotionY:F

    iget v7, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFirstMotionY:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5c

    const/4 v6, 0x1

    move v2, v6

    .line 469
    .local v2, isMoveToDown:Z
    :goto_49
    const/4 v4, 0x0

    .line 470
    .local v4, step:I
    iget v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTouchType:I

    if-ne v6, v8, :cond_53

    iget-boolean v6, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misChangedItem:Z

    if-nez v6, :cond_53

    .line 471
    const/4 v4, 0x1

    .line 474
    :cond_53
    if-eqz v2, :cond_5f

    .line 475
    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_ArcLayout;->movePrevious(I)Z

    .line 481
    .end local v2       #isMoveToDown:Z,
    .end local v4       #step:I,
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->onUp()V

    goto :goto_12

    .line 468
    :cond_5c
    const/4 v6, 0x0

    move v2, v6

    goto :goto_49

    .line 477
    .restart local v2       #isMoveToDown:Z,
    .restart local v4       #step:I,
    :cond_5f
    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_ArcLayout;->moveNext(I)Z

    goto :goto_58

    .line 449
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_13
        :pswitch_35
        :pswitch_18
        :pswitch_35
    .end packed-switch
.end method

.method public setAnimation(Z)V
    .registers 6
    .parameter "value"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 894
    if-eqz p1, :cond_32

    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misAnimation:Z

    if-nez v2, :cond_32

    .line 899
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    if-nez v2, :cond_e

    .line 900
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misReservedAnimation:Z

    .line 919
    :goto_d
    return-void

    .line 904
    :cond_e
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misAnimation:Z

    .line 906
    sget v2, Lcom/lge/appwidget/Andy_ArcLayout;->ANIMATION_DESTINATION:I

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 907
    .local v0, destination:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    sub-int v1, v2, v3

    .line 909
    .local v1, distance:I
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startUsingDistance(II)V

    .line 918
    .end local v0       #destination:Landroid/view/View;,
    .end local v1       #distance:I,
    :cond_2e
    :goto_2e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->misReservedAnimation:Z

    goto :goto_d

    .line 910
    :cond_32
    if-nez p1, :cond_2e

    .line 915
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mFlingRunnable:Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;

    invoke-virtual {v2, v3}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->stop(Z)V

    goto :goto_2e
.end method

.method public setSelection(I)V
    .registers 6
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 842
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->setVisibility(I)V

    .line 844
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 851
    iget v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mTotalLength:I

    if-nez v2, :cond_11

    .line 852
    iput p1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mReservedPosition:I

    .line 863
    :goto_10
    return-void

    .line 856
    :cond_11
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->getDefaultPoint(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 857
    .local v1, distance:I
    iput p1, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mSelectedPosition:I

    .line 858
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->offsetChildrenTopAndDown(I)V

    .line 861
    .end local v1       #distance:I,
    :cond_20
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/appwidget/Andy_ArcLayout;->mReservedPosition:I

    .line 862
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ArcLayout;->setVisibility(I)V

    goto :goto_10
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 883
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ArcLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_c

    .line 884
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ArcLayout;->setBackgroundColor(I)V

    .line 887
    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    .line 889
    return-void
.end method
