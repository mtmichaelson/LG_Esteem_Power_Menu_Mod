.class public Lcom/lge/appwidget/Andy_RichNoteListView;
.super Landroid/widget/ListView;
.source "Andy_RichNoteListView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;,
        Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE:I = 0x1

.field private static final LOCATION:I = 0x2

.field private static final TEXT:I = 0x0

.field private static final TextViewWidth:I = 0x1a4

.field static emptyList:Z



# instance fields
.field cropImageDrawable:Landroid/graphics/drawable/Drawable;

.field currentNotePosition:I

.field cursor:Landroid/database/Cursor;

.field isAction_up:Z

.field isFling:Z

.field isScroll:Z

.field isWoring:Z

.field lastTop:I

.field private mAdapter:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

.field mRandom:Ljava/util/Random;

.field mRichnoteSAXParser:Lcom/lge/appwidget/Andy_RichnoteSAXParser;

.field private mTestViewBoundaryChecker:Lcom/lge/appwidget/TextViewBoundaryChecker;

.field pageDrawable:Landroid/graphics/drawable/Drawable;

.field photoBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field photoFoldDrawable:Landroid/graphics/drawable/Drawable;

.field shareNotePostion:I

.field shareView:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/appwidget/Andy_RichNoteListView;->emptyList:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_RichNoteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/appwidget/Andy_RichNoteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->shareNotePostion:I

    .line 65
    iput v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->currentNotePosition:I

    .line 609
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isAction_up:Z

    .line 610
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isFling:Z

    .line 654
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isWoring:Z

    .line 655
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    .line 81
    iput-object p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->setClickable(Z)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_RichNoteListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 85
    new-instance v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mAdapter:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mRandom:Ljava/util/Random;

    .line 87
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mAdapter:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_RichNoteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->setCacheColorHint(I)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 90
    new-instance v0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_RichnoteSAXParser;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mRichnoteSAXParser:Lcom/lge/appwidget/Andy_RichnoteSAXParser;

    .line 91
    new-instance v0, Lcom/lge/appwidget/TextViewBoundaryChecker;

    const/16 v1, 0x1a4

    invoke-direct {v0, v1}, Lcom/lge/appwidget/TextViewBoundaryChecker;-><init>(I)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mTestViewBoundaryChecker:Lcom/lge/appwidget/TextViewBoundaryChecker;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_RichNoteListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_RichNoteListView;)Lcom/lge/appwidget/TextViewBoundaryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mTestViewBoundaryChecker:Lcom/lge/appwidget/TextViewBoundaryChecker;

    return-object v0
.end method

.method private customsmoothScrollToNextPosition()V
    .registers 4

    .prologue
    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 442
    .local v0, childPosition:I
    add-int/lit8 v0, v0, 0x1

    .line 444
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    if-nez v1, :cond_16

    .line 445
    new-instance v1, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    .line 448
    :cond_16
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_22

    .line 449
    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->currentNotePosition:I

    .line 451
    :cond_22
    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->shareNotePostion:I

    .line 452
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->start(I)V

    .line 454
    return-void
.end method

.method private customsmoothScrollToPreviousPosition()V
    .registers 4

    .prologue
    .line 456
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 458
    .local v0, childPosition:I
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    if-nez v1, :cond_14

    .line 459
    new-instance v1, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    .line 461
    :cond_14
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_20

    .line 462
    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->currentNotePosition:I

    .line 464
    :cond_20
    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->shareNotePostion:I

    .line 465
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/Andy_RichNoteListView$CustomPositionScroller;->start(I)V

    .line 467
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    const-string v0, "detatched from window"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 100
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->cursor:Landroid/database/Cursor;

    .line 615
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 616
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 618
    .local v2, rowId:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.app.richnote.intent.action.DetailView"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "fileId"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 622
    iget-object v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 624
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 13
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v6, 0x0

    const-string v7, "go"

    .line 628
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    .line 629
    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_RichNoteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 630
    .local v2, firstView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 631
    .local v0, currentTop:I
    const-string v3, "currentTop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->lastTop:I

    sub-int v1, v3, v0

    .line 634
    .local v1, dd:I
    iget v3, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->lastTop:I

    if-eqz v3, :cond_4f

    .line 635
    if-lez v1, :cond_52

    .line 636
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    .line 637
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->customsmoothScrollToNextPosition()V

    .line 638
    const-string v3, "go"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_4f
    :goto_4f
    iput v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->lastTop:I

    .line 652
    .end local v0       #currentTop:I,
    .end local v1       #dd:I,
    .end local v2       #firstView:Landroid/view/View;,
    :cond_51
    return-void

    .line 642
    .restart local v0       #currentTop:I,
    .restart local v1       #dd:I,
    .restart local v2       #firstView:Landroid/view/View;,
    :cond_52
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    .line 643
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->customsmoothScrollToPreviousPosition()V

    .line 644
    const-string v3, "go"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "go"

    .line 659
    if-ne p2, v1, :cond_12

    .line 661
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    .line 663
    iput v2, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->lastTop:I

    .line 664
    const-string v0, "go"

    const-string v0, "gogogogo"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_11
    :goto_11
    return-void

    .line 666
    :cond_12
    if-nez p2, :cond_11

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    if-ne v0, v1, :cond_11

    .line 667
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->isScroll:Z

    .line 670
    const-string v0, "go"

    const-string v0, "go3"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public setBackgroundImage(I)V
    .registers 3
    .parameter "imageid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->pageDrawable:Landroid/graphics/drawable/Drawable;

    .line 392
    return-void
.end method

.method public setCropImage(I)V
    .registers 3
    .parameter "imageid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->cropImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    return-void
.end method

.method public setEmptyViewForListView(I)V
    .registers 4
    .parameter "imageId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 384
    .local v1, parentLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 386
    .local v0, noItemView:Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_RichNoteListView;->setEmptyView(Landroid/view/View;)V

    .line 387
    return-void
.end method

.method public setPhotoBackgroundImage(I)V
    .registers 3
    .parameter "imageid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->photoBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    return-void
.end method

.method public setPhotoFoldImage(I)V
    .registers 3
    .parameter "imageid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->photoFoldDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    return-void
.end method

.method public shareNote(Z)V
    .registers 10
    .parameter "dummyFlag"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/high16 v7, 0x1000

    .line 413
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_RichNoteListView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 417
    const-string v4, "Note position to share > "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->shareNotePostion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_32
    new-instance v2, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "sdcard/richnote_share.png"

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_44} :catch_6e

    .line 426
    .end local v2       #out:Ljava/io/FileOutputStream;,
    :goto_44
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v3, picMessageIntent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v4, "android.intent.extra.STREAM"

    const-string v5, "file:///sdcard/richnote_share.png"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 434
    iget-object v4, p0, Lcom/lge/appwidget/Andy_RichNoteListView;->mContext:Landroid/content/Context;

    const-string v5, "Share Note via"

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 438
    return-void

    .line 422
    .end local v3       #picMessageIntent:Landroid/content/Intent;,
    :catch_6e
    move-exception v4

    goto :goto_44
.end method
