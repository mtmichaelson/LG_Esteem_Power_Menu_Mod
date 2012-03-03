.class Landroid/widget/Andy_VerticalGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Andy_VerticalGallery.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Andy_VerticalGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Andy_VerticalGallery;



# direct methods
.method public constructor <init>(Landroid/widget/Andy_VerticalGallery;)V
    .registers 4
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Andy_VerticalGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1325
    return-void
.end method

.method static synthetic access$100(Landroid/widget/Andy_VerticalGallery$FlingRunnable;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Andy_VerticalGallery$FlingRunnable;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .registers 4
    .parameter "scrollIntoSlots"

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1369
    if-eqz p1, :cond_d

    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v0}, Landroid/widget/Andy_VerticalGallery;->access$500(Landroid/widget/Andy_VerticalGallery;)V

    .line 1370
    :cond_d
    return-void
.end method

.method private startCommon()V
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v0, p0}, Landroid/widget/Andy_VerticalGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1330
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1375
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_b

    .line 1376
    invoke-direct {p0, v7}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->endFling(Z)V

    .line 1414
    :goto_a
    return-void

    .line 1380
    :cond_b
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/widget/Andy_VerticalGallery;->access$602(Landroid/widget/Andy_VerticalGallery;Z)Z

    .line 1382
    iget-object v3, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1383
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1384
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1388
    .local v4, y:I
    iget v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mLastFlingY:I

    sub-int v0, v5, v4

    .line 1391
    .local v0, delta:I
    if-lez v0, :cond_5a

    .line 1393
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    iget-object v6, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-static {v5, v6}, Landroid/widget/Andy_VerticalGallery;->access$702(Landroid/widget/Andy_VerticalGallery;I)I

    .line 1396
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v5}, Landroid/widget/Andy_VerticalGallery;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v6}, Landroid/widget/Andy_VerticalGallery;->access$800(Landroid/widget/Andy_VerticalGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v6}, Landroid/widget/Andy_VerticalGallery;->access$900(Landroid/widget/Andy_VerticalGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1406
    :goto_43
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v5, v0}, Landroid/widget/Andy_VerticalGallery;->trackMotionScroll(I)V

    .line 1408
    if-eqz v1, :cond_87

    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v5}, Landroid/widget/Andy_VerticalGallery;->access$600(Landroid/widget/Andy_VerticalGallery;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 1409
    iput v4, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mLastFlingY:I

    .line 1410
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v5, p0}, Landroid/widget/Andy_VerticalGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 1399
    :cond_5a
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v5}, Landroid/widget/Andy_VerticalGallery;->getChildCount()I

    move-result v5

    sub-int v2, v5, v7

    .line 1400
    .local v2, offsetToTop:I
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    iget-object v6, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Landroid/widget/Andy_VerticalGallery;->access$702(Landroid/widget/Andy_VerticalGallery;I)I

    .line 1403
    iget-object v5, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v5}, Landroid/widget/Andy_VerticalGallery;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v6}, Landroid/widget/Andy_VerticalGallery;->access$1000(Landroid/widget/Andy_VerticalGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v6}, Landroid/widget/Andy_VerticalGallery;->access$1100(Landroid/widget/Andy_VerticalGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_43

    .line 1412
    .end local v2       #offsetToTop:I,
    :cond_87
    invoke-direct {p0, v7}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->endFling(Z)V

    goto :goto_a
.end method

.method public startUsingDistance(I)V
    .registers 8
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1347
    if-nez p1, :cond_4

    .line 1354
    :goto_3
    return-void

    .line 1349
    :cond_4
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->startCommon()V

    .line 1351
    iput v1, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mLastFlingY:I

    .line 1352
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-static {v2}, Landroid/widget/Andy_VerticalGallery;->access$400(Landroid/widget/Andy_VerticalGallery;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1353
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v0, p0}, Landroid/widget/Andy_VerticalGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public startUsingVelocity(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 1334
    if-nez p1, :cond_7

    .line 1343
    :goto_6
    return-void

    .line 1336
    :cond_7
    invoke-direct {p0}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->startCommon()V

    .line 1338
    if-gez p1, :cond_1f

    move v2, v6

    .line 1339
    .local v2, initialY:I
    :goto_d
    iput v2, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mLastFlingY:I

    .line 1340
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1342
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v0, p0}, Landroid/widget/Andy_VerticalGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .end local v2       #initialY:I,
    :cond_1f
    move v2, v1

    .line 1338
    goto :goto_d
.end method

.method public stop(Z)V
    .registers 3
    .parameter "scrollIntoSlots"

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->this$0:Landroid/widget/Andy_VerticalGallery;

    invoke-virtual {v0, p0}, Landroid/widget/Andy_VerticalGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1359
    invoke-direct {p0, p1}, Landroid/widget/Andy_VerticalGallery$FlingRunnable;->endFling(Z)V

    .line 1360
    return-void
.end method
