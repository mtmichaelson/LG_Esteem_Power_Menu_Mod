.class public Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;
.super Landroid/widget/RelativeLayout;
.source "Andy_CalendarMonthlyFlipView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$1;,
        Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;,
        Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;
    }
.end annotation


# instance fields
.field private mFlipDirection:I

.field private mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->initCalendarMonthlyView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->initCalendarMonthlyView(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->initCalendarMonthlyView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipDirection:I

    return p1
.end method

.method private initCalendarMonthlyView(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

    .line 42
    new-instance v0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;-><init>(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$1;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mGestureListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;

    .line 43
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mGestureListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 44
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

    if-eqz v0, :cond_16

    .line 105
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

    iget v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipDirection:I

    invoke-interface {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;->onFlip(I)V

    move v0, v2

    .line 109
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

    if-eqz v0, :cond_14

    .line 118
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

    iget v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipDirection:I

    invoke-interface {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;->onFlip(I)V

    .line 121
    :cond_14
    return v2
.end method

.method public setOnFlipListener(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;)V
    .registers 2
    .parameter "flipListener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->mFlipListener:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;

    .line 49
    return-void
.end method
