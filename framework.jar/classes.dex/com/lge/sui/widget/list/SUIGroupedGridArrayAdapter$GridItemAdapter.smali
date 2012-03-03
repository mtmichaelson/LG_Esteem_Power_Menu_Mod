.class Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SUIGroupedGridArrayAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIGroupIndexable;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mGridItemLayout:I

.field private mGroupedGridAdapter:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;ILjava/util/List;)V
    .registers 6
    .parameter "context"
    .parameter
    .parameter "gridItemLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter",
            "<TT;>;I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter<TT;>;"
    .local p2, groupedGridAdapter:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    .local p4, gridData:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 317
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->mGroupedGridAdapter:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;

    .line 318
    iput p3, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->mGridItemLayout:I

    .line 319
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 320
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 325
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter<TT;>;"
    if-nez p2, :cond_17

    .line 326
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->mGridItemLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, view:Landroid/view/View;
    :goto_b
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->mGroupedGridAdapter:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;

    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;,, "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter<TT;>;"
    check-cast p0, Lcom/lge/sui/widget/list/SUIGroupIndexable;

    invoke-virtual {v1, v0, p0}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->bindGridItemView(Landroid/view/View;Lcom/lge/sui/widget/list/SUIGroupIndexable;)V

    .line 332
    return-object v0

    .line 328
    .end local v0       #view:Landroid/view/View;,
    .restart local p0       #this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;,, "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter<TT;>;"
    :cond_17
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;,
    goto :goto_b
.end method
