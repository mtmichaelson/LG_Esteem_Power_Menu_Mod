.class final Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Andy_PhotoViewSwitcher.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_PhotoViewSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I = 0xb4

.field private static final SWIPE_THRESHOLD_VELOCITY:I



# instance fields
.field private isFlip:Z

.field final synthetic this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)V
    .registers 3
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->isFlip:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;Lcom/lge/appwidget/Andy_PhotoViewSwitcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)V

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

    .line 407
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 408
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->isFlip:Z

    .line 409
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "vX"
    .parameter "vY"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 415
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->isFlip:Z

    if-ne v1, v3, :cond_9

    move v1, v4

    .line 442
    :goto_8
    return v1

    .line 421
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 422
    .local v0, flipDistanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_36

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_36

    .line 425
    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v1, v4}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$102(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;I)I

    .line 426
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->isFlip:Z

    move v1, v3

    .line 428
    goto :goto_8

    .line 431
    :cond_36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_55

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_55

    .line 434
    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v1, v3}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$102(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;I)I

    .line 435
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;->isFlip:Z

    move v1, v3

    .line 437
    goto :goto_8

    :cond_55
    move v1, v4

    .line 442
    goto :goto_8
.end method
