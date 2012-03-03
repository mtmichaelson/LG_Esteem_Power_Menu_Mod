.class public Lcom/lge/sui/widget/window/SUITabHost$TabSpec;
.super Ljava/lang/Object;
.source "SUITabHost.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUITabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUITabHost;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "tag"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;Lcom/lge/sui/widget/window/SUITabHost$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mIndicatorStrategy:Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mContentStrategy:Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/lge/sui/widget/window/SUITabHost$TabSpec;
    .registers 6
    .parameter "intent"

    .prologue
    .line 361
    new-instance v0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/lge/sui/widget/window/SUITabHost$1;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mContentStrategy:Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;

    .line 362
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/lge/sui/widget/window/SUITabHost$TabSpec;
    .registers 5
    .parameter "label"

    .prologue
    .line 345
    new-instance v0, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;Lcom/lge/sui/widget/window/SUITabHost$1;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mIndicatorStrategy:Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;

    .line 346
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/lge/sui/widget/window/SUITabHost$TabSpec;
    .registers 6
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 353
    new-instance v0, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/lge/sui/widget/window/SUITabHost$1;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->mIndicatorStrategy:Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;

    .line 354
    return-object p0
.end method
