.class Lcom/lge/appwidget/Andy_AnalogClockClass$2;
.super Landroid/content/BroadcastReceiver;
.source "Andy_AnalogClockClass.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_AnalogClockClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V
    .registers 2
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "AnalogClockFramework"

    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 526
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$100(Lcom/lge/appwidget/Andy_AnalogClockClass;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 530
    .end local v0       #tz:Ljava/lang/String;,
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 531
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$002(Lcom/lge/appwidget/Andy_AnalogClockClass;Z)Z

    .line 532
    const-string v1, "AnalogClockFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SCREEN_OFF : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$000(Lcom/lge/appwidget/Andy_AnalogClockClass;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 535
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$002(Lcom/lge/appwidget/Andy_AnalogClockClass;Z)Z

    .line 536
    const-string v1, "AnalogClockFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SCREEN_ON : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$000(Lcom/lge/appwidget/Andy_AnalogClockClass;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_86
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$200(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    .line 539
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->invalidate()V

    .line 541
    return-void
.end method
