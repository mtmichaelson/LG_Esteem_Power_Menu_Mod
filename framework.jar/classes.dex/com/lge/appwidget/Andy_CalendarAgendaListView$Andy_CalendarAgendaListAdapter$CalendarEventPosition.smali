.class public Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;
.super Ljava/lang/Object;
.source "Andy_CalendarAgendaListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarEventPosition"
.end annotation


# instance fields
.field private mCalendarEventPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mJulianDay:J

.field final synthetic this$1:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;I)V
    .registers 5
    .parameter
    .parameter "julianDay"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->this$1:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->mCalendarEventPosition:Ljava/util/ArrayList;

    .line 498
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->mJulianDay:J

    .line 499
    return-void
.end method


# virtual methods
.method public addCalendarEventPosition(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->mCalendarEventPosition:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public getCalendarEventPositions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->mCalendarEventPosition:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getJulianDay()J
    .registers 3

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter$CalendarEventPosition;->mJulianDay:J

    return-wide v0
.end method
