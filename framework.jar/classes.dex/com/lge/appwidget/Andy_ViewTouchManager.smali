.class public Lcom/lge/appwidget/Andy_ViewTouchManager;
.super Landroid/widget/RelativeLayout;
.source "Andy_ViewTouchManager.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final CALENDAR_APP_WIDGET_KEY:I = 0x0

.field public static final CALENDAR_VIEW_TOUCH_ACTION:Ljava/lang/String; = "android.viewtouchmanager.action.CALENDAR_VIEW_TOUCH"

.field public static final EMAIL_APP_WIDGET_KEY:I = 0x2

.field public static final MESSAGE_APP_WIDGET_KEY:I = 0x1

.field public static final MESSAGE_VIEW_TOUCH_ACTION:Ljava/lang/String; = "android.viewtouchmanager.action.MESSAGE_VIEW_TOUCH"

.field public static final REMOTE_VIEW_TOUCH_PARCELABLE_KEY:Ljava/lang/String; = "ViewTouchParcelable"

.field public static final VIEW_TOUCH_ACTION:Ljava/lang/String; = "android.viewtouchmanager.action.VIEW_TOUCH"

.field public static final VIEW_TOUCH_DATA_URI:Ljava/lang/String; = "://view_touch_data/"

.field public static final VIEW_TOUCH_URI_SCHEME:Ljava/lang/String; = "view_touch"



# instance fields
.field private isSetViewTouchListener:Z

.field private mAppWidgetKey:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->isSetViewTouchListener:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->isSetViewTouchListener:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->isSetViewTouchListener:Z

    .line 46
    return-void
.end method

.method private broadcastViewTouch()V
    .registers 6

    .prologue
    .line 79
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v2, intent:Landroid/content/Intent;
    iget v3, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->mAppWidgetKey:I

    if-nez v3, :cond_29

    .line 83
    const-string v3, "android.viewtouchmanager.action.CALENDAR_VIEW_TOUCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :goto_e
    const-string/jumbo v3, "view_touch://view_touch_data/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v4, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->mAppWidgetKey:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_ViewTouchManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_3a

    .line 108
    :goto_28
    return-void

    .line 85
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #dataUri:Landroid/net/Uri;,
    :cond_29
    iget v3, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->mAppWidgetKey:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 87
    const-string v3, "android.viewtouchmanager.action.MESSAGE_VIEW_TOUCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    .line 91
    :cond_34
    const-string v3, "android.viewtouchmanager.action.VIEW_TOUCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    .line 107
    .restart local v0       #context:Landroid/content/Context;,
    .restart local v1       #dataUri:Landroid/net/Uri;,
    :cond_3a
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_28
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->isSetViewTouchListener:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 71
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_ViewTouchManager;->broadcastViewTouch()V

    .line 74
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setViewTouchListener(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 51
    if-nez p1, :cond_3

    .line 63
    :goto_2
    return-void

    .line 57
    :cond_3
    const-string v1, "ViewTouchParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_ViewTouchParcelable;

    .line 59
    .local v0, parcelable:Lcom/lge/appwidget/Andy_ViewTouchParcelable;
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_ViewTouchParcelable;->getAppWidgetKey()I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->mAppWidgetKey:I

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_ViewTouchManager;->isSetViewTouchListener:Z

    goto :goto_2
.end method
