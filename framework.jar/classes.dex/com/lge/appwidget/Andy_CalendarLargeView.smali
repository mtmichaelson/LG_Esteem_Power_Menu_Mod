.class public Lcom/lge/appwidget/Andy_CalendarLargeView;
.super Landroid/widget/ViewSwitcher;
.source "Andy_CalendarLargeView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_CalendarLargeView$OnDisplayWidgetTypeListener;,
        Lcom/lge/appwidget/Andy_CalendarLargeView$OnMonthlyFlipListener;
    }
.end annotation


# static fields
.field public static final CALENDAR_DISPLAY_WIDGET_TYPE_CHANGE_ACTION:Ljava/lang/String; = "android.calendar.display.action.CHANGE"

.field public static final CALENDAR_DISPLAY_WIDGET_TYPE_CHANGE_DATA_URI:Ljava/lang/String; = "://calendar_display_change/"

.field public static final CALENDAR_DISPLAY_WIDGET_TYPE_CHANGE_URI_SCHEME:Ljava/lang/String; = "calendar_display"

.field public static final CALENDAR_MONTHLY_DATA_URI:Ljava/lang/String; = "://calendar_monthly_flip/"

.field public static final CALENDAR_MONTHLY_FLIP_ACTION:Ljava/lang/String; = "android.calendar.monthly.action.FLIP"

.field public static final CALENDAR_MONTHLY_URI_SCHEME:Ljava/lang/String; = "calendar_monthly"

.field private static final DISPLAY_PACKAGE_NAME:Ljava/lang/String; = "com.lge.sizechangable.calendar"

.field private static final DISPLAY_SHARED_PREFS_NAME:Ljava/lang/String; = "CalendarDisplayPreferences"

.field public static final FLIP_DOWN:I = 0x1

.field public static final FLIP_UP:I = 0x0

.field public static final REMOTE_CALENDAR_EVENTS_PARCELABLE_KEY:Ljava/lang/String; = "CalendarEvents"

.field public static final REMOTE_CALENDAR_FLIP_LISTENER_PARCELABLE_KEY:Ljava/lang/String; = "CalendarFlipListener"

.field public static final WIDGET_AGENDA_VIEW:I = 0x1

.field public static final WIDGET_MONTH_VIEW:I



# instance fields
.field private mAppWidgetId:I

.field private mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

.field private mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

.field private mIsChangeDisplay:Z

.field private mIsSetDisplayChangeListener:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsSetDisplayChangeListener:Z

    .line 44
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_CalendarLargeView;->initCalendarLargeView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsSetDisplayChangeListener:Z

    .line 44
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    .line 57
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_CalendarLargeView;->initCalendarLargeView(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private changeDisplayWidgetType(I)V
    .registers 8
    .parameter "displayWidgetType"

    .prologue
    .line 278
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsSetDisplayChangeListener:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    .line 280
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.calendar.display.action.CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v3, "calendar_display://calendar_display_change/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mAppWidgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 288
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_44

    .line 299
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #dataUri:Landroid/net/Uri;,
    .end local v2       #intent:Landroid/content/Intent;,
    :cond_43
    :goto_43
    return-void

    .line 297
    .restart local v0       #context:Landroid/content/Context;,
    .restart local v1       #dataUri:Landroid/net/Uri;,
    .restart local v2       #intent:Landroid/content/Intent;,
    :cond_44
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_43
.end method

.method private getDisplayWidgetType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const/4 v5, 0x0

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, displayContext:Landroid/content/Context;
    if-nez p1, :cond_6

    move v3, v5

    .line 263
    :goto_5
    return v3

    .line 244
    :cond_6
    :try_start_6
    const-string v3, "com.lge.sizechangable.calendar"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_11

    move-result-object v0

    .line 251
    if-nez v0, :cond_15

    move v3, v5

    .line 253
    goto :goto_5

    .line 246
    :catch_11
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v3, v5

    .line 248
    goto :goto_5

    .line 256
    .end local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;,
    :cond_15
    const-string v3, "CalendarDisplayPreferences"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 258
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    if-nez v2, :cond_20

    move v3, v5

    .line 260
    goto :goto_5

    .line 263
    :cond_20
    invoke-interface {v2, p2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_5
.end method


# virtual methods
.method public initCalendarLargeView(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->removeAllViews()V

    .line 65
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2030008

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, view:Landroid/view/View;
    const v2, 0x20500b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    iput-object v2, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    .line 70
    const v2, 0x2030003

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    const v2, 0x205001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_CalendarAgendaView;

    iput-object v2, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    .line 73
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v2, p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setCalendarLargeView(Lcom/lge/appwidget/Andy_CalendarLargeView;)V

    .line 74
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    invoke-virtual {v2, p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->setCalendarLargeView(Lcom/lge/appwidget/Andy_CalendarLargeView;)V

    .line 76
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarLargeView;->addView(Landroid/view/View;)V

    .line 77
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarLargeView;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_CalendarLargeView;->setCalendarAnimation(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public initMonthlyWeekDayViews(I)V
    .registers 3
    .parameter "flag"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    if-nez v0, :cond_5

    .line 169
    :goto_4
    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->initMonthlyWeekDayViews()V

    goto :goto_4
.end method

.method public requestSwich()V
    .registers 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_7

    .line 114
    :cond_6
    :goto_6
    return-void

    .line 98
    :cond_7
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    if-nez v3, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, currentView:Landroid/view/View;
    instance-of v3, v1, Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    if-eqz v3, :cond_1b

    .line 104
    const/4 v2, 0x1

    .line 111
    .local v2, displayWidgetType:I
    :goto_14
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->showNext()V

    .line 112
    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_CalendarLargeView;->changeDisplayWidgetType(I)V

    goto :goto_6

    .line 108
    .end local v2       #displayWidgetType:I,
    :cond_1b
    const/4 v2, 0x0

    .restart local v2       #displayWidgetType:I,
    goto :goto_14
.end method

.method public setAgendaEvents(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 306
    if-nez p1, :cond_13

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :goto_7
    if-nez v0, :cond_e

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    .end local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .restart local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :cond_e
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    if-nez v1, :cond_1a

    .line 326
    :goto_12
    return-void

    .line 312
    .end local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :cond_13
    const-string v1, "CalendarEvents"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    goto :goto_7

    .line 325
    :cond_1a
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->initCalendarAgendaView(Ljava/util/ArrayList;)V

    goto :goto_12
.end method

.method public setCalendarAnimation(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    const v0, 0x2040004

    invoke-virtual {p0, p1, v0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->setInAnimation(Landroid/content/Context;I)V

    .line 85
    const v0, 0x2040005

    invoke-virtual {p0, p1, v0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->setOutAnimation(Landroid/content/Context;I)V

    .line 86
    return-void
.end method

.method public setDisplayWidgetType(Ljava/lang/String;)V
    .registers 8
    .parameter "appWidgetId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_9

    .line 228
    :goto_8
    return-void

    .line 197
    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/lge/appwidget/Andy_CalendarLargeView;->getDisplayWidgetType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, displayWidgetType:I
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    .line 201
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->clearAnimation()V

    .line 203
    iget-object v3, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v3, p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setCalendarLargeView(Lcom/lge/appwidget/Andy_CalendarLargeView;)V

    .line 204
    iget-object v3, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarAgendaView:Lcom/lge/appwidget/Andy_CalendarAgendaView;

    invoke-virtual {v3, p0}, Lcom/lge/appwidget/Andy_CalendarAgendaView;->setCalendarLargeView(Lcom/lge/appwidget/Andy_CalendarLargeView;)V

    .line 206
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, currentView:Landroid/view/View;
    instance-of v3, v1, Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    if-eqz v3, :cond_29

    .line 210
    if-nez v2, :cond_2e

    .line 212
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    goto :goto_8

    .line 218
    :cond_29
    if-ne v2, v5, :cond_2e

    .line 220
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    goto :goto_8

    .line 225
    :cond_2e
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarLargeView;->showNext()V

    .line 227
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsChangeDisplay:Z

    goto :goto_8
.end method

.method public setMonthlyEvents(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_13

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :goto_7
    if-nez v0, :cond_e

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    .end local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .restart local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :cond_e
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    if-nez v1, :cond_1a

    .line 147
    :goto_12
    return-void

    .line 133
    .end local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    :cond_13
    const-string v1, "CalendarEvents"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #parcelables:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    goto :goto_7

    .line 146
    :cond_1a
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyEvent(Ljava/util/ArrayList;)V

    goto :goto_12
.end method

.method public setMonthlyJulianDay(I)V
    .registers 3
    .parameter "julianDay"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 120
    return-void
.end method

.method public setMonthlyStartDay(I)V
    .registers 3
    .parameter "startDay"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    if-nez v0, :cond_5

    .line 158
    :goto_4
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyStartDay(I)V

    goto :goto_4
.end method

.method public setOnDisplayWidgetTypeListener(I)V
    .registers 3
    .parameter "appWidgetId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 181
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mAppWidgetId:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mIsSetDisplayChangeListener:Z

    .line 183
    return-void
.end method

.method public setOnMonthlyFlipListener(Landroid/os/Bundle;)V
    .registers 6
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 174
    const-string v1, "CalendarFlipListener"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;

    .line 175
    .local v0, parcelable:Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarLargeView;->mCalendarMonthlyView:Lcom/lge/appwidget/Andy_CalendarMonthlyView;

    iget v2, v0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mAppWidgetId:I

    iget v3, v0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mViewId:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setOnMonthlyFlipListener(II)V

    .line 176
    return-void
.end method
