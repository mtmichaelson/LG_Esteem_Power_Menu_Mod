.class Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;
.super Ljava/lang/Object;
.source "Andy_CalendarMonthlyEventTimebarView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawingEvent"
.end annotation


# instance fields
.field public mEndMinute:J

.field public mStartMinute:J

.field final synthetic this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;II)V
    .registers 6
    .parameter
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;->this$0:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;->mStartMinute:J

    .line 110
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView$DrawingEvent;->mEndMinute:J

    .line 111
    return-void
.end method
