.class public Lcom/lge/sui/widget/control/SUIImagePicker;
.super Landroid/widget/FrameLayout;
.source "SUIImagePicker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;,
        Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;
    }
.end annotation


# instance fields
.field private mGridView:Landroid/widget/GridView;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIImagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUIImagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIImagePicker;->initialize()V

    .line 50
    return-void
.end method

.method public static getPixel(Landroid/content/Context;F)I
    .registers 4
    .parameter "c"
    .parameter "dip"

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private initialize()V
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIImagePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x3030029

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    const v1, 0x30a0038

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIImagePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/lge/sui/widget/control/SUIImagePicker;->mGridView:Landroid/widget/GridView;

    .line 57
    return-void
.end method


# virtual methods
.method public setImageAdapter(Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;)V
    .registers 6
    .parameter "imageAdapter"

    .prologue
    .line 60
    if-nez p1, :cond_3

    .line 70
    :goto_2
    return-void

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIImagePicker;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {p1}, Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;->getImageWidth()I

    move-result v0

    .line 69
    .local v0, imageWidth:I
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIImagePicker;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIImagePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, v0

    invoke-static {v2, v3}, Lcom/lge/sui/widget/control/SUIImagePicker;->getPixel(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_2
.end method

.method public setOnImageClickListener(Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;)V
    .registers 4
    .parameter "clickListener"

    .prologue
    .line 73
    if-nez p1, :cond_3

    .line 81
    :goto_2
    return-void

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIImagePicker;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/lge/sui/widget/control/SUIImagePicker$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/sui/widget/control/SUIImagePicker$1;-><init>(Lcom/lge/sui/widget/control/SUIImagePicker;Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2
.end method
