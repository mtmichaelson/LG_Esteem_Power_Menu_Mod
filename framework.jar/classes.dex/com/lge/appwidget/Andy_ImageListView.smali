.class public Lcom/lge/appwidget/Andy_ImageListView;
.super Landroid/widget/ListView;
.source "Andy_ImageListView.java"


# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;,
        Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;,
        Lcom/lge/appwidget/Andy_ImageListView$ListType2;,
        Lcom/lge/appwidget/Andy_ImageListView$ListType1;,
        Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;,
        Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter1;
    }
.end annotation


# static fields
.field public static final FORMLISTVIEW_NO_STYLE:I = 0x0

.field public static final FORMLISTVIEW_STYLE1:I = 0x1

.field public static final FORMLISTVIEW_STYLE2:I = 0x2

.field public static final FORMLISTVIEW_STYLE3:I = 0x3



# instance fields
.field alList1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_ImageListView$ListType1;",
            ">;"
        }
    .end annotation
.end field

.field alList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_ImageListView$ListType2;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

.field private mContext:Landroid/content/Context;

.field private mCustomPositionScroller:Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;

.field public mListStyle:I

.field private madapter1:Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter1;

.field private madapter2:Lcom/lge/appwidget/Andy_ImageListView$FormListViewAdapter2;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mListStyle:I

    .line 49
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_ImageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setClickable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setItemsCanFocus(Z)V

    .line 53
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;-><init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    .line 54
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mListStyle:I

    .line 60
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_ImageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setClickable(Z)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setItemsCanFocus(Z)V

    .line 64
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;-><init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    .line 65
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mListStyle:I

    .line 70
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_ImageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setClickable(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setItemsCanFocus(Z)V

    .line 74
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;-><init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    .line 75
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_ImageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_ImageListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method private customsmoothScrollToPosition()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ImageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, firstView:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ImageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_ImageListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 297
    .local v0, childPosition:I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1c

    .line 298
    add-int/lit8 v0, v0, 0x1

    .line 301
    :cond_1c
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ImageListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;

    if-nez v2, :cond_27

    .line 302
    new-instance v2, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;

    invoke-direct {v2, p0}, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;-><init>(Lcom/lge/appwidget/Andy_ImageListView;)V

    iput-object v2, p0, Lcom/lge/appwidget/Andy_ImageListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;

    .line 304
    :cond_27
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ImageListView;->mCustomPositionScroller:Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;

    invoke-virtual {v2, v0}, Lcom/lge/appwidget/Andy_ImageListView$CustomPositionScroller;->start(I)V

    .line 305
    return-void
.end method


# virtual methods
.method public addImageToAdapter(I)V
    .registers 3
    .parameter "newPhoto"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->mAdapter:Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->addPhotos(I)V

    .line 288
    return-void
.end method

.method public addListItem1(Lcom/lge/appwidget/Andy_ImageListView$ListType1;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->alList1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public addListItem2(Lcom/lge/appwidget/Andy_ImageListView$ListType2;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView;->alList2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 82
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 457
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 464
    if-nez p2, :cond_5

    .line 465
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ImageListView;->customsmoothScrollToPosition()V

    .line 467
    :cond_5
    return-void
.end method

.method public setCustAdapter(I)V
    .registers 2
    .parameter "nStyle"

    .prologue
    .line 86
    iput p1, p0, Lcom/lge/appwidget/Andy_ImageListView;->mListStyle:I

    .line 96
    return-void
.end method
