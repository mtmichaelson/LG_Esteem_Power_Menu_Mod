.class public Lcom/lge/sui/widget/control/SUIDigitPicker;
.super Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;
.source "SUIDigitPicker.java"


# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;,
        Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "VirticalGallery"

.field private static final localLOGV:Z



# instance fields
.field private mAnimationDuration:I

.field private mBottomMost:I

.field private mContextMenuInfo:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsLoop:Z

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
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    const v0, 0x3010005

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput v7, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSpacing:I

    .line 74
    const/16 v5, 0x190

    iput v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mAnimationDuration:I

    .line 111
    new-instance v5, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;-><init>(Lcom/lge/sui/widget/control/SUIDigitPicker;)V

    iput-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    .line 117
    new-instance v5, Lcom/lge/sui/widget/control/SUIDigitPicker$1;

    invoke-direct {v5, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker$1;-><init>(Lcom/lge/sui/widget/control/SUIDigitPicker;)V

    iput-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 139
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackDuringFling:Z

    .line 144
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackOnUnselectedItemClick:Z

    .line 159
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    .line 172
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mGestureDetector:Landroid/view/GestureDetector;

    .line 173
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 175
    sget-object v5, Lcom/lge/sui/widget/R$styleable;->VerticalGallery:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 179
    .local v2, index:I
    if-ltz v2, :cond_3c

    .line 180
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setGravity(I)V

    .line 183
    :cond_3c
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 185
    .local v1, animationDuration:I
    if-lez v1, :cond_45

    .line 186
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAnimationDuration(I)V

    .line 189
    :cond_45
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 191
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSpacing(I)V

    .line 193
    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 195
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setUnselectedAlpha(F)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    return-void
.end method

.method static synthetic access$002(Lcom/lge/sui/widget/control/SUIDigitPicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/sui/widget/control/SUIDigitPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/sui/widget/control/SUIDigitPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/sui/widget/control/SUIDigitPicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/lge/sui/widget/control/SUIDigitPicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    return p1
.end method

.method private calculatedLeft(Landroid/view/View;Z)I
    .registers 9
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1078
    if-eqz p2, :cond_15

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getMeasuredWidth()I

    move-result v4

    move v3, v4

    .line 1079
    .local v3, myWidth:I
    :goto_7
    if-eqz p2, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move v2, v4

    .line 1082
    .local v2, childWidth:I
    :goto_e
    const/4 v1, 0x0

    .line 1084
    .local v1, childLeft:I
    iget v4, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mGravity:I

    packed-switch v4, :pswitch_data_46

    .line 1097
    :goto_14
    :pswitch_14
    return v1

    .line 1078
    .end local v1       #childLeft:I,
    .end local v2       #childWidth:I,
    .end local v3       #myWidth:I,
    :cond_15
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getWidth()I

    move-result v4

    move v3, v4

    goto :goto_7

    .line 1079
    .restart local v3       #myWidth:I,
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    move v2, v4

    goto :goto_e

    .line 1086
    .restart local v1       #childLeft:I,
    .restart local v2       #childWidth:I,
    :pswitch_21
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1087
    goto :goto_14

    .line 1089
    :pswitch_26
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 1091
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v0, 0x2

    add-int v1, v4, v5

    .line 1092
    goto :goto_14

    .line 1094
    .end local v0       #availableSpace:I,
    :pswitch_3c
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    sub-int v1, v4, v2

    goto :goto_14

    .line 1084
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_26
        :pswitch_14
        :pswitch_21
        :pswitch_14
        :pswitch_3c
    .end packed-switch
.end method

.method private detachOffScreenChildren(Z)V
    .registers 12
    .parameter "toTop"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v6

    .line 477
    .local v6, numChildren:I
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 478
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 479
    .local v7, start:I
    const/4 v1, 0x0

    .line 481
    .local v1, count:I
    if-eqz p1, :cond_32

    .line 482
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v4

    .line 483
    .local v4, galleryTop:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_f
    if-ge v5, v6, :cond_1b

    .line 484
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v4, :cond_26

    .line 506
    .end local v0       #child:Landroid/view/View;,
    .end local v4       #galleryTop:I,
    :cond_1b
    invoke-virtual {p0, v7, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->detachViewsFromParent(II)V

    .line 508
    if-eqz p1, :cond_25

    .line 509
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 511
    :cond_25
    return-void

    .line 488
    .restart local v0       #child:Landroid/view/View;,
    .restart local v4       #galleryTop:I,
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 489
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 483
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 493
    .end local v0       #child:Landroid/view/View;,
    .end local v4       #galleryTop:I,
    .end local v5       #i:I,
    :cond_32
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 494
    .local v3, galleryBottom:I
    const/4 v8, 0x1

    sub-int v5, v6, v8

    .restart local v5       #i:I,
    :goto_3f
    if-ltz v5, :cond_1b

    .line 495
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .restart local v0       #child:Landroid/view/View;,
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v3, :cond_1b

    .line 499
    move v7, v5

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 494
    add-int/lit8 v5, v5, -0x1

    goto :goto_3f
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1333
    const/4 v6, 0x0

    .line 1335
    .local v6, handled:Z
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemLongClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_11

    .line 1336
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemLongClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1340
    :cond_11
    if-nez v6, :cond_1e

    .line 1341
    new-instance v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mContextMenuInfo:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;

    .line 1342
    invoke-super {p0, p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1345
    :cond_1e
    if-eqz v6, :cond_24

    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->performHapticFeedback(I)Z

    .line 1349
    :cond_24
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1270
    if-eqz p1, :cond_6

    .line 1271
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1274
    :cond_6
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setPressed(Z)V

    .line 1275
    return-void
.end method

.method private dispatchUnpress()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_14

    .line 1280
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1279
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1283
    :cond_14
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setPressed(Z)V

    .line 1284
    return-void
.end method

.method private fillToGalleryBottom()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 856
    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSpacing:I

    .line 857
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingBottom()I

    move-result v9

    sub-int v2, v8, v9

    .line 858
    .local v2, galleryBottom:I
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v4

    .line 859
    .local v4, numChildren:I
    iget v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 862
    .local v5, numItems:I
    sub-int v8, v4, v10

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 866
    .local v7, prevIterationView:Landroid/view/View;
    if-eqz v7, :cond_47

    .line 867
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int v0, v8, v4

    .line 868
    .local v0, curPosition:I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v3

    .line 875
    .local v1, curTopEdge:I
    :goto_2a
    iget-boolean v8, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-eqz v8, :cond_54

    .line 877
    :goto_2e
    if-ge v1, v2, :cond_6b

    if-gt v0, v5, :cond_6b

    if-ltz v0, :cond_6b

    .line 878
    rem-int v8, v0, v5

    iget v9, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v9, v0, v9

    invoke-direct {p0, v8, v9, v1, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 882
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v3

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 870
    .end local v0       #curPosition:I,
    .end local v1       #curTopEdge:I,
    :cond_47
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    sub-int v0, v8, v10

    .restart local v0       #curPosition:I,
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 871
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v1

    .line 872
    .restart local v1       #curTopEdge:I,
    iput-boolean v10, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldStopFling:Z

    goto :goto_2a

    .line 885
    :cond_54
    :goto_54
    if-ge v1, v2, :cond_6b

    if-ge v0, v5, :cond_6b

    if-ltz v0, :cond_6b

    .line 886
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v8, v0, v8

    invoke-direct {p0, v0, v8, v1, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 890
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v3

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 895
    :cond_6b
    iget-boolean v8, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-eqz v8, :cond_9a

    .line 896
    if-lt v0, v5, :cond_90

    .line 900
    rem-int v6, v0, v5

    .line 901
    .local v6, outBoundPosition:I
    rem-int/2addr v0, v5

    .line 902
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    rem-int/2addr v8, v5

    iput v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 903
    :goto_79
    if-ge v1, v2, :cond_90

    if-ge v6, v5, :cond_90

    if-ltz v6, :cond_90

    .line 904
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v8, v0, v8

    invoke-direct {p0, v6, v8, v1, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 908
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v3

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 916
    .end local v6       #outBoundPosition:I,
    :cond_90
    if-gez v0, :cond_9a

    .line 923
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v3

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 935
    :cond_9a
    return-void
.end method

.method private fillToGalleryTop()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 757
    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSpacing:I

    .line 758
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v2

    .line 761
    .local v2, galleryTop:I
    invoke-virtual {p0, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 764
    .local v7, prevIterationView:Landroid/view/View;
    if-eqz v7, :cond_33

    .line 765
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int v1, v8, v11

    .line 766
    .local v1, curPosition:I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v0, v8, v3

    .line 774
    .local v0, curBottomEdge:I
    :goto_18
    if-le v0, v2, :cond_46

    if-ltz v1, :cond_46

    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-ge v1, v8, :cond_46

    .line 775
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v8, v1, v8

    invoke-direct {p0, v1, v8, v0, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 779
    iput v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 782
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v0, v8, v3

    .line 783
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 769
    .end local v0       #curBottomEdge:I,
    .end local v1       #curPosition:I,
    :cond_33
    const/4 v1, 0x0

    .line 770
    .restart local v1       #curPosition:I,
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 771
    .restart local v0       #curBottomEdge:I,
    iput-boolean v11, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldStopFling:Z

    goto :goto_18

    .line 785
    :cond_46
    iget-boolean v8, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-eqz v8, :cond_7c

    .line 787
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-lt v1, v8, :cond_56

    .line 788
    :goto_4e
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-ge v1, v8, :cond_56

    .line 789
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    sub-int/2addr v1, v8

    goto :goto_4e

    .line 793
    :cond_56
    const/4 v8, -0x1

    if-gt v1, v8, :cond_9f

    .line 794
    :goto_59
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    mul-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_63

    .line 795
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    add-int/2addr v1, v8

    goto :goto_59

    .line 798
    :cond_63
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v6, v1, v8

    .line 799
    .local v6, pos:I
    if-ltz v6, :cond_7d

    .line 800
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v9, v1, v9

    invoke-direct {p0, v8, v9, v0, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 804
    iput v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 805
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v0, v8, v3

    .line 853
    .end local v6       #pos:I,
    :cond_7c
    return-void

    .line 807
    .restart local v6       #pos:I,
    :cond_7d
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    add-int v5, v1, v8

    .line 810
    .local v5, outBoundPosition:I
    :goto_81
    if-le v0, v2, :cond_7c

    if-ltz v5, :cond_7c

    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-ge v5, v8, :cond_7c

    .line 811
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v9, v1, v9

    invoke-direct {p0, v8, v9, v0, v10}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 815
    iput v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 818
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v0, v8, v3

    .line 819
    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    .line 838
    .end local v5       #outBoundPosition:I,
    .end local v6       #pos:I,
    :cond_9f
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-lt v1, v8, :cond_7c

    .line 839
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 840
    .local v4, numItems:I
    rem-int v5, v1, v4

    .line 841
    .restart local v5       #outBoundPosition:I,
    rem-int/2addr v1, v4

    .line 842
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    rem-int/2addr v8, v4

    iput v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 843
    :goto_ad
    if-ge v0, v2, :cond_7c

    if-ge v5, v4, :cond_7c

    if-ltz v5, :cond_7c

    .line 844
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v8, v1, v8

    invoke-direct {p0, v5, v8, v0, v11}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 848
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v0, v8, v3

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad
.end method

.method private getCenterOfGallery()I
    .registers 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 466
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
    .line 958
    iget-boolean v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2a

    .line 959
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 960
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 962
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 965
    .local v2, childTop:I
    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mBottomMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mBottomMost:I

    .line 967
    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mTopMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mTopMost:I

    .line 970
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 982
    .end local v0       #child:Landroid/view/View;,
    .end local v2       #childTop:I,
    .local v1, child:Landroid/view/View;
    :goto_29
    return-object v1

    .line 977
    .end local v1       #child:Landroid/view/View;,
    :cond_2a
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 980
    .restart local v0       #child:Landroid/view/View;,
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 982
    .end local v0       #child:Landroid/view/View;,
    .restart local v1       #child:Landroid/view/View;,
    goto :goto_29
.end method

.method private onFinishedMovement()V
    .registers 2

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_a

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    .line 538
    invoke-super {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->selectionChanged()V

    .line 540
    :cond_a
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->invalidate()V

    .line 541
    return-void
.end method

.method private scrollIntoSlots()V
    .registers 5

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_b

    .line 531
    :cond_a
    :goto_a
    return-void

    .line 522
    :cond_b
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 523
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfGallery()I

    move-result v2

    .line 525
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 526
    .local v0, scrollAmount:I
    if-eqz v0, :cond_1f

    .line 527
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->startUsingDistance(I)V

    goto :goto_a

    .line 529
    :cond_1f
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->onFinishedMovement()V

    goto :goto_a
.end method

.method private scrollToChild(I)Z
    .registers 6
    .parameter "childPosition"

    .prologue
    .line 1455
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1457
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1e

    .line 1458
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1461
    .local v1, distance:I
    if-gez v1, :cond_1b

    .line 1462
    add-int/lit8 v1, v1, 0x5

    .line 1466
    :goto_14
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->startUsingDistance(I)V

    .line 1467
    const/4 v2, 0x1

    .line 1470
    .end local v1       #distance:I,
    :goto_1a
    return v2

    .line 1464
    .restart local v1       #distance:I,
    :cond_1b
    add-int/lit8 v1, v1, -0x5

    goto :goto_14

    .line 1470
    .end local v1       #distance:I,
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private setSelectionToCenterChild(Z)V
    .registers 12
    .parameter "toTop"

    .prologue
    .line 556
    iget-object v7, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    .line 557
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_7

    .line 614
    :cond_6
    :goto_6
    return-void

    .line 560
    :cond_7
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfGallery()I

    move-result v3

    .line 563
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v3, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v3, :cond_17

    .line 569
    :cond_17
    const v2, 0x7fffffff

    .line 570
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 571
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    .local v4, i:I
    :goto_22
    if-ltz v4, :cond_54

    .line 573
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v3, :cond_66

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v3, :cond_66

    .line 578
    move v6, v4

    .line 579
    iget-boolean v8, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-eqz v8, :cond_54

    .line 580
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    const/4 v9, -0x1

    if-gt v8, v9, :cond_44

    if-nez p1, :cond_44

    if-nez v6, :cond_44

    .line 581
    iget v6, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 583
    :cond_44
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    iget v9, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    sub-int/2addr v9, v6

    if-ne v8, v9, :cond_54

    if-eqz p1, :cond_54

    const/4 v8, 0x3

    if-ne v6, v8, :cond_54

    .line 584
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    mul-int/lit8 v6, v8, -0x1

    .line 600
    .end local v0       #child:Landroid/view/View;,
    :cond_54
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 609
    .local v5, newPos:I
    iget v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_6

    .line 610
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelectedPositionInt(I)V

    .line 611
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setNextSelectedPositionInt(I)V

    .line 612
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->checkSelectionChanged()V

    goto :goto_6

    .line 590
    .end local v5       #newPos:I,
    .restart local v0       #child:Landroid/view/View;,
    :cond_66
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

    .line 593
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_80

    .line 594
    move v2, v1

    .line 595
    move v6, v4

    .line 571
    :cond_80
    add-int/lit8 v4, v4, -0x1

    goto :goto_22
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .registers 19
    .parameter "child"
    .parameter "offset"
    .parameter "y"
    .parameter "fromTop"

    .prologue
    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;

    .line 1005
    .local v9, lp:Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;
    if-nez v9, :cond_e

    .line 1006
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9       #lp:Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;,
    check-cast v9, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;

    .line 1009
    .restart local v9       #lp:Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;,
    :cond_e
    if-eqz p4, :cond_73

    const/4 v11, -0x1

    :goto_11
    invoke-virtual {p0, p1, v11, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1011
    if-nez p2, :cond_75

    const/4 v11, 0x1

    :goto_17
    invoke-virtual {p1, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1014
    iget v11, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mHeightMeasureSpec:I

    iget-object v12, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v11, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1016
    .local v2, childHeightSpec:I
    iget v11, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mWidthMeasureSpec:I

    iget-object v12, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v11, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1020
    .local v6, childWidthSpec:I
    invoke-virtual {p1, v6, v2}, Landroid/view/View;->measure(II)V

    .line 1026
    const/4 v11, 0x1

    invoke-direct {p0, p1, v11}, Lcom/lge/sui/widget/control/SUIDigitPicker;->calculatedLeft(Landroid/view/View;Z)I

    move-result v3

    .line 1027
    .local v3, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v4, v3, v11

    .line 1029
    .local v4, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1030
    .local v8, height:I
    if-eqz p4, :cond_77

    .line 1031
    move/from16 v5, p3

    .line 1032
    .local v5, childTop:I
    add-int v1, v5, v8

    .line 1037
    .local v1, childBottom:I
    :goto_54
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v7, v0

    .line 1038
    .local v7, f:Landroid/widget/FrameLayout;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1039
    .local v10, tv:Landroid/widget/TextView;
    if-nez p2, :cond_7c

    .line 1042
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x3060001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    :goto_6f
    invoke-virtual {p1, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1047
    return-void

    .line 1009
    .end local v1       #childBottom:I,
    .end local v2       #childHeightSpec:I,
    .end local v3       #childLeft:I,
    .end local v4       #childRight:I,
    .end local v5       #childTop:I,
    .end local v6       #childWidthSpec:I,
    .end local v7       #f:Landroid/widget/FrameLayout;,
    .end local v8       #height:I,
    .end local v10       #tv:Landroid/widget/TextView;,
    :cond_73
    const/4 v11, 0x0

    goto :goto_11

    .line 1011
    :cond_75
    const/4 v11, 0x0

    goto :goto_17

    .line 1034
    .restart local v2       #childHeightSpec:I,
    .restart local v3       #childLeft:I,
    .restart local v4       #childRight:I,
    .restart local v6       #childWidthSpec:I,
    .restart local v8       #height:I,
    :cond_77
    sub-int v5, p3, v8

    .line 1035
    .restart local v5       #childTop:I,
    move/from16 v1, p3

    .restart local v1       #childBottom:I,
    goto :goto_54

    .line 1044
    .restart local v7       #f:Landroid/widget/FrameLayout;,
    .restart local v10       #tv:Landroid/widget/TextView;,
    :cond_7c
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x3060002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6f
.end method

.method public static toDFormat(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "num"
    .parameter "format"

    .prologue
    .line 1699
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1700
    .local v0, df:Ljava/text/DecimalFormat;
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateSelectedItemMetadata()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1483
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    .line 1485
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    .line 1487
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_12

    .line 1510
    :cond_11
    :goto_11
    return-void

    .line 1491
    :cond_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1492
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1494
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1495
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1500
    :cond_21
    if-eqz v1, :cond_11

    .line 1503
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1507
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_11
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 294
    instance-of v0, p1, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1355
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1299
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1301
    :cond_9
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 1292
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 313
    new-instance v0, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 305
    new-instance v0, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 300
    new-instance v0, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 6
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1528
    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1531
    .local v0, selectedIndex:I
    if-gez v0, :cond_a

    move v1, p2

    .line 1542
    :goto_9
    return v1

    .line 1534
    :cond_a
    const/4 v1, 0x1

    sub-int v1, p1, v1

    if-ne p2, v1, :cond_11

    move v1, v0

    .line 1536
    goto :goto_9

    .line 1537
    :cond_11
    if-lt p2, v0, :cond_16

    .line 1539
    add-int/lit8 v1, p2, 0x1

    goto :goto_9

    :cond_16
    move v1, p2

    .line 1542
    goto :goto_9
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 272
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_e

    const/high16 v0, 0x3f80

    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 274
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_e
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mUnselectedAlpha:F

    goto :goto_9
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mContextMenuInfo:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .registers 11
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x0

    .line 384
    if-eqz p1, :cond_14

    iget v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    .line 385
    .local v3, extremeItemPosition:I
    :goto_8
    iget v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 387
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_16

    move v5, p2

    .line 417
    :goto_13
    return v5

    .end local v1       #extremeChild:Landroid/view/View;,
    .end local v3       #extremeItemPosition:I,
    :cond_14
    move v3, v7

    .line 384
    goto :goto_8

    .line 391
    .restart local v1       #extremeChild:Landroid/view/View;,
    .restart local v3       #extremeItemPosition:I,
    :cond_16
    invoke-static {v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 392
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getCenterOfGallery()I

    move-result v4

    .line 394
    .local v4, galleryCenter:I
    if-eqz p1, :cond_28

    .line 395
    if-gt v2, v4, :cond_30

    .line 398
    iget-boolean v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-nez v5, :cond_30

    move v5, v7

    .line 399
    goto :goto_13

    .line 403
    :cond_28
    if-lt v2, v4, :cond_30

    .line 406
    iget-boolean v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-nez v5, :cond_30

    move v5, v7

    .line 407
    goto :goto_13

    .line 412
    :cond_30
    iget-boolean v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-nez v5, :cond_3d

    .line 413
    sub-int v0, v4, v2

    .line 417
    .local v0, centerDifference:I
    :goto_36
    if-eqz p1, :cond_3f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_13

    .line 415
    .end local v0       #centerDifference:I,
    :cond_3d
    move v0, p2

    .restart local v0       #centerDifference:I,
    goto :goto_36

    .line 417
    :cond_3f
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

    .line 629
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 630
    .local v1, childrenTop:I
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 633
    .local v0, childrenHeight:I
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_20

    .line 634
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->handleDataChanged()V

    .line 638
    :cond_20
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-nez v4, :cond_28

    .line 639
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->resetList()V

    .line 692
    :goto_27
    return-void

    .line 644
    :cond_28
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_31

    .line 645
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelectedPositionInt(I)V

    .line 649
    :cond_31
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->recycleAllViews()V

    .line 653
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->detachAllViewsFromParent()V

    .line 658
    iput v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mBottomMost:I

    .line 659
    iput v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mTopMost:I

    .line 667
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    if-eqz v4, :cond_46

    .line 668
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 670
    :cond_46
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 671
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 674
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 676
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 678
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->fillToGalleryBottom()V

    .line 679
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->fillToGalleryTop()V

    .line 682
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->clear()V

    .line 684
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->invalidate()V

    .line 685
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->checkSelectionChanged()V

    .line 687
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    .line 688
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 689
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setNextSelectedPositionInt(I)V

    .line 691
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->updateSelectedItemMetadata()V

    goto :goto_27
.end method

.method public offsetChildrenTopAndBottom(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_13

    .line 442
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 441
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 444
    :cond_13
    return-void
.end method

.method onCancel()V
    .registers 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->onUp()V

    .line 1248
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1214
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->stop(Z)V

    .line 1217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    .line 1219
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    if-ltz v0, :cond_2b

    .line 1220
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchView:Landroid/view/View;

    .line 1221
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1225
    :cond_2b
    iput-boolean v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsFirstScroll:Z

    .line 1228
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

    .line 1148
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_10

    .line 1152
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1155
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_10

    .line 1156
    iput-boolean v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    .line 1161
    :cond_10
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->startUsingVelocity(I)V

    .line 1163
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1549
    invoke-super {p0, p1, p2, p3}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1555
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1556
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1559
    :cond_e
    return-void
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

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mInLayout:Z

    .line 326
    invoke-virtual {p0, v1, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->layout(IZ)V

    .line 327
    iput-boolean v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mInLayout:Z

    .line 328
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 1252
    iget v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    if-gez v2, :cond_5

    .line 1259
    :goto_4
    return-void

    .line 1256
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->performHapticFeedback(I)Z

    .line 1257
    iget v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1258
    .local v0, id:J
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->dispatchLongPress(Landroid/view/View;IJ)Z

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

    .line 1181
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1186
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_27

    .line 1187
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsFirstScroll:Z

    if-eqz v0, :cond_1e

    .line 1193
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_17

    .line 1194
    iput-boolean v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    .line 1195
    :cond_17
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1205
    :cond_1e
    :goto_1e
    float-to-int v0, p4

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->trackMotionScroll(I)V

    .line 1207
    iput-boolean v4, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsFirstScroll:Z

    .line 1208
    return v3

    .line 1199
    :cond_27
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1e

    .line 1200
    iput-boolean v4, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    goto :goto_1e
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1264
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 1120
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    if-gt v0, v4, :cond_38

    .line 1121
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    .line 1125
    :cond_e
    :goto_e
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    .line 1127
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->scrollToChild(I)Z

    .line 1133
    :goto_1e
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_28

    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_37

    .line 1135
    :cond_28
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->performItemClick(Landroid/view/View;IJ)Z

    .line 1139
    :cond_37
    return v4

    .line 1122
    :cond_38
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_e

    .line 1123
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mDownTouchPosition:I

    goto :goto_e

    .line 1129
    :cond_47
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->scrollIntoSlots()V

    goto :goto_1e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 1104
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1106
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1107
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 1109
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->onUp()V

    .line 1114
    :cond_10
    :goto_10
    return v1

    .line 1110
    :cond_11
    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 1111
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->onCancel()V

    goto :goto_10
.end method

.method onUp()V
    .registers 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mFlingRunnable:Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;

    invoke-static {v0}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->access$100(Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1237
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->scrollIntoSlots()V

    .line 1240
    :cond_f
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->dispatchUnpress()V

    .line 1241
    return-void
.end method

.method selectionChanged()V
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    .line 546
    invoke-super {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->selectionChanged()V

    .line 548
    :cond_7
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2
    .parameter "animationDurationMillis"

    .prologue
    .line 242
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mAnimationDuration:I

    .line 243
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .registers 2
    .parameter "shouldCallback"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackDuringFling:Z

    .line 216
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .registers 2
    .parameter "shouldCallback"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mShouldCallbackOnUnselectedItemClick:Z

    .line 230
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 1520
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1521
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mGravity:I

    .line 1522
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->requestLayout()V

    .line 1524
    :cond_9
    return-void
.end method

.method public setLoop(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1708
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mIsLoop:Z

    .line 1709
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setSelectedPositionInt(I)V

    .line 1478
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->updateSelectedItemMetadata()V

    .line 1479
    return-void
.end method

.method public setSpacing(I)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 254
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mSpacing:I

    .line 255
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .registers 2
    .parameter "unselectedAlpha"

    .prologue
    .line 266
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker;->mUnselectedAlpha:F

    .line 267
    return-void
.end method

.method public showContextMenu()Z
    .registers 6

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_1d

    .line 1324
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1325
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1326
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1329
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
    .line 1311
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1312
    .local v2, longPressPosition:I
    if-gez v2, :cond_8

    .line 1313
    const/4 v3, 0x0

    .line 1317
    :goto_7
    return v3

    .line 1316
    :cond_8
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1317
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_7
.end method

.method trackMotionScroll(I)V
    .registers 5
    .parameter "deltaY"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 381
    :goto_6
    return-void

    .line 353
    :cond_7
    if-gez p1, :cond_28

    const/4 v2, 0x1

    move v1, v2

    .line 355
    .local v1, toTop:Z
    :goto_b
    invoke-virtual {p0, v1, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 356
    .local v0, limitedDeltaY:I
    if-eq v0, p1, :cond_11

    .line 363
    :cond_11
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->offsetChildrenTopAndBottom(I)V

    .line 365
    invoke-direct {p0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->detachOffScreenChildren(Z)V

    .line 367
    if-eqz v1, :cond_2b

    .line 369
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->fillToGalleryBottom()V

    .line 376
    :goto_1c
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->clear()V

    .line 378
    invoke-direct {p0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelectionToCenterChild(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->invalidate()V

    goto :goto_6

    .line 353
    .end local v0       #limitedDeltaY:I,
    .end local v1       #toTop:Z,
    :cond_28
    const/4 v2, 0x0

    move v1, v2

    goto :goto_b

    .line 372
    .restart local v0       #limitedDeltaY:I,
    .restart local v1       #toTop:Z,
    :cond_2b
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->fillToGalleryTop()V

    goto :goto_1c
.end method
