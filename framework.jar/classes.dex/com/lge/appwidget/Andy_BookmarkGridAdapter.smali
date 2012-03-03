.class public Lcom/lge/appwidget/Andy_BookmarkGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_BookmarkGridAdapter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mColumnCount:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParcelable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_BookmarkParcelable;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 5
    .parameter "context"
    .parameter
    .parameter "gridviewNumColumns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_BookmarkParcelable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, parcel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_BookmarkParcelable;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mParcelable:Ljava/util/ArrayList;

    .line 29
    iput p3, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mColumnCount:I

    .line 30
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 12
    .parameter "position"
    .parameter "view"

    .prologue
    .line 63
    iget-object v7, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mParcelable:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    .line 89
    :cond_4
    :goto_4
    return-void

    .line 64
    :cond_5
    iget-object v7, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mParcelable:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_BookmarkParcelable;

    .line 66
    .local v0, bookmark:Lcom/lge/appwidget/Andy_BookmarkParcelable;
    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;

    .line 68
    .local v3, holder:Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;
    if-eqz v3, :cond_4

    .line 70
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_BookmarkParcelable;->getUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_url:Ljava/lang/String;

    .line 71
    iget-object v7, v3, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_BookmarkParcelable;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :try_start_26
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_BookmarkParcelable;->getThumbnail()[B

    move-result-object v1

    .line 76
    .local v1, data:[B
    if-eqz v1, :cond_3e

    .line 77
    const/4 v5, 0x0

    .line 78
    .local v5, offset:I
    array-length v4, v1

    .line 79
    .local v4, length:I
    invoke-static {v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 80
    .local v6, thumb:Landroid/graphics/Bitmap;
    iget-object v7, v3, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_4

    .line 85
    .end local v1       #data:[B,
    .end local v4       #length:I,
    .end local v5       #offset:I,
    .end local v6       #thumb:Landroid/graphics/Bitmap;,
    :catch_38
    move-exception v7

    move-object v2, v7

    .line 86
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 83
    .end local v2       #e:Ljava/lang/Exception;,
    .restart local v1       #data:[B,
    :cond_3e
    :try_start_3e
    iget-object v7, v3, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_thumbnail:Landroid/widget/ImageView;

    const v8, 0x2020015

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_38

    goto :goto_4
.end method

.method private newView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 9
    .parameter "parent"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, layoutId:I
    const/4 v2, 0x0

    .line 97
    .local v2, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mColumnCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    .line 98
    const v1, 0x2030001

    .line 99
    iget-object v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 108
    :cond_11
    :goto_11
    new-instance v0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;-><init>()V

    .line 109
    .local v0, holder:Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;
    const v3, 0x205001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_title:Landroid/widget/TextView;

    .line 110
    const v3, 0x205001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    return-object v2

    .line 102
    .end local v0       #holder:Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;,
    .restart local p0       
    :cond_30
    iget v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mColumnCount:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3a

    iget v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mColumnCount:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 104
    :cond_3a
    const v1, 0x2030002

    .line 105
    iget-object v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_11
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mParcelable:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->mParcelable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    if-nez p2, :cond_a

    .line 51
    invoke-direct {p0, p3, p1}, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->newView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_BookmarkGridAdapter;->bindView(ILandroid/view/View;)V

    .line 58
    return-object v0

    .line 53
    .end local v0       #view:Landroid/view/View;,
    :cond_a
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;,
    goto :goto_6
.end method
