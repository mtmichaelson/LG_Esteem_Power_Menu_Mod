.class Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "SUITabHost.java"


# interfaces
.implements Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUITabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUITabHost;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 433
    iput-object p3, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/lge/sui/widget/window/SUITabHost$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 426
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 8

    .prologue
    .line 437
    iget-object v4, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v4}, Lcom/lge/sui/widget/window/SUITabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 439
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x3030018

    iget-object v5, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-static {v5}, Lcom/lge/sui/widget/window/SUITabHost;->access$700(Lcom/lge/sui/widget/window/SUITabHost;)Lcom/lge/sui/widget/window/SUITabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 443
    .local v2, tabIndicator:Landroid/view/View;
    const v4, 0x30a0048

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 444
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    const v4, 0x30a0037

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 447
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    return-object v2
.end method
