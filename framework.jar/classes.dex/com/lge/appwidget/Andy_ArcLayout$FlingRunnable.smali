.class Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;
.super Ljava/lang/Object;
.source "Andy_ArcLayout.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ArcLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field private misRunning:Z

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ArcLayout;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ArcLayout;)V
    .registers 4
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->misRunning:Z

    .line 597
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_ArcLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 598
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->misRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .registers 4
    .parameter "scrollIntoSlots"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 663
    if-eqz p1, :cond_d

    .line 664
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_ArcLayout;->access$400(Lcom/lge/appwidget/Andy_ArcLayout;)V

    .line 667
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->misRunning:Z

    .line 668
    return-void
.end method

.method private startCommon()V
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->misRunning:Z

    .line 604
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 671
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->misRunning:Z

    .line 673
    iget-object v5, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_ArcLayout;->getChildCount()I

    move-result v0

    .line 674
    .local v0, count:I
    if-nez v0, :cond_f

    .line 675
    invoke-direct {p0, v7}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->endFling(Z)V

    .line 699
    :goto_e
    return-void

    .line 679
    :cond_f
    iget-object v3, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 680
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 681
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 683
    .local v4, y:I
    iget v5, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mLastFlingY:I

    sub-int v1, v5, v4

    .line 685
    .local v1, delta:I
    if-lez v1, :cond_3f

    .line 686
    iget-object v5, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_ArcLayout;->access$500(Lcom/lge/appwidget/Andy_ArcLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_ArcLayout;->access$600(Lcom/lge/appwidget/Andy_ArcLayout;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 691
    :goto_30
    iget-object v5, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v5, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->access$700(Lcom/lge/appwidget/Andy_ArcLayout;I)V

    .line 693
    if-eqz v2, :cond_52

    .line 694
    iput v4, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mLastFlingY:I

    .line 695
    iget-object v5, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v5, p0}, Lcom/lge/appwidget/Andy_ArcLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 688
    :cond_3f
    iget-object v5, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_ArcLayout;->access$500(Lcom/lge/appwidget/Andy_ArcLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_ArcLayout;->access$600(Lcom/lge/appwidget/Andy_ArcLayout;)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_30

    .line 697
    :cond_52
    invoke-direct {p0, v7}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->endFling(Z)V

    goto :goto_e
.end method

.method public startUsingDistance(I)V
    .registers 8
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 623
    if-nez p1, :cond_4

    .line 633
    :goto_3
    return-void

    .line 627
    :cond_4
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startCommon()V

    .line 629
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mLastFlingY:I

    .line 630
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    const/16 v5, 0x96

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 632
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public startUsingDistance(II)V
    .registers 9
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 638
    if-nez p1, :cond_4

    .line 648
    :goto_3
    return-void

    .line 642
    :cond_4
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startCommon()V

    .line 644
    iput v1, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mLastFlingY:I

    .line 645
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 647
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public startUsingVelocity(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 607
    if-nez p1, :cond_7

    .line 619
    :goto_6
    return-void

    .line 611
    :cond_7
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->startCommon()V

    .line 613
    if-gez p1, :cond_1f

    move v2, v6

    .line 614
    .local v2, initialY:I
    :goto_d
    iput v2, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mLastFlingY:I

    .line 616
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 618
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .end local v2       #initialY:I,
    :cond_1f
    move v2, v1

    .line 613
    goto :goto_d
.end method

.method public stop(Z)V
    .registers 4
    .parameter "scrollIntoSlots"

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-virtual {v0, p0}, Lcom/lge/appwidget/Andy_ArcLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 653
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->endFling(Z)V

    .line 655
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->this$0:Lcom/lge/appwidget/Andy_ArcLayout;

    invoke-static {v0, v1}, Lcom/lge/appwidget/Andy_ArcLayout;->access$302(Lcom/lge/appwidget/Andy_ArcLayout;Z)Z

    .line 657
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ArcLayout$FlingRunnable;->misRunning:Z

    .line 658
    return-void
.end method
