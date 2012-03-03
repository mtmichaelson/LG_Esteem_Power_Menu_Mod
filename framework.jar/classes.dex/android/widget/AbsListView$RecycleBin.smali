.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;



# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 4384
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4398
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4384
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4384
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4384
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4384
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4384
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .registers 13

    .prologue
    .line 4623
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 4624
    .local v3, maxViews:I
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4625
    .local v8, viewTypeCount:I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4626
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v8, :cond_2d

    .line 4627
    aget-object v4, v5, v1

    .line 4628
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4629
    .local v6, size:I
    sub-int v0, v6, v3

    .line 4630
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 4631
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6       #size:I,
    .local v7, size:I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 4632
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7       #size:I,
    .restart local v6       #size:I,
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4631
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6       #size:I,
    .restart local v7       #size:I,
    goto :goto_16

    .line 4626
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4635
    .end local v0       #extras:I,
    .end local v2       #j:I,
    .end local v4       #scrapPile:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7       #size:I,
    :cond_2d
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .registers 6
    .parameter "scrap"

    .prologue
    .line 4544
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4545
    .local v0, lp:Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_9

    .line 4570
    :cond_8
    :goto_8
    return-void

    .line 4551
    :cond_9
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 4552
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4553
    const/4 v2, -0x2

    if-eq v1, v2, :cond_8

    .line 4554
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_8

    .line 4559
    :cond_1b
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 4560
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 4561
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4567
    :goto_28
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v2, :cond_8

    .line 4568
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_8

    .line 4563
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 4564
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method clear()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4450
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_20

    .line 4451
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4452
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4453
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 4454
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4453
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4457
    .end local v0       #i:I,
    .end local v2       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3       #scrapCount:I,
    :cond_20
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4458
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I,
    :goto_23
    if-ge v0, v4, :cond_44

    .line 4459
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 4460
    .restart local v2       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4461
    .restart local v3       #scrapCount:I,
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 4462
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4461
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 4458
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 4466
    .end local v1       #j:I,
    .end local v2       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3       #scrapCount:I,
    .end local v4       #typeCount:I,
    :cond_44
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 4476
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 4477
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4479
    :cond_9
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 4481
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4482
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 4483
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4484
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 4486
    .local v3, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 4489
    aput-object v1, v0, v2

    .line 4482
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4492
    .end local v1       #child:Landroid/view/View;,
    .end local v3       #lp:Landroid/widget/AbsListView$LayoutParams;,
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4502
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 4503
    .local v1, index:I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4504
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_12

    array-length v3, v0

    if-ge v1, v3, :cond_12

    .line 4505
    aget-object v2, v0, v1

    .line 4506
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 4509
    .end local v2       #match:Landroid/view/View;,
    :goto_11
    return-object v3

    :cond_12
    move-object v3, v4

    goto :goto_11
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 8
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4517
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1a

    .line 4518
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4519
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4520
    .local v1, size:I
    if-lez v1, :cond_18

    .line 4521
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 4535
    .end local v0       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1       #size:I,
    :goto_17
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I,
    .restart local p0       
    :cond_18
    move-object v3, v5

    .line 4523
    goto :goto_17

    .line 4526
    .end local v0       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1       #size:I,
    :cond_1a
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 4527
    .local v2, whichScrap:I
    if-ltz v2, :cond_3d

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_3d

    .line 4528
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 4529
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4530
    .restart local v1       #size:I,
    if-lez v1, :cond_3d

    .line 4531
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    goto :goto_17

    .end local v0       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1       #size:I,
    .restart local p0       
    :cond_3d
    move-object v3, v5

    .line 4535
    goto :goto_17
.end method

.method public markChildrenDirty()V
    .registers 8

    .prologue
    .line 4424
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    .line 4425
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4426
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4427
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .end local p0       
    .local v0, i:I
    :goto_c
    if-ge v0, v3, :cond_39

    .line 4428
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 4427
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4431
    .end local v0       #i:I,
    .end local v2       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3       #scrapCount:I,
    .restart local p0       
    :cond_1a
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4432
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I,
    :goto_1d
    if-ge v0, v4, :cond_39

    .line 4433
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 4434
    .restart local v2       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4435
    .restart local v3       #scrapCount:I,
    const/4 v1, 0x0

    .local v1, j:I
    :goto_28
    if-ge v1, v3, :cond_36

    .line 4436
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 4435
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 4432
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 4440
    .end local v1       #j:I,
    .end local v2       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3       #scrapCount:I,
    .end local v4       #typeCount:I,
    .end local p0       
    :cond_39
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4641
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 4642
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4651
    :cond_a
    return-void

    .line 4644
    :cond_b
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4645
    .local v3, viewTypeCount:I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4646
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 4647
    aget-object v1, v2, v0

    .line 4648
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4646
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method scrapActiveViews()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4576
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4577
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v8, :cond_35

    move v2, v9

    .line 4578
    .local v2, hasListener:Z
    :goto_9
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_37

    move v4, v9

    .line 4580
    .local v4, multipleScraps:Z
    :goto_e
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4581
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 4582
    .local v1, count:I
    sub-int v3, v1, v9

    .local v3, i:I
    :goto_13
    if-ltz v3, :cond_4d

    .line 4583
    aget-object v6, v0, v3

    .line 4584
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_32

    .line 4585
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v7, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 4587
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 4589
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_39

    .line 4591
    const/4 v8, -0x2

    if-eq v7, v8, :cond_32

    .line 4592
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v8, v6, v10}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4582
    .end local v7       #whichScrap:I,
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .end local v1       #count:I,
    .end local v2       #hasListener:Z,
    .end local v3       #i:I,
    .end local v4       #multipleScraps:Z,
    .end local v5       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6       #victim:Landroid/view/View;,
    :cond_35
    move v2, v10

    .line 4577
    goto :goto_9

    .restart local v2       #hasListener:Z,
    :cond_37
    move v4, v10

    .line 4578
    goto :goto_e

    .line 4597
    .restart local v1       #count:I,
    .restart local v3       #i:I,
    .restart local v4       #multipleScraps:Z,
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;,
    .restart local v7       #whichScrap:I,
    :cond_39
    if-eqz v4, :cond_3f

    .line 4598
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 4600
    :cond_3f
    invoke-virtual {v6}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 4601
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4603
    if-eqz v2, :cond_32

    .line 4604
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_32

    .line 4615
    .end local v6       #victim:Landroid/view/View;,
    .end local v7       #whichScrap:I,
    :cond_4d
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 4616
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .parameter "color"

    .prologue
    .line 4659
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 4660
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4661
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4662
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 4663
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4662
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4666
    .end local v2       #i:I,
    .end local v4       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5       #scrapCount:I,
    :cond_1a
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4667
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I,
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 4668
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 4669
    .restart local v4       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4670
    .restart local v5       #scrapCount:I,
    const/4 v3, 0x0

    .local v3, j:I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 4671
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4670
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 4667
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 4676
    .end local v3       #j:I,
    .end local v4       #scrap:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5       #scrapCount:I,
    .end local v6       #typeCount:I,
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4677
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 4678
    .local v1, count:I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 4679
    aget-object v7, v0, v2

    .line 4680
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_46

    .line 4681
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4678
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 4684
    .end local v7       #victim:Landroid/view/View;,
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .parameter "viewTypeCount"

    .prologue
    .line 4410
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 4411
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4414
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 4415
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 4416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 4415
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4418
    :cond_1a
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4419
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4420
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4421
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .parameter "viewType"

    .prologue
    .line 4443
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
