.class public Lcom/lge/appwidget/Andy_NewsListView;
.super Landroid/widget/ListView;
.source "Andy_NewsListView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAndyClickListener:Landroid/widget/AdapterView$OnItemClickListener;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/lge/appwidget/Andy_NewsListView$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_NewsListView$1;-><init>(Lcom/lge/appwidget/Andy_NewsListView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_NewsListView;->mAndyClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method public setBundle(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_NewsListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 24
    .local v1, adapter:Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;

    if-eqz v2, :cond_1b

    .line 25
    move-object v0, v1

    check-cast v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;

    move-object v2, v0

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_NewsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->setBundle(Landroid/content/Context;Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 26
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_NewsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    :cond_1a
    :goto_1a
    return-void

    .line 29
    :cond_1b
    new-instance v1, Lcom/lge/appwidget/Andy_NewsBundleAdapter;

    .end local v1       #adapter:Landroid/widget/ListAdapter;,
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_NewsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 30
    .restart local v1       #adapter:Landroid/widget/ListAdapter;,
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_NewsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    iget-object v2, p0, Lcom/lge/appwidget/Andy_NewsListView;->mAndyClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_NewsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1a
.end method
