.class final Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Andy_CalendarMonthlyFlipView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field private SWIPE_THRESHOLD_VELOCITY:I

.field private isFlip:Z

.field final synthetic this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->isFlip:Z

    .line 55
    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;-><init>(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 62
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->isFlip:Z

    .line 63
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "firstEvent"
    .parameter "secondEvent"
    .parameter "vX"
    .parameter "vY"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 69
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->isFlip:Z

    if-ne v1, v3, :cond_8

    move v1, v4

    .line 94
    :goto_7
    return v1

    .line 74
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 76
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

    iget v2, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 79
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;

    invoke-static {v1, v4}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->access$102(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;I)I

    .line 80
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->isFlip:Z

    move v1, v3

    .line 81
    goto :goto_7

    .line 84
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

    iget v2, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    .line 87
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;

    invoke-static {v1, v3}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->access$102(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;I)I

    .line 88
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;->isFlip:Z

    move v1, v3

    .line 89
    goto :goto_7

    :cond_5a
    move v1, v4

    .line 94
    goto :goto_7
.end method
