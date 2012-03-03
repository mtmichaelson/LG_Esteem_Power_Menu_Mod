.class Lcom/lge/internal/widget/Andy_SlidingPanel$1;
.super Ljava/lang/Object;
.source "Andy_SlidingPanel.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/widget/Andy_SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;



# direct methods
.method constructor <init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ANIMATING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v1, v2, :cond_12

    move v1, v4

    .line 412
    :goto_11
    return v1

    .line 353
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 356
    .local v0, action:I
    if-eqz v0, :cond_1a

    if-ne v0, v6, :cond_25

    .line 357
    :cond_1a
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-interface {v1, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;->onPanelTouched(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    .line 361
    :cond_25
    if-nez v0, :cond_81

    .line 362
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$200(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 363
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->bringToFront()V

    .line 365
    :cond_34
    iput v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    .line 366
    iput v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    .line 367
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_57

    .line 370
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v1

    if-ne v1, v5, :cond_73

    .line 371
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v1

    if-nez v1, :cond_71

    move v1, v3

    :goto_55
    iput v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    .line 376
    :cond_57
    :goto_57
    iput-boolean v5, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->setInitialPosition:Z

    .line 392
    :goto_59
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$900(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 393
    if-ne v0, v5, :cond_f6

    .line 395
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v1

    if-nez v1, :cond_be

    move v1, v4

    .line 396
    goto :goto_11

    :cond_71
    move v1, v5

    .line 371
    goto :goto_55

    .line 373
    :cond_73
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v1

    if-ne v1, v6, :cond_7f

    move v1, v3

    :goto_7c
    iput v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    goto :goto_57

    :cond_7f
    move v1, v5

    goto :goto_7c

    .line 378
    :cond_81
    iget-boolean v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->setInitialPosition:Z

    if-eqz v1, :cond_b4

    .line 380
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$600(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    .line 381
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    .line 383
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$800(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;

    move-result-object v1

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->setScroll(II)V

    .line 384
    iput-boolean v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->setInitialPosition:Z

    .line 386
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    .line 387
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    .line 390
    :cond_b4
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->initY:I

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_59

    .line 400
    :cond_be
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v1

    if-nez v1, :cond_ed

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ABOUT_TO_ANIMATE:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v1, v2, :cond_ed

    .line 401
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1, v5}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 402
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v1, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 403
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1200(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    move v1, v4

    .line 405
    goto/16 :goto_11

    .line 409
    :cond_ed
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$1;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v2, v2, Lcom/lge/internal/widget/Andy_SlidingPanel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->post(Ljava/lang/Runnable;)Z

    :cond_f6
    move v1, v4

    .line 412
    goto/16 :goto_11
.end method
