.class Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;
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
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUITabHost;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter "label"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;Lcom/lge/sui/widget/window/SUITabHost$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 7

    .prologue
    .line 410
    iget-object v3, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v3}, Lcom/lge/sui/widget/window/SUITabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 412
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x3030018

    iget-object v4, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-static {v4}, Lcom/lge/sui/widget/window/SUITabHost;->access$700(Lcom/lge/sui/widget/window/SUITabHost;)Lcom/lge/sui/widget/window/SUITabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, tabIndicator:Landroid/view/View;
    const v3, 0x30a0048

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 417
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-object v1
.end method
