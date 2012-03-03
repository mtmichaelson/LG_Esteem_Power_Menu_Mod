.class Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "SUITabHost.java"


# interfaces
.implements Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUITabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUITabHost;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 466
    iput-object p3, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 467
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/lge/sui/widget/window/SUITabHost$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 457
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 6

    .prologue
    .line 470
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    iget-object v2, v2, Lcom/lge/sui/widget/window/SUITabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_e

    .line 471
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    :cond_e
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    iget-object v2, v2, Lcom/lge/sui/widget/window/SUITabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 474
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 475
    .local v1, wd:Landroid/view/View;
    :goto_21
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_3c

    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_3c

    .line 476
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 477
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-static {v2}, Lcom/lge/sui/widget/window/SUITabHost;->access$100(Lcom/lge/sui/widget/window/SUITabHost;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 480
    :cond_3c
    iput-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 482
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_57

    .line 483
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 485
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 488
    :cond_57
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 474
    .end local v1       #wd:Landroid/view/View;,
    :cond_5a
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_21
.end method

.method public tabClosed()V
    .registers 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 493
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-static {v0}, Lcom/lge/sui/widget/window/SUITabHost;->access$100(Lcom/lge/sui/widget/window/SUITabHost;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 495
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_2f

    .line 497
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->this$0:Lcom/lge/sui/widget/window/SUITabHost;

    iget-object v0, v0, Lcom/lge/sui/widget/window/SUITabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 499
    :cond_2f
    return-void
.end method
