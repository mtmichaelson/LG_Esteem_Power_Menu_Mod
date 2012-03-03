.class Lcom/lge/appwidget/Andy_AnalogClockClass$1;
.super Landroid/os/Handler;
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
    .line 71
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$1;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 82
    :goto_5
    return-void

    .line 77
    :pswitch_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$1;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$000(Lcom/lge/appwidget/Andy_AnalogClockClass;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 78
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$1;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->access$002(Lcom/lge/appwidget/Andy_AnalogClockClass;Z)Z

    .line 79
    :cond_14
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass$1;->this$0:Lcom/lge/appwidget/Andy_AnalogClockClass;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->invalidate()V

    goto :goto_5

    .line 75
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
