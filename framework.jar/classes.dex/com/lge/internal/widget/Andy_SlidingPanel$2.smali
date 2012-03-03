.class Lcom/lge/internal/widget/Andy_SlidingPanel$2;
.super Ljava/lang/Object;
.source "Andy_SlidingPanel.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/widget/Andy_SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;



# direct methods
.method constructor <init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 438
    :cond_8
    :goto_8
    return-void

    .line 423
    :cond_9
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$200(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 424
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->bringToFront()V

    .line 426
    :cond_16
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->initChange()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 428
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v0

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ABOUT_TO_ANIMATE:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v0, v1, :cond_4e

    .line 429
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 430
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 431
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1200(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    goto :goto_8

    .line 436
    :cond_4e
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$2;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v1, v1, Lcom/lge/internal/widget/Andy_SlidingPanel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
