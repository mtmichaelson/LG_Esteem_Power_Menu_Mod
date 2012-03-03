.class public Lcom/lge/appwidget/Andy_PhotoAlbumView;
.super Landroid/widget/ViewSwitcher;
.source "Andy_PhotoAlbumView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhotoViewSwitcher:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_PhotoAlbumView;->initPhotoFrameView()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_PhotoAlbumView;->initPhotoFrameView()V

    .line 36
    return-void
.end method


# virtual methods
.method public initPhotoFrameView()V
    .registers 5

    .prologue
    .line 44
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, mLayoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x2030021

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, view:Landroid/view/View;
    const v2, 0x2050161

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    iput-object v2, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mPhotoViewSwitcher:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    .line 48
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mPhotoViewSwitcher:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_PhotoAlbumView;->addView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public setPhotoViewItems_2x2(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mPhotoViewSwitcher:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->setPhotoViewItems_2x2(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public setPhotoViewItems_4x3(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoAlbumView;->mPhotoViewSwitcher:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->setPhotoViewItems_4x3(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method
