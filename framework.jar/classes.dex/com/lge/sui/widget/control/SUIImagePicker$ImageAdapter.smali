.class public abstract Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "SUIImagePicker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageAdapter"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mImageHeight:I

.field protected mImageWidth:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    const/16 v0, 0x56

    .line 132
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 119
    iput v0, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageWidth:I

    .line 124
    iput v0, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageHeight:I

    .line 133
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method


# virtual methods
.method protected abstract bindImage(ILandroid/widget/ImageView;)V
.end method

.method protected createImageView()Landroid/widget/ImageView;
    .registers 6

    .prologue
    .line 199
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/lge/sui/widget/control/SUIImagePicker;->getPixel(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageHeight:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/lge/sui/widget/control/SUIImagePicker;->getPixel(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    return-object v0
.end method

.method public final getImageWidth()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageWidth:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 169
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 175
    if-nez p2, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->createImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 181
    .local v1, imageView:Landroid/widget/ImageView;
    :goto_6
    invoke-virtual {p0, p1, v1}, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->bindImage(ILandroid/widget/ImageView;)V

    .line 182
    return-object v1

    .line 178
    .end local v1       #imageView:Landroid/widget/ImageView;,
    :cond_a
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .restart local v1       #imageView:Landroid/widget/ImageView;,
    goto :goto_6
.end method

.method public setImageHeight(I)V
    .registers 2
    .parameter "imageHeight"

    .prologue
    .line 142
    if-lez p1, :cond_4

    .line 143
    iput p1, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageHeight:I

    .line 144
    :cond_4
    return-void
.end method

.method public setImageWidth(I)V
    .registers 2
    .parameter "imageWidth"

    .prologue
    .line 152
    if-lez p1, :cond_4

    .line 153
    iput p1, p0, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->mImageWidth:I

    .line 154
    :cond_4
    return-void
.end method
