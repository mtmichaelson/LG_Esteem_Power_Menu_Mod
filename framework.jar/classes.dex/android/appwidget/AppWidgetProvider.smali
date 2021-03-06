.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 115
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 149
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 134
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "appWidgetId"

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 58
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_26

    .line 59
    const-string v4, "appWidgetIds"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 60
    .local v2, appWidgetIds:[I
    if-eqz v2, :cond_26

    array-length v4, v2

    if-lez v4, :cond_26

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 78
    .end local v2       #appWidgetIds:[I,
    .end local v3       #extras:Landroid/os/Bundle;,
    :cond_26
    :goto_26
    return-void

    .line 65
    :cond_27
    const-string v4, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 67
    .restart local v3       #extras:Landroid/os/Bundle;,
    if-eqz v3, :cond_26

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 68
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, appWidgetId:I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-virtual {p0, p1, v4}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_26

    .line 72
    .end local v1       #appWidgetId:I,
    .end local v3       #extras:Landroid/os/Bundle;,
    :cond_4d
    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 73
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_26

    .line 75
    :cond_59
    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 76
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_26
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 99
    return-void
.end method
