.class public Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_SmartBoxGridAdapter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private _gridviewNumColumns:I

.field private _inflater:Landroid/view/LayoutInflater;

.field private _parcelable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_SmartBoxParcelable;",
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
            "Lcom/lge/appwidget/Andy_SmartBoxParcelable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, parcel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_SmartBoxParcelable;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_inflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_parcelable:Ljava/util/ArrayList;

    .line 33
    iput p3, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_gridviewNumColumns:I

    .line 34
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 11
    .parameter "position"
    .parameter "view"

    .prologue
    .line 66
    iget-object v6, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_parcelable:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 81
    :goto_4
    return-void

    .line 69
    :cond_5
    iget-object v6, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_parcelable:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/appwidget/Andy_SmartBoxParcelable;

    .line 71
    .local v5, smartbox:Lcom/lge/appwidget/Andy_SmartBoxParcelable;
    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->getPhoto()[B

    move-result-object v0

    .line 72
    .local v0, data:[B
    const/4 v3, 0x0

    .line 73
    .local v3, offset:I
    array-length v2, v0

    .line 74
    .local v2, length:I
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 76
    .local v4, photo:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;

    .line 77
    .local v1, holder:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;
    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->getRowId()I

    move-result v6

    iput v6, v1, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_rowId:I

    .line 78
    iget-object v6, v1, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v6, v1, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_photo:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v6, v1, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_unread:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->getUnread()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 84
    const-string v6, "hs"

    const-string/jumbo v7, "newView has called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, layoutId:I
    const/4 v5, 0x0

    .line 114
    .local v5, view:Landroid/view/View;
    iget v6, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_gridviewNumColumns:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_43

    .line 115
    const v1, 0x2030022

    .line 116
    iget-object v6, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 123
    :cond_19
    :goto_19
    const v3, 0x2050164

    .line 124
    .local v3, titleResourceId:I
    const v2, 0x2050163

    .line 125
    .local v2, photoResourceId:I
    const v4, 0x2050165

    .line 127
    .local v4, unreadResourceId:I
    new-instance v0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;-><init>()V

    .line 128
    .local v0, holder:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_title:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_photo:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_unread:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    return-object v5

    .line 118
    .end local v0       #holder:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;,
    .end local v2       #photoResourceId:I,
    .end local v3       #titleResourceId:I,
    .end local v4       #unreadResourceId:I,
    .restart local p0       
    :cond_43
    iget v6, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_gridviewNumColumns:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_19

    .line 119
    const v1, 0x2030023

    .line 120
    iget-object v6, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_19
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_parcelable:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->_parcelable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 54
    if-nez p2, :cond_a

    .line 55
    invoke-direct {p0, p3}, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter;->bindView(ILandroid/view/View;)V

    .line 62
    return-object v0

    .line 57
    .end local v0       #view:Landroid/view/View;,
    :cond_a
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;,
    goto :goto_6
.end method
