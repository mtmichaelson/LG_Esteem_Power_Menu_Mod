.class public Lcom/lge/sui/widget/list/SUIMovableListView;
.super Landroid/widget/ListView;
.source "SUIMovableListView.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;,
        Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;,
        Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1



# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mItemWidthNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveMode:I

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 77
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/list/SUIMovableListView;->setDividerHeight(I)V

    .line 78
    sget-object v1, Lcom/lge/sui/widget/R$styleable;->MovableListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveMode:I

    .line 82
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTouchSlop:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/list/SUIMovableListView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/list/SUIMovableListView;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sui/widget/list/SUIMovableListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/sui/widget/list/SUIMovableListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/sui/widget/list/SUIMovableListView;)Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sui/widget/list/SUIMovableListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIMovableListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .registers 3
    .parameter "y"

    .prologue
    .line 213
    iget v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_c

    .line 214
    iget v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mUpperBound:I

    .line 216
    :cond_c
    iget v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1c

    .line 217
    iget v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mLowerBound:I

    .line 219
    :cond_1c
    return-void
.end method

.method private doExpansion()V
    .registers 11

    .prologue
    .line 258
    iget v7, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 259
    .local v0, childnum:I
    iget v7, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    iget v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    if-le v7, v8, :cond_10

    .line 260
    add-int/lit8 v0, v0, 0x1

    .line 263
    :cond_10
    iget v7, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 265
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 266
    .local v3, i:I
    :goto_1c
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 267
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_23

    .line 291
    return-void

    .line 270
    :cond_23
    iget v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    .line 271
    .local v2, height:I
    const/4 v5, 0x0

    .line 272
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 274
    iget v7, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    iget v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_42

    .line 276
    const/4 v5, 0x4

    .line 286
    :cond_33
    :goto_33
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 287
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 279
    .end local v4       #params:Landroid/view/ViewGroup$LayoutParams;,
    :cond_42
    const/4 v2, 0x1

    goto :goto_33

    .line 281
    :cond_44
    if-ne v3, v0, :cond_33

    .line 282
    iget v7, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_33

    .line 283
    iget v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightExpanded:I

    goto :goto_33
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 401
    iget v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 402
    const/high16 v0, 0x3f80

    .line 403
    .local v0, alpha:F
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 404
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_19

    .line 405
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 407
    :cond_19
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 409
    .end local v0       #alpha:F,
    .end local v1       #width:I,
    :cond_1d
    iget v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveMode:I

    if-nez v2, :cond_25

    .line 410
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 412
    :cond_25
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 413
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method

.method private getItemForPosition(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 198
    iget v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 199
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/lge/sui/widget/list/SUIMovableListView;->myPointToPosition(II)I

    move-result v1

    .line 200
    .local v1, pos:I
    if-ltz v1, :cond_16

    .line 201
    iget v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_15

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 209
    :cond_15
    :goto_15
    return v1

    .line 204
    :cond_16
    if-gez v0, :cond_15

    .line 207
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private myPointToPosition(II)I
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 176
    if-gez p2, :cond_f

    .line 179
    iget v5, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/lge/sui/widget/list/SUIMovableListView;->myPointToPosition(II)I

    move-result v4

    .line 180
    .local v4, pos:I
    if-lez v4, :cond_f

    .line 181
    sub-int v5, v4, v6

    .line 194
    .end local v4       #pos:I,
    :goto_e
    return v5

    .line 185
    :cond_f
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 186
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildCount()I

    move-result v1

    .line 187
    .local v1, count:I
    sub-int v3, v1, v6

    .local v3, i:I
    :goto_17
    if-ltz v3, :cond_2f

    .line 188
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 191
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_e

    .line 187
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 194
    .end local v0       #child:Landroid/view/View;,
    :cond_2f
    const/4 v5, -0x1

    goto :goto_e
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 10
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 371
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->stopDragging()V

    .line 373
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 374
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 375
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 376
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPoint:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mCoordOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 378
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemWidthNormal:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 385
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 386
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 388
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 389
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 390
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 391
    .local v0, backGroundColor:I
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 392
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 393
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 395
    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 396
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iput-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    .line 398
    return-void
.end method

.method private stopDragging()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    .line 418
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 419
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 420
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iput-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    .line 423
    .end local v0       #wm:Landroid/view/WindowManager;,
    :cond_1e
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_29

    .line 424
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    iput-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 427
    :cond_29
    return-void
.end method

.method private unExpandViews(Z)V
    .registers 9
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, i:I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 227
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_2a

    .line 228
    if-eqz p1, :cond_20

    .line 230
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 231
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 232
    .local v4, y:I
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/SUIMovableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    invoke-virtual {p0, v2, v4}, Lcom/lge/sui/widget/list/SUIMovableListView;->setSelectionFromTop(II)V

    .line 236
    .end local v2       #position:I,
    .end local v4       #y:I,
    :cond_20
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->layoutChildren()V

    .line 237
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 238
    if-nez v3, :cond_2a

    .line 247
    return-void

    .line 242
    :cond_2a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 243
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    .line 98
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_1d

    .line 99
    iget v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveMode:I

    if-nez v8, :cond_1d

    .line 100
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/lge/sui/widget/list/SUIMovableListView$1;

    invoke-direct {v10, p0}, Lcom/lge/sui/widget/list/SUIMovableListView$1;-><init>(Lcom/lge/sui/widget/list/SUIMovableListView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 128
    :cond_1d
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragListener:Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;

    if-nez v8, :cond_25

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    if-eqz v8, :cond_2c

    .line 129
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_c4

    .line 167
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_30
    return v8

    .line 131
    :pswitch_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 132
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 133
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/lge/sui/widget/list/SUIMovableListView;->pointToPosition(II)I

    move-result v3

    .line 134
    .local v3, itemnum:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2c

    .line 138
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 139
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemWidthNormal:I

    .line 140
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    .line 141
    iget v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightHalf:I

    .line 142
    iget v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightExpanded:I

    .line 143
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPoint:I

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mCoordOffset:I

    .line 145
    const v8, 0x30a003d

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, dragger:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 147
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 148
    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_bf

    .line 149
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 152
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/lge/sui/widget/list/SUIMovableListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 154
    iput v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    .line 155
    iget v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    .line 156
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    .line 157
    iget v5, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTouchSlop:I

    .line 158
    .local v5, touchSlop:I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mUpperBound:I

    .line 159
    add-int v8, v7, v5

    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mLowerBound:I

    .line 160
    const/4 v8, 0x0

    goto/16 :goto_30

    .line 162
    .end local v0       #bitmap:Landroid/graphics/Bitmap;,
    .end local v5       #touchSlop:I,
    :cond_bf
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->stopDragging()V

    goto/16 :goto_2c

    .line 129
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 299
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_b

    .line 300
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 302
    :cond_b
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragListener:Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    if-eqz v9, :cond_ee

    :cond_13
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_ee

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, action:I
    packed-switch v0, :pswitch_data_f4

    :cond_1e
    :goto_1e
    move v9, v13

    .line 367
    .end local v0       #action:I,
    :goto_1f
    return v9

    .line 308
    .restart local v0       #action:I,
    :pswitch_20
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 309
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 310
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->stopDragging()V

    .line 311
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveMode:I

    if-ne v9, v13, :cond_4c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4c

    .line 312
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    if-eqz v9, :cond_48

    .line 313
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    iget v10, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    invoke-interface {v9, v10}, Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;->remove(I)V

    .line 315
    :cond_48
    invoke-direct {p0, v13}, Lcom/lge/sui/widget/list/SUIMovableListView;->unExpandViews(Z)V

    goto :goto_1e

    .line 317
    :cond_4c
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    if-eqz v9, :cond_65

    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    if-ltz v9, :cond_65

    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_65

    .line 319
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    iget v10, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mFirstDragPos:I

    iget v11, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;->drop(II)V

    .line 321
    :cond_65
    invoke-direct {p0, v12}, Lcom/lge/sui/widget/list/SUIMovableListView;->unExpandViews(Z)V

    goto :goto_1e

    .line 327
    .end local v3       #r:Landroid/graphics/Rect;,
    :pswitch_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 328
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 329
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/lge/sui/widget/list/SUIMovableListView;->dragView(II)V

    .line 330
    invoke-direct {p0, v8}, Lcom/lge/sui/widget/list/SUIMovableListView;->getItemForPosition(I)I

    move-result v1

    .line 331
    .local v1, itemnum:I
    if-ltz v1, :cond_1e

    .line 332
    if-eqz v0, :cond_82

    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    if-eq v1, v9, :cond_92

    .line 334
    :cond_82
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragListener:Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;

    if-eqz v9, :cond_8d

    .line 335
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragListener:Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;

    iget v10, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;->drag(II)V

    .line 337
    :cond_8d
    iput v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragPos:I

    .line 338
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->doExpansion()V

    .line 340
    :cond_92
    const/4 v5, 0x0

    .line 341
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/lge/sui/widget/list/SUIMovableListView;->adjustScrollBounds(I)V

    .line 342
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mLowerBound:I

    if-le v8, v9, :cond_dd

    .line 344
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    iget v10, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_da

    const/16 v9, 0x10

    move v5, v9

    .line 349
    :cond_a6
    :goto_a6
    if-eqz v5, :cond_1e

    .line 350
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/lge/sui/widget/list/SUIMovableListView;->pointToPosition(II)I

    move-result v4

    .line 351
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_c3

    .line 353
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mItemHeightNormal:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v12, v9}, Lcom/lge/sui/widget/list/SUIMovableListView;->pointToPosition(II)I

    move-result v4

    .line 356
    :cond_c3
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/lge/sui/widget/list/SUIMovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 357
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_1e

    .line 358
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 359
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/lge/sui/widget/list/SUIMovableListView;->setSelectionFromTop(II)V

    goto/16 :goto_1e

    .line 344
    .end local v2       #pos:I,
    .end local v4       #ref:I,
    .end local v6       #v:Landroid/view/View;,
    :cond_da
    const/4 v9, 0x4

    move v5, v9

    goto :goto_a6

    .line 345
    :cond_dd
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mUpperBound:I

    if-ge v8, v9, :cond_a6

    .line 347
    iget v9, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_eb

    const/16 v9, -0x10

    move v5, v9

    :goto_ea
    goto :goto_a6

    :cond_eb
    const/4 v9, -0x4

    move v5, v9

    goto :goto_ea

    .line 367
    .end local v0       #action:I,
    .end local v1       #itemnum:I,
    .end local v5       #speed:I,
    .end local v7       #x:I,
    .end local v8       #y:I,
    :cond_ee
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1f

    .line 305
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_69
        :pswitch_20
        :pswitch_69
        :pswitch_20
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1       
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIMovableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 89
    new-instance v0, Lcom/lge/sui/widget/list/SUIMovableListAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIMovableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lge/sui/widget/list/SUIMovableListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    return-void
.end method

.method public setDragListener(Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDragListener:Lcom/lge/sui/widget/list/SUIMovableListView$DragListener;

    .line 435
    return-void
.end method

.method public setDropListener(Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    .line 443
    return-void
.end method

.method public setRemoveListener(Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIMovableListView;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    .line 451
    return-void
.end method
