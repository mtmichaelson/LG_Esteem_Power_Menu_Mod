.class public Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;
.super Ljava/lang/Object;
.source "Andy_CalendarAgendaListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CalendarAgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarEventInfomation"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsNeedIndex:Z

.field private mJulianDay:J

.field final synthetic this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView;IZJ)V
    .registers 6
    .parameter
    .parameter "index"
    .parameter "isNeedIndex"
    .parameter "julianDay"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->this$0:Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput p2, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->mIndex:I

    .line 527
    iput-boolean p3, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->mIsNeedIndex:Z

    .line 528
    iput-wide p4, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->mJulianDay:J

    .line 529
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 533
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->mIndex:I

    return v0
.end method

.method public getJulianDay()J
    .registers 3

    .prologue
    .line 543
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->mJulianDay:J

    return-wide v0
.end method

.method public isNeedIndex()Z
    .registers 2

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;->mIsNeedIndex:Z

    return v0
.end method
