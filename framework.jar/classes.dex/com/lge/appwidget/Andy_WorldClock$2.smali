.class Lcom/lge/appwidget/Andy_WorldClock$2;
.super Landroid/content/BroadcastReceiver;
.source "Andy_WorldClock.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_WorldClock;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_WorldClock;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 519
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 520
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/appwidget/Andy_WorldClock;->access$102(Lcom/lge/appwidget/Andy_WorldClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 521
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_WorldClock;->access$100(Lcom/lge/appwidget/Andy_WorldClock;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_WorldClock;->access$200(Lcom/lge/appwidget/Andy_WorldClock;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 522
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_WorldClock;->access$100(Lcom/lge/appwidget/Andy_WorldClock;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_WorldClock;->access$300(Lcom/lge/appwidget/Andy_WorldClock;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 524
    :cond_3d
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_WorldClock;->access$400(Lcom/lge/appwidget/Andy_WorldClock;)V

    .line 525
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$2;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_WorldClock;->invalidate()V

    .line 528
    return-void
.end method
