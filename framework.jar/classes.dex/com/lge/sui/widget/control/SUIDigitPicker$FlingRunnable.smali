.class Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;
.super Ljava/lang/Object;
.source "SUIDigitPicker.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIDigitPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 4
    .parameter

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1580
    return-void
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .registers 3
    .parameter "scrollIntoSlots"

    .prologue
    .line 1628
    if-eqz p1, :cond_7

    .line 1629
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-static {v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$300(Lcom/lge/sui/widget/control/SUIDigitPicker;)V

    .line 1630
    :cond_7
    return-void
.end method

.method private startCommon()V
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1585
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1634
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    iget v5, v5, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-nez v5, :cond_b

    .line 1635
    invoke-direct {p0, v7}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->endFling(Z)V

    .line 1675
    :goto_a
    return-void

    .line 1639
    :cond_b
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$402(Lcom/lge/sui/widget/control/SUIDigitPicker;Z)Z

    .line 1641
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1642
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1643
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1647
    .local v4, y:I
    iget v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mLastFlingY:I

    sub-int v0, v5, v4

    .line 1650
    .local v0, delta:I
    if-lez v0, :cond_5a

    .line 1652
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    iget v6, v6, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    invoke-static {v5, v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$502(Lcom/lge/sui/widget/control/SUIDigitPicker;I)I

    .line 1655
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1668
    :goto_43
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v5, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->trackMotionScroll(I)V

    .line 1669
    if-eqz v1, :cond_87

    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-static {v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$400(Lcom/lge/sui/widget/control/SUIDigitPicker;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 1670
    iput v4, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mLastFlingY:I

    .line 1671
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v5, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 1660
    :cond_5a
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getChildCount()I

    move-result v5

    sub-int v2, v5, v7

    .line 1661
    .local v2, offsetToLast:I
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    iget v6, v6, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$502(Lcom/lge/sui/widget/control/SUIDigitPicker;I)I

    .line 1664
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_43

    .line 1673
    .end local v2       #offsetToLast:I,
    :cond_87
    invoke-direct {p0, v7}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->endFling(Z)V

    goto :goto_a
.end method

.method public startUsingDistance(I)V
    .registers 8
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1607
    if-nez p1, :cond_4

    .line 1615
    :goto_3
    return-void

    .line 1610
    :cond_4
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->startCommon()V

    .line 1612
    iput v1, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mLastFlingY:I

    .line 1613
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-static {v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->access$200(Lcom/lge/sui/widget/control/SUIDigitPicker;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1614
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public startUsingVelocity(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 1588
    if-nez p1, :cond_7

    .line 1604
    :goto_6
    return-void

    .line 1591
    :cond_7
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->startCommon()V

    .line 1598
    if-gez p1, :cond_1f

    move v2, v6

    .line 1599
    .local v2, initialY:I
    :goto_d
    iput v2, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mLastFlingY:I

    .line 1600
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1603
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .end local v2       #initialY:I,
    :cond_1f
    move v2, v1

    .line 1598
    goto :goto_d
.end method

.method public stop(Z)V
    .registers 3
    .parameter "scrollIntoSlots"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->this$0:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1619
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker$FlingRunnable;->endFling(Z)V

    .line 1620
    return-void
.end method
