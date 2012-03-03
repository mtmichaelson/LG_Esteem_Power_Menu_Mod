.class public abstract Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "SUIImagePickerDialogBuilder.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageAdapter"
.end annotation


# static fields
.field public static DEFAULT_IMAGE_HEIGHT:I

.field public static DEFAULT_IMAGE_WIDTH:I



# instance fields
.field protected mContext:Landroid/content/Context;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0x58

    .line 142
    sput v0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->DEFAULT_IMAGE_HEIGHT:I

    .line 147
    sput v0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->DEFAULT_IMAGE_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method


# virtual methods
.method protected abstract bindImage(ILandroid/widget/ImageView;)V
.end method

.method protected createInitializedView()Landroid/widget/ImageView;
    .registers 5

    .prologue
    .line 196
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    sget v2, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->DEFAULT_IMAGE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->getPixel(F)I

    move-result v2

    sget v3, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->DEFAULT_IMAGE_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->getPixel(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getPixel(F)I
    .registers 4
    .parameter "dip"

    .prologue
    .line 213
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 166
    if-nez p2, :cond_a

    .line 167
    invoke-virtual {p0}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->createInitializedView()Landroid/widget/ImageView;

    move-result-object v1

    .line 172
    .local v1, imageView:Landroid/widget/ImageView;
    :goto_6
    invoke-virtual {p0, p1, v1}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->bindImage(ILandroid/widget/ImageView;)V

    .line 173
    return-object v1

    .line 169
    .end local v1       #imageView:Landroid/widget/ImageView;,
    :cond_a
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .restart local v1       #imageView:Landroid/widget/ImageView;,
    goto :goto_6
.end method
