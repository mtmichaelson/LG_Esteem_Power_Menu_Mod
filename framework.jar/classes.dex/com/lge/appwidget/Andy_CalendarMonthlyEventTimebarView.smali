.class public Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;
.super Landroid/view/View;
.source "Andy_CalendarMonthlyEventTimebarView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;
    }
.end annotation


# static fields
.field private static DAY_MILLIS:F

.field private static MINITE_MILLIS:F



# instance fields
.field private mDrawingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const v0, 0x4ca4cb80

    sput v0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->DAY_MILLIS:F

    .line 19
    const v0, 0x476a6000

    sput v0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->MINITE_MILLIS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public addDrawingEvent(ZII)Z
    .registers 7
    .parameter "isAllDay"
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    const/4 v2, 0x1

    .line 81
    if-ne p1, v2, :cond_5

    .line 83
    const/4 v0, 0x0

    .line 88
    :goto_4
    return v0

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;

    invoke-direct {v1, p0, p2, p3}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;-><init>(Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 88
    goto :goto_4
.end method

.method public clearDrawingEvent()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    .line 100
    :goto_b
    return-void

    .line 99
    :cond_c
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_b
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    sget v5, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->MINITE_MILLIS:F

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->DAY_MILLIS:F

    div-float v3, v5, v6

    .line 58
    .local v3, heightPerMinute:F
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    if-nez v5, :cond_1e

    .line 77
    :cond_1d
    return-void

    .line 63
    :cond_1e
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1d

    .line 65
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mDrawingEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;

    .line 67
    .local v0, drawingEvent:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;
    iget-wide v5, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;->mEndMinute:J

    iget-wide v7, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;->mStartMinute:J

    sub-long/2addr v5, v7

    long-to-float v2, v5

    .line 69
    .local v2, eventMinute:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v1, drawingRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getPaddingTop()I

    move-result v5

    iget-wide v6, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;->mStartMinute:J

    long-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 71
    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    mul-float v6, v2, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 72
    const/4 v5, 0x0

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 73
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->getMeasuredWidth()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 75
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f
.end method
