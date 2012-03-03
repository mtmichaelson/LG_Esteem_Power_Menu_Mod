.class final Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Andy_EmailMidViewFlipper.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_EmailMidViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field private SWIPE_THRESHOLD_VELOCITY:I

.field private isFlip:Z

.field final synthetic this$0:Lcom/lge/appwidget/Andy_EmailMidViewFlipper;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 674
    iput-object p1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->this$0:Lcom/lge/appwidget/Andy_EmailMidViewFlipper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 676
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->isFlip:Z

    .line 678
    iput v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;Lcom/lge/appwidget/Andy_EmailMidViewFlipper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;-><init>(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 683
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 685
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->isFlip:Z

    .line 686
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "vX"
    .parameter "vY"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 692
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->isFlip:Z

    if-ne v1, v3, :cond_8

    move v1, v4

    .line 717
    :goto_7
    return v1

    .line 697
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 699
    .local v0, flipDistanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 702
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->this$0:Lcom/lge/appwidget/Andy_EmailMidViewFlipper;

    invoke-static {v1, v4}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->access$102(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;I)I

    .line 703
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->isFlip:Z

    move v1, v3

    .line 704
    goto :goto_7

    .line 707
    :cond_38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    .line 710
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->this$0:Lcom/lge/appwidget/Andy_EmailMidViewFlipper;

    invoke-static {v1, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->access$102(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;I)I

    .line 711
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;->isFlip:Z

    move v1, v3

    .line 712
    goto :goto_7

    :cond_5a
    move v1, v4

    .line 717
    goto :goto_7
.end method
