.class Lcom/lge/appwidget/Andy_WorldClock$1;
.super Landroid/os/Handler;
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
    .line 59
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WorldClock$1;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 69
    :goto_5
    return-void

    .line 64
    :pswitch_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$1;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_WorldClock;->access$000(Lcom/lge/appwidget/Andy_WorldClock;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$1;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/appwidget/Andy_WorldClock;->access$002(Lcom/lge/appwidget/Andy_WorldClock;Z)Z

    .line 66
    :cond_14
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock$1;->this$0:Lcom/lge/appwidget/Andy_WorldClock;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_WorldClock;->invalidate()V

    goto :goto_5

    .line 62
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
