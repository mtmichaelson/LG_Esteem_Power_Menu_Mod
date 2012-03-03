.class Lcom/lge/internal/widget/Andy_DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "Andy_DigitalClock.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/widget/Andy_DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/widget/Andy_DigitalClock;



# direct methods
.method constructor <init>(Lcom/lge/internal/widget/Andy_DigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_DigitalClock$1;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock$1;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_DigitalClock;->access$000(Lcom/lge/internal/widget/Andy_DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 69
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock$1;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/internal/widget/Andy_DigitalClock;->access$102(Lcom/lge/internal/widget/Andy_DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 72
    :cond_1d
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock$1;->this$0:Lcom/lge/internal/widget/Andy_DigitalClock;

    invoke-static {v0}, Lcom/lge/internal/widget/Andy_DigitalClock;->access$300(Lcom/lge/internal/widget/Andy_DigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/internal/widget/Andy_DigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/lge/internal/widget/Andy_DigitalClock$1$1;-><init>(Lcom/lge/internal/widget/Andy_DigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
