.class public Lcom/lge/appwidget/Andy_CalendarAgendaListView;
.super Landroid/widget/ListView;
.source "Andy_CalendarAgendaListView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_CalendarAgendaListView$CalendarEventInfomation;,
        Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;
    }
.end annotation


# instance fields
.field private isDisableScroll:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    .line 45
    return-void
.end method

.method private isScrollChange(Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;Ljava/util/ArrayList;)Z
    .registers 10
    .parameter "listAdapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    const/4 v6, 0x1

    .line 97
    if-nez p1, :cond_5

    move v2, v6

    .line 125
    .end local p0       
    :goto_4
    return v2

    .line 102
    .restart local p0       
    :cond_5
    invoke-virtual {p1}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->getCalendarEventParcelable()Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    .local v0, adapterPacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    if-eqz p2, :cond_d

    if-nez v0, :cond_f

    :cond_d
    move v2, v6

    .line 107
    goto :goto_4

    .line 110
    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v2, v6

    .line 112
    goto :goto_4

    .line 116
    :cond_1b
    const/4 v1, 0x0

    .end local p0       
    .local v1, i:I
    :goto_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 118
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    iget-wide v2, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventId:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    iget-wide v4, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_38

    move v2, v6

    .line 120
    goto :goto_4

    .line 116
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 125
    :cond_3b
    const/4 v2, 0x0

    goto :goto_4
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 551
    const/4 v0, 0x0

    .line 554
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 132
    .local v3, listAdapter:Landroid/widget/ListAdapter;
    if-eqz v3, :cond_b

    iget-boolean v5, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    if-ne v5, v8, :cond_c

    .line 173
    :cond_b
    :goto_b
    return-void

    .line 137
    :cond_c
    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    .line 140
    .local v4, parcelable:Lcom/lge/appwidget/Andy_CalendarEventParcelable;
    if-eqz v4, :cond_b

    .line 145
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v2, intent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.calendar"

    const-string v7, "com.android.calendar.LaunchActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/high16 v5, 0x1020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    sget-object v5, Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper$CalendarEvent;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v4, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, eventUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const-string v5, "beginTime"

    iget-wide v6, v4, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mBegin:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string v5, "endTime"

    iget-wide v6, v4, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEnd:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string v5, "DETAIL_VIEW"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v5, "DETAIL_VIEW_MODE"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_b

    .line 172
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public setAgendaListView(Landroid/text/format/Time;ILjava/util/ArrayList;Lcom/lge/appwidget/Andy_CalendarAgendaView;)V
    .registers 14
    .parameter "currentTime"
    .parameter "currentJulianDay"
    .parameter
    .parameter "agendaView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;",
            "Lcom/lge/appwidget/Andy_CalendarAgendaView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, pacelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_9

    .line 91
    :goto_8
    return-void

    .line 60
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    .line 63
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;

    .line 65
    .local v1, listAdapter:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;
    if-nez v1, :cond_27

    .line 67
    new-instance v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;-><init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView;Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/format/Time;ILcom/lge/appwidget/Andy_CalendarAgendaView;)V

    .end local v1       #listAdapter:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;,
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    :goto_21
    invoke-virtual {p0, p0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_3b

    .line 89
    :goto_24
    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    goto :goto_8

    .line 71
    .restart local v1       #listAdapter:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;,
    :cond_27
    :try_start_27
    invoke-direct {p0, v1, p3}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isScrollChange(Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;Ljava/util/ArrayList;)Z

    move-result v0

    if-ne v0, v3, :cond_45

    .line 73
    new-instance v0, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;-><init>(Lcom/lge/appwidget/Andy_CalendarAgendaListView;Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/format/Time;ILcom/lge/appwidget/Andy_CalendarAgendaView;)V

    .end local v1       #listAdapter:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;,
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_3b

    goto :goto_21

    .line 83
    :catch_3b
    move-exception v0

    move-object v7, v0

    .line 85
    .local v7, exception:Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_24

    .line 89
    .end local v7       #exception:Ljava/lang/Exception;,
    :catchall_41
    move-exception v0

    iput-boolean v8, p0, Lcom/lge/appwidget/Andy_CalendarAgendaListView;->isDisableScroll:Z

    throw v0

    .restart local v1       #listAdapter:Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;,
    :cond_45
    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    .line 77
    :try_start_49
    invoke-virtual/range {v1 .. v6}, Lcom/lge/appwidget/Andy_CalendarAgendaListView$Andy_CalendarAgendaListAdapter;->setAgendaListItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/format/Time;ILcom/lge/appwidget/Andy_CalendarAgendaView;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_3b

    goto :goto_21
.end method
