.class Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;
.super Ljava/lang/Object;
.source "Andy_RichNoteListView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_RichNoteListView;
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

.field final synthetic this$0:Lcom/lge/appwidget/Andy_RichNoteListView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_RichNoteListView;)V
    .registers 4
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    .line 483
    invoke-static {p1}, Lcom/lge/appwidget/Andy_RichNoteListView;->access$000(Lcom/lge/appwidget/Andy_RichNoteListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcExtraScroll:I

    .line 485
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcItemCount:I

    .line 486
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getListPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 487
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getListPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 488
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getListPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 489
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getListPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 490
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 525
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11}, Lcom/lge/appwidget/Andy_RichNoteListView;->getHeight()I

    move-result v10

    .line 526
    .local v10, listHeight:I
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11}, Lcom/lge/appwidget/Andy_RichNoteListView;->getFirstVisiblePosition()I

    move-result v1

    .line 528
    .local v1, firstPos:I
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcMode:I

    packed-switch v11, :pswitch_data_c8

    .line 606
    :cond_13
    :goto_13
    return-void

    .line 530
    :pswitch_14
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildCount()I

    move-result v11

    sub-int v7, v11, v13

    .line 531
    .local v7, lastViewIndex:I
    add-int v4, v1, v7

    .line 533
    .local v4, lastPos:I
    if-ltz v7, :cond_13

    .line 537
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcLastSeenPos:I

    if-ne v4, v11, :cond_2a

    .line 539
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 542
    :cond_2a
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11, v7}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 543
    .local v5, lastView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 544
    .local v6, lastViewHeight:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 545
    .local v9, lastViewTop:I
    sub-int v8, v10, v9

    .line 547
    .local v8, lastViewPixelsShowing:I
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcTargetPos:I

    if-ne v4, v11, :cond_60

    .line 548
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcItemCount:I

    sub-int/2addr v11, v13

    if-ge v4, v11, :cond_5a

    move v0, v12

    .line 550
    .local v0, extraScroll:I
    :goto_44
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    sub-int v12, v6, v8

    add-int/2addr v12, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_RichNoteListView;->smoothScrollBy(II)V

    .line 560
    :goto_4e
    iput v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcLastSeenPos:I

    .line 561
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcTargetPos:I

    if-ge v4, v11, :cond_13

    .line 562
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 548
    .end local v0       #extraScroll:I,
    :cond_5a
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move v0, v11

    goto :goto_44

    .line 554
    :cond_60
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcItemCount:I

    sub-int/2addr v11, v13

    if-ge v4, v11, :cond_73

    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcExtraScroll:I

    move v0, v11

    .line 556
    .restart local v0       #extraScroll:I,
    :goto_68
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    sub-int v12, v6, v8

    add-int/2addr v12, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_RichNoteListView;->smoothScrollBy(II)V

    goto :goto_4e

    .line 554
    .end local v0       #extraScroll:I,
    :cond_73
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move v0, v11

    goto :goto_68

    .line 569
    .end local v4       #lastPos:I,
    .end local v5       #lastView:Landroid/view/View;,
    .end local v6       #lastViewHeight:I,
    .end local v7       #lastViewIndex:I,
    .end local v8       #lastViewPixelsShowing:I,
    .end local v9       #lastViewTop:I,
    :pswitch_79
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcLastSeenPos:I

    if-ne v1, v11, :cond_83

    .line 571
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 575
    :cond_83
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11, v12}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 577
    .local v2, firstView:Landroid/view/View;
    if-eqz v2, :cond_13

    .line 582
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 584
    .local v3, firstViewTop:I
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcTargetPos:I

    if-ne v1, v11, :cond_b2

    .line 585
    if-lez v1, :cond_ac

    move v0, v12

    .line 587
    .restart local v0       #extraScroll:I,
    :goto_96
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    sub-int v12, v3, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_RichNoteListView;->smoothScrollBy(II)V

    .line 594
    :goto_9f
    iput v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcLastSeenPos:I

    .line 596
    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcTargetPos:I

    if-le v1, v11, :cond_13

    .line 597
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v11, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 585
    .end local v0       #extraScroll:I,
    :cond_ac
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v0, v11

    goto :goto_96

    .line 589
    :cond_b2
    if-lez v1, :cond_c1

    iget v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcExtraScroll:I

    move v0, v11

    .line 591
    .restart local v0       #extraScroll:I,
    :goto_b7
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    sub-int v12, v3, v0

    iget v13, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcScrollDuration:I

    invoke-virtual {v11, v12, v13}, Lcom/lge/appwidget/Andy_RichNoteListView;->smoothScrollBy(II)V

    goto :goto_9f

    .line 589
    .end local v0       #extraScroll:I,
    :cond_c1
    iget-object v11, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move v0, v11

    goto :goto_b7

    .line 528
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

    .line 493
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_RichNoteListView;->getFirstVisiblePosition()I

    move-result v0

    .line 494
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v1, v3, v4

    .line 495
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 497
    .local v2, viewTravelCount:I
    if-gt p1, v0, :cond_2d

    .line 498
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 499
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcMode:I

    .line 509
    :goto_1c
    if-lez v2, :cond_3b

    .line 510
    div-int v3, v5, v2

    iput v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcScrollDuration:I

    .line 514
    :goto_22
    iput p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcTargetPos:I

    .line 515
    const/4 v3, -0x1

    iput v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcLastSeenPos:I

    .line 517
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v3, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void

    .line 500
    :cond_2d
    if-lt p1, v1, :cond_36

    .line 501
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 502
    iput v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcMode:I

    goto :goto_1c

    .line 505
    :cond_36
    sub-int v2, p1, v1

    .line 506
    iput v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcMode:I

    goto :goto_1c

    .line 512
    :cond_3b
    iput v5, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->mcScrollDuration:I

    goto :goto_22
.end method

.method stop()V
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method
