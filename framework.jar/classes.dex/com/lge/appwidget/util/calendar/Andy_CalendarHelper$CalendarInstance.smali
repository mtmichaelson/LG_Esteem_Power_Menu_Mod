.class public Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper$CalendarInstance;
.super Ljava/lang/Object;
.source "Andy_CalendarHelper.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarInstance"
.end annotation


# static fields
.field public static final ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final BEGIN:Ljava/lang/String; = "begin"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CONTENT_BY_DAY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "begin ASC"

.field public static final END:Ljava/lang/String; = "end"

.field public static final END_DAY:Ljava/lang/String; = "endDay"

.field public static final END_MINUTE:Ljava/lang/String; = "endMinute"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_LOCATION:Ljava/lang/String; = "eventLocation"

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field public static final START_DAY:Ljava/lang/String; = "startDay"

.field public static final START_MINUTE:Ljava/lang/String; = "startMinute"

.field public static final TITLE:Ljava/lang/String; = "title"



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "content://com.android.calendar/instances"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper$CalendarInstance;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://com.android.calendar/instances/whenbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper$CalendarInstance;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarInstanceDayUri(JJ)Landroid/net/Uri;
    .registers 8
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    sget-object v2, Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper$CalendarInstance;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method public static getUnlimitedCalendarInstanceDayUri(J)Landroid/net/Uri;
    .registers 6
    .parameter "begin"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    sget-object v2, Lcom/lge/appwidget/util/calendar/Andy_CalendarHelper$CalendarInstance;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method
