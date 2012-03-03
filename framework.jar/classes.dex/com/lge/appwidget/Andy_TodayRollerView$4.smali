.class Lcom/lge/appwidget/Andy_TodayRollerView$4;
.super Landroid/content/BroadcastReceiver;
.source "Andy_TodayRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_TodayRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayRollerView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v6, "android.widget.todayrollerview.action.REFRESH"

    .line 1050
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.widget.todayrollerview.action.REFRESH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1057
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->removeAllViews()V

    .line 1058
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v3, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->updateRollerLayout(Landroid/content/Context;)V

    .line 1060
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v5, v5}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$800(Lcom/lge/appwidget/Andy_TodayRollerView;Landroid/content/Context;III)V

    .line 1062
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$2100(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/lge/appwidget/Andy_TodayRollerView$4$1;

    invoke-direct {v4, p0}, Lcom/lge/appwidget/Andy_TodayRollerView$4$1;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView$4;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1079
    :cond_2d
    :goto_2d
    return-void

    .line 1071
    :cond_2e
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1073
    invoke-static {p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->isOrientationLandscape(Landroid/content/Context;)Z

    move-result v1

    .line 1074
    .local v1, isLandscape:Z
    if-eqz v1, :cond_58

    const/16 v3, 0x29

    move v2, v3

    .line 1075
    .local v2, length:I
    :goto_3f
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v3, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->setDummyLength(I)V

    .line 1076
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$700(Lcom/lge/appwidget/Andy_TodayRollerView;)Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onRollerOrientationChanged(I)V

    .line 1077
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.widget.todayrollerview.action.REFRESH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2d

    .line 1074
    .end local v2       #length:I,
    :cond_58
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    add-int/lit8 v3, v3, 0x32

    move v2, v3

    goto :goto_3f
.end method
