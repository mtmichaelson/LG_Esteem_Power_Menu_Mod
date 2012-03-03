.class public Lcom/lge/appwidget/Andy_CalendarAgendaView;
.super Landroid/widget/RelativeLayout;
.source "Andy_CalendarAgendaView.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AGENDA_VIEW_ID:I = 0x3

.field public static final CALENDAR_APPLICATION_CLASS:Ljava/lang/String; = "com.android.calendar.LaunchActivity"

.field public static final CALENDAR_APPLICATION_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field public static final DETAIL_EVENT_ID:I = 0x4

.field public static final EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field public static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field public static final KEY_DETAIL_VIEW_MODE:Ljava/lang/String; = "DETAIL_VIEW_MODE"



# instance fields
.field private mAgendaJulianDay:I

.field private mAgendaTime:Landroid/text/format/Time;

.field private mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private initAgendaTime()V
    .registers 5

    .prologue
    .line 129
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    .line 130
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 132
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaJulianDay:I

    .line 133
    return-void
.end method

.method private setAgendaTitle()V
    .registers 5

    .prologue
    .line 110
    const v2, 0x2050029

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, todayView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_10

    .line 120
    :goto_f
    return-void

    .line 119
    :cond_10
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lge/appwidget/util/calendar/Andy_TimeHelper;->getAgendaIndexTimeForToday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method


# virtual methods
.method public initCalendarAgendaView(Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 54
    const v6, 0x2050020

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 55
    .local v4, moreButton:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v6, 0x2050027

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 58
    .local v5, switchButton:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->initAgendaTime()V

    .line 61
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->setAgendaTitle()V

    .line 63
    const v6, 0x2050022

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    .line 66
    .local v0, agendaListView:Lcom/lge/appwidget/Andy_CalendarAgendaListView;
    const v6, 0x2050023

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, emptyView:Landroid/view/View;
    const v6, 0x2050025

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, loadingView:Landroid/view/View;
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_51

    .line 75
    :cond_3b
    invoke-virtual {v0, v8}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setVisibility(I)V

    .line 76
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const v6, 0x2050024

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, emptyTextView:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .end local v1       #emptyTextView:Landroid/widget/TextView;,
    :goto_4d
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void

    .line 84
    :cond_51
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v0, v7}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setVisibility(I)V

    .line 86
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    iget v7, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaJulianDay:I

    invoke-virtual {v0, v6, v7, p1, p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setAgendaListView(Landroid/text/format/Time;ILjava/util/ArrayList;Lcom/lge/appwidget/Andy_CalendarAgendaView;)V

    goto :goto_4d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 138
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v3, newIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_e

    .line 191
    :cond_d
    :goto_d
    return-void

    .line 147
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_6a

    goto :goto_d

    .line 151
    :sswitch_16
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaTime:Landroid/text/format/Time;

    if-nez v4, :cond_1d

    .line 153
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->initAgendaTime()V

    .line 156
    :cond_1d
    iget v1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mAgendaJulianDay:I

    .line 158
    .local v1, intentJulianDay:I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 159
    .local v2, intentTime:Landroid/text/format/Time;
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 161
    iput v5, v2, Landroid/text/format/Time;->hour:I

    .line 162
    iput v5, v2, Landroid/text/format/Time;->minute:I

    .line 163
    iput v5, v2, Landroid/text/format/Time;->second:I

    .line 165
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.calendar"

    const-string v6, "com.android.calendar.LaunchActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const-string v4, "beginTime"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    const-string v4, "DETAIL_VIEW"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v4, "DETAIL_VIEW_MODE"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 183
    .end local v1       #intentJulianDay:I,
    .end local v2       #intentTime:Landroid/text/format/Time;,
    :sswitch_60
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

    if-eqz v4, :cond_d

    .line 188
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_CalendarLargeView;->requestSwich()V

    goto :goto_d

    .line 147
    :sswitch_data_6a
    .sparse-switch
        0x2050020 -> :sswitch_16
        0x2050024 -> :sswitch_16
        0x2050027 -> :sswitch_60
    .end sparse-switch
.end method

.method public requestShowEmptyView()V
    .registers 5

    .prologue
    .line 94
    const v3, 0x2050022

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;

    .line 97
    .local v0, agendaListView:Lcom/lge/appwidget/Andy_CalendarAgendaListView;
    const v3, 0x2050023

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 100
    .local v2, emptyView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setVisibility(I)V

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v3, 0x2050024

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, emptyTextView:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public setCalendarLargeView(Lcom/lge/appwidget/Andy_CalendarLargeView;)V
    .registers 2
    .parameter "calendarLargeView"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarAgendaView;->mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

    .line 125
    return-void
.end method
