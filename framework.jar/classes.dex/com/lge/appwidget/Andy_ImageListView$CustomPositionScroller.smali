.class Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;
.super Ljava/lang/Object;
.source "Andy_ImageListView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ImageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomPositionScroller"
.end annotation


# static fields
.field private static final cMOVE_DOWN_POS:I = 0x1

.field private static final cMOVE_UP_POS:I = 0x2

.field private static final cSCROLL_DURATION:I = 0x190



# instance fields
.field private final mcExtraScroll:I

.field private mcItemCount:I

.field private mcLastSeenPos:I

.field mcListPadding:Landroid/graphics/Rect;

.field private mcMode:I

.field private mcScrollDuration:I

.field private mcTargetPos:I

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ImageListView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    .line 324
    invoke-static {p1}, Lcom/lge/appwidget/Andy_ImageListView;->access$000(Lcom/lge/appwidget/Andy_ImageListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcExtraScroll:I

    .line 326
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_ImageListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcItemCount:I

    .line 327
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_ImageListView;->getListPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 328
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_ImageListView;->getListPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 329
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_ImageListView;->getListPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 330
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_ImageListView;->getListPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 332
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 367
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11}, Lcom/lge/appwidget/Andy_ImageListView;->getHeight()I

    move-result v10

    .line 368
    .local v10, listHeight:I
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11}, Lcom/lge/appwidget/Andy_ImageListView;->getFirstVisiblePosition()I

    move-result v1

    .line 370
    .local v1, firstPos:I
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcMode:I

    packed-switch v11, :pswitch_data_c8

    .line 448
    :cond_13
    :goto_13
    return-void

    .line 372
    :pswitch_14
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11}, Lcom/lge/appwidget/Andy_ImageListView;->getChildCount()I

    move-result v11

    sub-int v7, v11, v13

    .line 373
    .local v7, lastViewIndex:I
    add-int v4, v1, v7

    .line 375
    .local v4, lastPos:I
    if-ltz v7, :cond_13

    .line 379
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcLastSeenPos:I

    if-ne v4, v11, :cond_2a

    .line 381
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_ImageListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 384
    :cond_2a
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11, v7}, Lcom/lge/appwidget/Andy_ImageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 385
    .local v5, lastView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 386
    .local v6, lastViewHeight:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 387
    .local v9, lastViewTop:I
    sub-int v8, v10, v9

    .line 389
    .local v8, lastViewPixelsShowing:I
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcTargetPos:I

    if-ne v4, v11, :cond_60

    .line 390
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcItemCount:I

    sub-int/2addr v11, v13

    if-ge v4, v11, :cond_5a

    move v0, v12

    .line 392
    .local v0, extraScroll:I
    :goto_44
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    sub-int v12, v6, v8

    add-int/2addr v12, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_ImageListView;->smoothScrollBy(II)V

    .line 402
    :goto_4e
    iput v4, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcLastSeenPos:I

    .line 403
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcTargetPos:I

    if-ge v4, v11, :cond_13

    .line 404
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_ImageListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 390
    .end local v0       #extraScroll:I,
    :cond_5a
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move v0, v11

    goto :goto_44

    .line 396
    :cond_60
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcItemCount:I

    sub-int/2addr v11, v13

    if-ge v4, v11, :cond_73

    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcExtraScroll:I

    move v0, v11

    .line 398
    .restart local v0       #extraScroll:I,
    :goto_68
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    sub-int v12, v6, v8

    add-int/2addr v12, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_ImageListView;->smoothScrollBy(II)V

    goto :goto_4e

    .line 396
    .end local v0       #extraScroll:I,
    :cond_73
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move v0, v11

    goto :goto_68

    .line 411
    .end local v4       #lastPos:I,
    .end local v5       #lastView:Landroid/view/View;,
    .end local v6       #lastViewHeight:I,
    .end local v7       #lastViewIndex:I,
    .end local v8       #lastViewPixelsShowing:I,
    .end local v9       #lastViewTop:I,
    :pswitch_79
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcLastSeenPos:I

    if-ne v1, v11, :cond_83

    .line 413
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_ImageListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 417
    :cond_83
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11, v12}, Lcom/lge/appwidget/Andy_ImageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 419
    .local v2, firstView:Landroid/view/View;
    if-eqz v2, :cond_13

    .line 424
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 426
    .local v3, firstViewTop:I
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcTargetPos:I

    if-ne v1, v11, :cond_b2

    .line 427
    if-lez v1, :cond_ac

    move v0, v12

    .line 429
    .restart local v0       #extraScroll:I,
    :goto_96
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    sub-int v12, v3, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_ImageListView;->smoothScrollBy(II)V

    .line 436
    :goto_9f
    iput v1, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcLastSeenPos:I

    .line 438
    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcTargetPos:I

    if-le v1, v11, :cond_13

    .line 439
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_ImageListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 427
    .end local v0       #extraScroll:I,
    :cond_ac
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v0, v11

    goto :goto_96

    .line 431
    :cond_b2
    if-lez v1, :cond_c1

    iget v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcExtraScroll:I

    move v0, v11

    .line 433
    .restart local v0       #extraScroll:I,
    :goto_b7
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    sub-int v12, v3, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_ImageListView;->smoothScrollBy(II)V

    goto :goto_9f

    .line 431
    .end local v0       #extraScroll:I,
    :cond_c1
    iget-object v11, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v0, v11

    goto :goto_b7

    .line 370
    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_14
        :pswitch_79
    .end packed-switch
.end method

.method start(I)V
    .registers 8
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    .line 335
    iget-object v3, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_ImageListView;->getFirstVisiblePosition()I

    move-result v0

    .line 336
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_ImageListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v1, v3, v4

    .line 337
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 339
    .local v2, viewTravelCount:I
    if-gt p1, v0, :cond_2d

    .line 340
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 341
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcMode:I

    .line 351
    :goto_1c
    if-lez v2, :cond_3b

    .line 352
    div-int v3, v5, v2

    iput v3, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcScrollDuration:I

    .line 356
    :goto_22
    iput p1, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcTargetPos:I

    .line 357
    const/4 v3, -0x1

    iput v3, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcLastSeenPos:I

    .line 359
    iget-object v3, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v3, p0}, Lcom/lge/appwidget/Andy_ImageListView;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void

    .line 342
    :cond_2d
    if-lt p1, v1, :cond_36

    .line 343
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 344
    iput v4, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcMode:I

    goto :goto_1c

    .line 347
    :cond_36
    sub-int v2, p1, v1

    .line 348
    iput v4, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcMode:I

    goto :goto_1c

    .line 354
    :cond_3b
    iput v5, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->mcScrollDuration:I

    goto :goto_22
.end method

.method stop()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_ImageListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method
