.class public Landroid/widget/Andy_VerticalGallery;
.super Landroid/widget/Gallery;
.source "Andy_VerticalGallery.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Andy_VerticalGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "VerticalGallery"

.field private static final localLOGV:Z



# instance fields
.field private mAnimationDuration:I

.field private mBottomMost:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mReceivedInvokeKeyDown:Z

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTopMost:I

.field private mUnselectedAlpha:F



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Andy_VerticalGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 179
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Andy_VerticalGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput v6, p0, Landroid/widget/Andy_VerticalGallery;->mSpacing:I

    .line 79
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Andy_VerticalGallery;->mAnimationDuration:I

    .line 116
    new-instance v5, Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;-><init>(Landroid/widget/Andy_VerticalGallery;)V

    iput-object v5, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    .line 122
    new-instance v5, Landroid/widget/Andy_VerticalGallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Andy_VerticalGallery$1;-><init>(Landroid/widget/Andy_VerticalGallery;)V

    iput-object v5, p0, Landroid/widget/Andy_VerticalGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 147
    iput-boolean v7, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackDuringFling:Z

    .line 152
    iput-boolean v7, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 185
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Andy_VerticalGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 186
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 188
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 192
    .local v2, index:I
    if-ltz v2, :cond_39

    .line 193
    invoke-virtual {p0, v2}, Landroid/widget/Andy_VerticalGallery;->setGravity(I)V

    .line 196
    :cond_39
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 198
    .local v1, animationDuration:I
    if-lez v1, :cond_42

    .line 199
    invoke-virtual {p0, v1}, Landroid/widget/Andy_VerticalGallery;->setAnimationDuration(I)V

    .line 202
    :cond_42
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 204
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/Andy_VerticalGallery;->setSpacing(I)V

    .line 206
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 208
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/Andy_VerticalGallery;->setUnselectedAlpha(F)V

    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 217
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 218
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Andy_VerticalGallery;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Andy_VerticalGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Andy_VerticalGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Andy_VerticalGallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Andy_VerticalGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Andy_VerticalGallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Andy_VerticalGallery;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Andy_VerticalGallery;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/Andy_VerticalGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Andy_VerticalGallery;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Andy_VerticalGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Andy_VerticalGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .registers 9
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 831
    if-eqz p2, :cond_13

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    move v3, v4

    .line 832
    .local v3, myWidth:I
    :goto_5
    if-eqz p2, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move v2, v4

    .line 834
    .local v2, childWidth:I
    :goto_c
    const/4 v1, 0x0

    .line 836
    .local v1, childLeft:I
    iget v4, p0, Landroid/widget/Andy_VerticalGallery;->mGravity:I

    packed-switch v4, :pswitch_data_44

    .line 849
    :goto_12
    :pswitch_12
    return v1

    .line 831
    .end local v1       #childLeft:I,
    .end local v2       #childWidth:I,
    .end local v3       #myWidth:I,
    :cond_13
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getWidth()I

    move-result v4

    move v3, v4

    goto :goto_5

    .line 832
    .restart local v3       #myWidth:I,
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    move v2, v4

    goto :goto_c

    .line 838
    .restart local v1       #childLeft:I,
    .restart local v2       #childWidth:I,
    :pswitch_1f
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 839
    goto :goto_12

    .line 841
    :pswitch_24
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 843
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v0, 0x2

    add-int v1, v4, v5

    .line 844
    goto :goto_12

    .line 846
    .end local v0       #availableSpace:I,
    :pswitch_3a
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    sub-int v1, v4, v2

    goto :goto_12

    .line 836
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_24
        :pswitch_12
        :pswitch_1f
        :pswitch_12
        :pswitch_3a
    .end packed-switch
.end method

.method private detachOffScreenChildren(Z)V
    .registers 12
    .parameter "toTop"

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v6

    .line 469
    .local v6, numChildren:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 470
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 471
    .local v7, start:I
    const/4 v1, 0x0

    .line 473
    .local v1, count:I
    if-eqz p1, :cond_30

    .line 474
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    .line 475
    .local v4, galleryTop:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d
    if-ge v5, v6, :cond_19

    .line 476
    invoke-virtual {p0, v5}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v4, :cond_24

    .line 498
    .end local v0       #child:Landroid/view/View;,
    .end local v4       #galleryTop:I,
    :cond_19
    invoke-virtual {p0, v7, v1}, Landroid/widget/Andy_VerticalGallery;->detachViewsFromParent(II)V

    .line 500
    if-eqz p1, :cond_23

    .line 501
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 503
    :cond_23
    return-void

    .line 480
    .restart local v0       #child:Landroid/view/View;,
    .restart local v4       #galleryTop:I,
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 481
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 485
    .end local v0       #child:Landroid/view/View;,
    .end local v4       #galleryTop:I,
    .end local v5       #i:I,
    :cond_30
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v3, v8, v9

    .line 486
    .local v3, galleryBottom:I
    const/4 v8, 0x1

    sub-int v5, v6, v8

    .restart local v5       #i:I,
    :goto_3b
    if-ltz v5, :cond_19

    .line 487
    invoke-virtual {p0, v5}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 488
    .restart local v0       #child:Landroid/view/View;,
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v3, :cond_19

    .line 491
    move v7, v5

    .line 492
    add-int/lit8 v1, v1, 0x1

    .line 493
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 486
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1096
    const/4 v6, 0x0

    .line 1098
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_11

    .line 1099
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1103
    :cond_11
    if-nez v6, :cond_1e

    .line 1104
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1105
    invoke-super {p0, p0}, Landroid/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1108
    :cond_1e
    if-eqz v6, :cond_24

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->performHapticFeedback(I)Z

    .line 1112
    :cond_24
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1027
    if-eqz p1, :cond_6

    .line 1028
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1031
    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->setPressed(Z)V

    .line 1032
    return-void
.end method

.method private dispatchUnpress()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1036
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_14

    .line 1037
    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1036
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1040
    :cond_14
    invoke-virtual {p0, v3}, Landroid/widget/Andy_VerticalGallery;->setPressed(Z)V

    .line 1041
    return-void
.end method

.method private fillToGalleryBottom()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 694
    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mSpacing:I

    .line 695
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 696
    .local v2, galleryBottom:I
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v4

    .line 697
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 700
    .local v5, numItems:I
    sub-int v7, v4, v9

    invoke-virtual {p0, v7}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 704
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_39

    .line 705
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v0, v7, v4

    .line 706
    .local v0, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 713
    .local v1, curTopEdge:I
    :goto_24
    if-ge v1, v2, :cond_44

    if-ge v0, v5, :cond_44

    .line 714
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v0, v7

    invoke-direct {p0, v0, v7, v1, v9}, Landroid/widget/Andy_VerticalGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 718
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 708
    .end local v0       #curPosition:I,
    .end local v1       #curTopEdge:I,
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v0, v7, v9

    .restart local v0       #curPosition:I,
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 709
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 710
    .restart local v1       #curTopEdge:I,
    iput-boolean v9, p0, Landroid/widget/Andy_VerticalGallery;->mShouldStopFling:Z

    goto :goto_24

    .line 721
    :cond_44
    return-void
.end method

.method private fillToGalleryTop()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 662
    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mSpacing:I

    .line 663
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 666
    .local v2, galleryTop:I
    invoke-virtual {p0, v7}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 670
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_2d

    .line 671
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v5, v8

    .line 672
    .local v1, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    .line 680
    .local v0, curBottomEdge:I
    :goto_16
    if-le v0, v2, :cond_3a

    if-ltz v1, :cond_3a

    .line 681
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Landroid/widget/Andy_VerticalGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 685
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 688
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    .line 689
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 675
    .end local v0       #curBottomEdge:I,
    .end local v1       #curPosition:I,
    :cond_2d
    const/4 v1, 0x0

    .line 676
    .restart local v1       #curPosition:I,
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v5, v6

    .line 677
    .restart local v0       #curBottomEdge:I,
    iput-boolean v8, p0, Landroid/widget/Andy_VerticalGallery;->mShouldStopFling:Z

    goto :goto_16

    .line 691
    :cond_3a
    return-void
.end method

.method private getCenterOfGallery()I
    .registers 3

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getHeight()I

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

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "offset"
    .parameter "y"
    .parameter "fromTop"

    .prologue
    .line 743
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_2a

    .line 744
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 747
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 750
    .local v2, childTop:I
    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mBottomMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Andy_VerticalGallery;->mBottomMost:I

    .line 752
    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mTopMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Andy_VerticalGallery;->mTopMost:I

    .line 755
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Andy_VerticalGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 767
    .end local v0       #child:Landroid/view/View;,
    .end local v2       #childTop:I,
    .local v1, child:Landroid/view/View;
    :goto_29
    return-object v1

    .line 762
    .end local v1       #child:Landroid/view/View;,
    :cond_2a
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 765
    .restart local v0       #child:Landroid/view/View;,
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Andy_VerticalGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 767
    .end local v0       #child:Landroid/view/View;,
    .restart local v1       #child:Landroid/view/View;,
    goto :goto_29
.end method

.method private onFinishedMovement()V
    .registers 2

    .prologue
    .line 525
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_a

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    .line 529
    invoke-super {p0}, Landroid/widget/Gallery;->selectionChanged()V

    .line 531
    :cond_a
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->invalidate()V

    .line 532
    return-void
.end method

.method private scrollIntoSlots()V
    .registers 5

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_b

    .line 522
    :cond_a
    :goto_a
    return-void

    .line 513
    :cond_b
    iget-object v3, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Andy_VerticalGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 514
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->getCenterOfGallery()I

    move-result v2

    .line 516
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 517
    .local v0, scrollAmount:I
    if-eqz v0, :cond_1f

    .line 518
    iget-object v3, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_a

    .line 520
    :cond_1f
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->onFinishedMovement()V

    goto :goto_a
.end method

.method private scrollToChild(I)Z
    .registers 6
    .parameter "childPosition"

    .prologue
    .line 1206
    invoke-virtual {p0, p1}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1208
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1209
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Andy_VerticalGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1210
    .local v1, distance:I
    iget-object v2, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1211
    const/4 v2, 0x1

    .line 1214
    .end local v1       #distance:I,
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private setSelectionToCenterChild()V
    .registers 11

    .prologue
    .line 547
    iget-object v7, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    .line 548
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_7

    .line 585
    :cond_6
    :goto_6
    return-void

    .line 550
    :cond_7
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->getCenterOfGallery()I

    move-result v3

    .line 553
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v3, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v3, :cond_6

    .line 558
    :cond_17
    const v2, 0x7fffffff

    .line 559
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 560
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    .local v4, i:I
    :goto_22
    if-ltz v4, :cond_35

    .line 562
    invoke-virtual {p0, v4}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v3, :cond_47

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v3, :cond_47

    .line 566
    move v6, v4

    .line 578
    .end local v0       #child:Landroid/view/View;,
    :cond_35
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 580
    .local v5, newPos:I
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_6

    .line 581
    invoke-virtual {p0, v5}, Landroid/widget/Andy_VerticalGallery;->setSelectedPositionInt(I)V

    .line 582
    invoke-virtual {p0, v5}, Landroid/widget/Andy_VerticalGallery;->setNextSelectedPositionInt(I)V

    .line 583
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->checkSelectionChanged()V

    goto :goto_6

    .line 570
    .end local v5       #newPos:I,
    .restart local v0       #child:Landroid/view/View;,
    :cond_47
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 572
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_61

    .line 573
    move v2, v1

    .line 574
    move v6, v4

    .line 560
    :cond_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_22
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .registers 16
    .parameter "child"
    .parameter "offset"
    .parameter "y"
    .parameter "fromTop"

    .prologue
    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Gallery$LayoutParams;

    .line 788
    .local v7, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v7, :cond_e

    .line 789
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7       #lp:Landroid/widget/Gallery$LayoutParams;,
    check-cast v7, Landroid/widget/Gallery$LayoutParams;

    .line 792
    .restart local v7       #lp:Landroid/widget/Gallery$LayoutParams;,
    :cond_e
    if-eqz p4, :cond_57

    const/4 v8, -0x1

    :goto_11
    invoke-virtual {p0, p1, v8, v7}, Landroid/widget/Andy_VerticalGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 794
    if-nez p2, :cond_59

    const/4 v8, 0x1

    :goto_17
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 797
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 799
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 803
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 809
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Andy_VerticalGallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 810
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v3, v2, v8

    .line 812
    .local v3, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 813
    .local v6, height:I
    if-eqz p4, :cond_5b

    .line 814
    move v4, p3

    .line 815
    .local v4, childTop:I
    add-int v0, v4, v6

    .line 821
    .local v0, childBottom:I
    :goto_53
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 822
    return-void

    .line 792
    .end local v0       #childBottom:I,
    .end local v1       #childHeightSpec:I,
    .end local v2       #childLeft:I,
    .end local v3       #childRight:I,
    .end local v4       #childTop:I,
    .end local v5       #childWidthSpec:I,
    .end local v6       #height:I,
    :cond_57
    const/4 v8, 0x0

    goto :goto_11

    .line 794
    :cond_59
    const/4 v8, 0x0

    goto :goto_17

    .line 817
    .restart local v1       #childHeightSpec:I,
    .restart local v2       #childLeft:I,
    .restart local v3       #childRight:I,
    .restart local v5       #childWidthSpec:I,
    .restart local v6       #height:I,
    :cond_5b
    sub-int v4, p3, v6

    .line 818
    .restart local v4       #childTop:I,
    move v0, p3

    .restart local v0       #childBottom:I,
    goto :goto_53
.end method

.method private updateSelectedItemMetadata()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1227
    iget-object v1, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    .line 1229
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    .line 1230
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_12

    .line 1253
    :cond_11
    :goto_11
    return-void

    .line 1234
    :cond_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1235
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1237
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1238
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1243
    :cond_21
    if-eqz v1, :cond_11

    .line 1246
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1250
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_11
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 316
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1119
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 1058
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1059
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1061
    :cond_9
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 1051
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 337
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 328
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 322
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 6
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1272
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1275
    .local v0, selectedIndex:I
    if-gez v0, :cond_a

    move v1, p2

    .line 1285
    :goto_9
    return v1

    .line 1277
    :cond_a
    const/4 v1, 0x1

    sub-int v1, p1, v1

    if-ne p2, v1, :cond_11

    move v1, v0

    .line 1279
    goto :goto_9

    .line 1280
    :cond_11
    if-lt p2, v0, :cond_16

    .line 1282
    add-int/lit8 v1, p2, 0x1

    goto :goto_9

    :cond_16
    move v1, p2

    .line 1285
    goto :goto_9
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 290
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_e

    const/high16 v0, 0x3f80

    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 292
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_e
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mUnselectedAlpha:F

    goto :goto_9
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .registers 11
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x0

    .line 402
    if-eqz p1, :cond_14

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    .line 403
    .local v3, extremeItemPosition:I
    :goto_8
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 405
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_16

    move v5, p2

    .line 428
    :goto_13
    return v5

    .end local v1       #extremeChild:Landroid/view/View;,
    .end local v3       #extremeItemPosition:I,
    :cond_14
    move v3, v7

    .line 402
    goto :goto_8

    .line 409
    .restart local v1       #extremeChild:Landroid/view/View;,
    .restart local v3       #extremeItemPosition:I,
    :cond_16
    invoke-static {v1}, Landroid/widget/Andy_VerticalGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 410
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->getCenterOfGallery()I

    move-result v4

    .line 412
    .local v4, galleryCenter:I
    if-eqz p1, :cond_24

    .line 413
    if-gt v2, v4, :cond_28

    move v5, v7

    .line 416
    goto :goto_13

    .line 419
    :cond_24
    if-lt v2, v4, :cond_28

    move v5, v7

    .line 422
    goto :goto_13

    .line 426
    :cond_28
    sub-int v0, v4, v2

    .line 428
    .local v0, centerDifference:I
    if-eqz p1, :cond_31

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_13

    :cond_31
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_13
.end method

.method layout(IZ)V
    .registers 10
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 600
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 601
    .local v1, childrenTop:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 603
    .local v0, childrenHeight:I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1c

    .line 604
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->handleDataChanged()V

    .line 608
    :cond_1c
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_24

    .line 609
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->resetList()V

    .line 659
    :goto_23
    return-void

    .line 614
    :cond_24
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2d

    .line 615
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Andy_VerticalGallery;->setSelectedPositionInt(I)V

    .line 619
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->recycleAllViews()V

    .line 623
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->detachAllViewsFromParent()V

    .line 629
    iput v6, p0, Landroid/widget/Andy_VerticalGallery;->mBottomMost:I

    .line 630
    iput v6, p0, Landroid/widget/Andy_VerticalGallery;->mTopMost:I

    .line 638
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 639
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Andy_VerticalGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 642
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 643
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 645
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->fillToGalleryBottom()V

    .line 646
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->fillToGalleryTop()V

    .line 649
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 651
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->invalidate()V

    .line 652
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->checkSelectionChanged()V

    .line 654
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 655
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 656
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Andy_VerticalGallery;->setNextSelectedPositionInt(I)V

    .line 658
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->updateSelectedItemMetadata()V

    goto :goto_23
.end method

.method moveNext()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1197
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_18

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    .line 1198
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Andy_VerticalGallery;->scrollToChild(I)Z

    move v0, v2

    .line 1201
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method movePrevious()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1188
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_14

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_14

    .line 1189
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/widget/Andy_VerticalGallery;->scrollToChild(I)Z

    move v0, v2

    .line 1192
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public offsetChildrenTopAndBottom(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_13

    .line 443
    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 442
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 445
    :cond_13
    return-void
.end method

.method onCancel()V
    .registers 1

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->onUp()V

    .line 997
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 963
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->stop(Z)V

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Andy_VerticalGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    .line 968
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2b

    .line 969
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchView:Landroid/view/View;

    .line 970
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 974
    :cond_2b
    iput-boolean v2, p0, Landroid/widget/Andy_VerticalGallery;->mIsFirstScroll:Z

    .line 977
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 898
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_10

    .line 902
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 905
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_10

    iput-boolean v2, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    .line 909
    :cond_10
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->startUsingVelocity(I)V

    .line 911
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1292
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Gallery;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1299
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1300
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1303
    :cond_e
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1129
    sparse-switch p1, :sswitch_data_24

    .line 1149
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 1132
    :sswitch_9
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->movePrevious()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1133
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->playSoundEffect(I)V

    :cond_13
    move v0, v1

    .line 1135
    goto :goto_8

    .line 1138
    :sswitch_15
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->moveNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1139
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->playSoundEffect(I)V

    :cond_1f
    move v0, v1

    .line 1141
    goto :goto_8

    .line 1145
    :sswitch_21
    iput-boolean v1, p0, Landroid/widget/Andy_VerticalGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_4

    .line 1129
    :sswitch_data_24
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_15
        0x17 -> :sswitch_21
        0x42 -> :sswitch_21
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1155
    sparse-switch p1, :sswitch_data_3e

    .line 1184
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_7
    return v1

    .line 1159
    :sswitch_8
    iget-boolean v1, p0, Landroid/widget/Andy_VerticalGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_39

    .line 1160
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_39

    .line 1162
    iget-object v1, p0, Landroid/widget/Andy_VerticalGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Andy_VerticalGallery;->dispatchPress(Landroid/view/View;)V

    .line 1163
    new-instance v1, Landroid/widget/Andy_VerticalGallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Andy_VerticalGallery$2;-><init>(Landroid/widget/Andy_VerticalGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Andy_VerticalGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1171
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1172
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/Andy_VerticalGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1178
    .end local v0       #selectedIndex:I,
    :cond_39
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Andy_VerticalGallery;->mReceivedInvokeKeyDown:Z

    .line 1180
    const/4 v1, 0x1

    goto :goto_7

    .line 1155
    :sswitch_data_3e
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super/range {p0 .. p5}, Landroid/widget/Gallery;->onLayout(ZIIII)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 351
    invoke-virtual {p0, v1, v1}, Landroid/widget/Andy_VerticalGallery;->layout(IZ)V

    .line 352
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 353
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 1005
    iget v2, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    if-gez v2, :cond_5

    .line 1012
    :goto_4
    return-void

    .line 1009
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Andy_VerticalGallery;->performHapticFeedback(I)Z

    .line 1010
    iget v2, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Andy_VerticalGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1011
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Andy_VerticalGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 931
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 935
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_25

    .line 936
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1c

    .line 942
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_15

    iput-boolean v3, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    .line 943
    :cond_15
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Andy_VerticalGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 950
    :cond_1c
    :goto_1c
    float-to-int v0, p4

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->trackMotionScroll(I)V

    .line 952
    iput-boolean v4, p0, Landroid/widget/Andy_VerticalGallery;->mIsFirstScroll:Z

    .line 953
    return v3

    .line 946
    :cond_25
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1c

    iput-boolean v4, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    goto :goto_1c
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1021
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    .line 875
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_27

    .line 878
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Andy_VerticalGallery;->scrollToChild(I)Z

    .line 881
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_16

    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_25

    .line 882
    :cond_16
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/Andy_VerticalGallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Andy_VerticalGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 886
    :cond_25
    const/4 v0, 0x1

    .line 889
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 856
    iget-object v2, p0, Landroid/widget/Andy_VerticalGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 858
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 859
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 861
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->onUp()V

    .line 866
    :cond_10
    :goto_10
    return v1

    .line 862
    :cond_11
    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 863
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->onCancel()V

    goto :goto_10
.end method

.method onUp()V
    .registers 2

    .prologue
    .line 985
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->access$200(Landroid/widget/Andy_VerticalGallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 986
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->scrollIntoSlots()V

    .line 989
    :cond_f
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->dispatchUnpress()V

    .line 990
    return-void
.end method

.method selectionChanged()V
    .registers 2

    .prologue
    .line 536
    iget-boolean v0, p0, Landroid/widget/Andy_VerticalGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    .line 537
    invoke-super {p0}, Landroid/widget/Gallery;->selectionChanged()V

    .line 539
    :cond_7
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2
    .parameter "animationDurationMillis"

    .prologue
    .line 258
    iput p1, p0, Landroid/widget/Andy_VerticalGallery;->mAnimationDuration:I

    .line 259
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .registers 2
    .parameter "shouldCallback"

    .prologue
    .line 231
    iput-boolean p1, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackDuringFling:Z

    .line 232
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .registers 2
    .parameter "shouldCallback"

    .prologue
    .line 244
    iput-boolean p1, p0, Landroid/widget/Andy_VerticalGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 245
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 1263
    iget v0, p0, Landroid/widget/Andy_VerticalGallery;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1264
    iput p1, p0, Landroid/widget/Andy_VerticalGallery;->mGravity:I

    .line 1265
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->requestLayout()V

    .line 1267
    :cond_9
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 1219
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 1222
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->updateSelectedItemMetadata()V

    .line 1223
    return-void
.end method

.method public setSpacing(I)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 270
    iput p1, p0, Landroid/widget/Andy_VerticalGallery;->mSpacing:I

    .line 271
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .registers 2
    .parameter "unselectedAlpha"

    .prologue
    .line 282
    iput p1, p0, Landroid/widget/Andy_VerticalGallery;->mUnselectedAlpha:F

    .line 283
    return-void
.end method

.method public showContextMenu()Z
    .registers 6

    .prologue
    .line 1086
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_1d

    .line 1087
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1088
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1089
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/Andy_VerticalGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1092
    .end local v0       #index:I,
    .end local v1       #v:Landroid/view/View;,
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .parameter "originalView"

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Landroid/widget/Andy_VerticalGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1074
    .local v2, longPressPosition:I
    if-gez v2, :cond_8

    .line 1075
    const/4 v3, 0x0

    .line 1079
    :goto_7
    return v3

    .line 1078
    :cond_8
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1079
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Andy_VerticalGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_7
.end method

.method trackMotionScroll(I)V
    .registers 6
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 399
    :goto_7
    return-void

    .line 372
    :cond_8
    if-gez p1, :cond_31

    const/4 v2, 0x1

    move v1, v2

    .line 374
    .local v1, toTop:Z
    :goto_c
    invoke-virtual {p0, v1, p1}, Landroid/widget/Andy_VerticalGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 375
    .local v0, limiteddeltaY:I
    if-eq v0, p1, :cond_1a

    .line 377
    iget-object v2, p0, Landroid/widget/Andy_VerticalGallery;->mFlingRunnable:Landroid/widget/Andy_VerticalGallery$FlingRunnable;

    invoke-static {v2, v3}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->access$100(Landroid/widget/Andy_VerticalGallery$FlingRunnable;Z)V

    .line 378
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->onFinishedMovement()V

    .line 381
    :cond_1a
    invoke-virtual {p0, v0}, Landroid/widget/Andy_VerticalGallery;->offsetChildrenTopAndBottom(I)V

    .line 383
    invoke-direct {p0, v1}, Landroid/widget/Andy_VerticalGallery;->detachOffScreenChildren(Z)V

    .line 385
    if-eqz v1, :cond_33

    .line 387
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->fillToGalleryBottom()V

    .line 394
    :goto_25
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 396
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->setSelectionToCenterChild()V

    .line 398
    invoke-virtual {p0}, Landroid/widget/Andy_VerticalGallery;->invalidate()V

    goto :goto_7

    .end local v0       #limiteddeltaY:I,
    .end local v1       #toTop:Z,
    :cond_31
    move v1, v3

    .line 372
    goto :goto_c

    .line 390
    .restart local v0       #limiteddeltaY:I,
    .restart local v1       #toTop:Z,
    :cond_33
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery;->fillToGalleryTop()V

    goto :goto_25
.end method
