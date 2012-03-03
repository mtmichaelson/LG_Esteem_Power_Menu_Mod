.class Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Andy_SlidingPanel.java"


# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/widget/Andy_SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;



# direct methods
.method constructor <init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 621
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1002(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollX:F

    .line 624
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->initChange()Z

    .line 625
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 630
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 631
    const/4 v0, 0x0

    .line 655
    :goto_c
    return v0

    .line 635
    :cond_d
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v0

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ABOUT_TO_ANIMATE:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v0, v1, :cond_3b

    .line 636
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 637
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 638
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1200(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    move v0, v2

    .line 640
    goto :goto_c

    .line 641
    :cond_3b
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v0

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->TRACKING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v0, v1, :cond_7d

    .line 642
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v0

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v1

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7d

    .line 643
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 644
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 645
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1200(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    move v0, v2

    .line 647
    goto :goto_c

    .line 652
    :cond_7d
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 653
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v1

    if-ne v1, v2, :cond_9e

    move v1, p4

    :goto_8f
    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1302(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F

    .line 654
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v1, v1, Lcom/lge/internal/widget/Andy_SlidingPanel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 655
    goto/16 :goto_c

    :cond_9e
    move v1, p3

    .line 653
    goto :goto_8f
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 660
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 664
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v5

    .line 707
    :goto_c
    return v2

    .line 668
    :cond_d
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_2f

    move v2, v6

    .line 669
    goto :goto_c

    .line 671
    :cond_2f
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v2

    if-nez v2, :cond_3d

    cmpl-float v2, p4, v3

    if-ltz v2, :cond_3d

    move v2, v6

    .line 672
    goto :goto_c

    .line 674
    :cond_3d
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_55

    move v2, v6

    .line 675
    goto :goto_c

    .line 679
    :cond_55
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v3, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->TRACKING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v2, v3}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 681
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    move-result-object v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$2000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v3}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$2100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_86

    .line 682
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-interface {v2, v3, v5}, Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;->onHandlerClick(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)V

    .line 683
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->invalidate()V

    .line 686
    :cond_86
    const/4 v1, 0x0

    .local v1, tmpY:F
    const/4 v0, 0x0

    .line 687
    .local v0, tmpX:F
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    if-ne v2, v6, :cond_e1

    .line 688
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollY:F

    .line 689
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    if-nez v2, :cond_d2

    .line 690
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v4}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$2200(Lcom/lge/internal/widget/Andy_SlidingPanel;FII)F

    move-result v1

    .line 702
    :goto_ac
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1800(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_c0

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_cf

    .line 703
    :cond_c0
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2, v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1802(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F

    .line 704
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1502(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F

    .line 705
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->invalidate()V

    :cond_cf
    move v2, v6

    .line 707
    goto/16 :goto_c

    .line 692
    :cond_d2
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v4}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$2200(Lcom/lge/internal/widget/Andy_SlidingPanel;FII)F

    move-result v1

    goto :goto_ac

    .line 695
    :cond_e1
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollX:F

    .line 696
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ff

    .line 697
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v4}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$600(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$2200(Lcom/lge/internal/widget/Andy_SlidingPanel;FII)F

    move-result v0

    goto :goto_ac

    .line 699
    :cond_ff
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v4}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$600(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$2200(Lcom/lge/internal/widget/Andy_SlidingPanel;FII)F

    move-result v0

    goto :goto_ac
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 712
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .registers 4
    .parameter "initScrollX"
    .parameter "initScrollY"

    .prologue
    .line 615
    int-to-float v0, p1

    iput v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollX:F

    .line 616
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;->scrollY:F

    .line 617
    return-void
.end method
