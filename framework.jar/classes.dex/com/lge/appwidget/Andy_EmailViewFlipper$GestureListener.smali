.class final Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Andy_EmailViewFlipper.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_EmailViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field private SWIPE_THRESHOLD_VELOCITY:I

.field private isFlip:Z

.field final synthetic this$0:Lcom/lge/appwidget/Andy_EmailViewFlipper;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_EmailViewFlipper;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 694
    iput-object p1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->this$0:Lcom/lge/appwidget/Andy_EmailViewFlipper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 696
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->isFlip:Z

    .line 698
    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_EmailViewFlipper;Lcom/lge/appwidget/Andy_EmailViewFlipper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;-><init>(Lcom/lge/appwidget/Andy_EmailViewFlipper;)V

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

    .line 703
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 705
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->isFlip:Z

    .line 706
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

    .line 712
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->isFlip:Z

    if-ne v1, v3, :cond_8

    move v1, v4

    .line 737
    :goto_7
    return v1

    .line 717
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 719
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

    iget v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 722
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->this$0:Lcom/lge/appwidget/Andy_EmailViewFlipper;

    invoke-static {v1, v4}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->access$102(Lcom/lge/appwidget/Andy_EmailViewFlipper;I)I

    .line 723
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->isFlip:Z

    move v1, v3

    .line 724
    goto :goto_7

    .line 727
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

    iget v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    .line 730
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->this$0:Lcom/lge/appwidget/Andy_EmailViewFlipper;

    invoke-static {v1, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->access$102(Lcom/lge/appwidget/Andy_EmailViewFlipper;I)I

    .line 731
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;->isFlip:Z

    move v1, v3

    .line 732
    goto :goto_7

    :cond_5a
    move v1, v4

    .line 737
    goto :goto_7
.end method
