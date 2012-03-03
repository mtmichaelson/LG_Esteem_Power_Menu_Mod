.class public Lcom/lge/appwidget/Andy_BookmarkGridView;
.super Landroid/widget/GridView;
.source "Andy_BookmarkGridView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final REMOTE_BOOKMARK_ITEMS_PARCELABLE_KEY:Ljava/lang/String; = "BookmarkParcelable"



# instance fields
.field mBookmarkGridAdapter:Lcom/lge/appwidget/Andy_BookmarkGridAdapter;

.field mColumnCount:I

.field mContext:Landroid/content/Context;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "numColumns"

    const/4 v2, 0x2

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mColumnCount:I

    .line 35
    return-void
.end method


# virtual methods
.method public setBookmarkGridItem(Landroid/os/Bundle;)V
    .registers 6
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 46
    const-string v1, "BookmarkParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    .local v0, parcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_BookmarkParcelable;>;"
    new-instance v1, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mColumnCount:I

    invoke-direct {v1, v2, v0, v3}, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mBookmarkGridAdapter:Lcom/lge/appwidget/Andy_BookmarkGridAdapter;

    .line 48
    iget-object v1, p0, Lcom/lge/appwidget/Andy_BookmarkGridView;->mBookmarkGridAdapter:Lcom/lge/appwidget/Andy_BookmarkGridAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_BookmarkGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    new-instance v1, Lcom/lge/appwidget/Andy_BookmarkGridView$1;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_BookmarkGridView$1;-><init>(Lcom/lge/appwidget/Andy_BookmarkGridView;)V

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_BookmarkGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method
