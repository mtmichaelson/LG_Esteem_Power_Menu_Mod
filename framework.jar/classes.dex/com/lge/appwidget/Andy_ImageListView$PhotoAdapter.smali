.class public Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_ImageListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ImageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoAdapter"
.end annotation


# instance fields
.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ImageListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "c"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    .line 245
    invoke-static {p1, p2}, Lcom/lge/appwidget/Andy_ImageListView;->access$002(Lcom/lge/appwidget/Andy_ImageListView;Landroid/content/Context;)Landroid/content/Context;

    .line 246
    return-void
.end method


# virtual methods
.method public addPhotos(I)V
    .registers 4
    .parameter "newPhoto"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->notifyDataSetChanged()V

    .line 279
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 257
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    .line 262
    if-nez p2, :cond_36

    .line 263
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_ImageListView;->access$000(Lcom/lge/appwidget/Andy_ImageListView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 264
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_ImageListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_ImageListView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 272
    :goto_26
    iget-object v2, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    return-object v1

    .line 268
    .end local v1       #imageView:Landroid/widget/ImageView;,
    .restart local p0       
    :cond_36
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 269
    .restart local v1       #imageView:Landroid/widget/ImageView;,
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_ImageListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_ImageListView$PhotoAdapter;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_ImageListView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26
.end method
