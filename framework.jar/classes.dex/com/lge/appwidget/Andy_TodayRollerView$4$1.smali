.class Lcom/lge/appwidget/Andy_TodayRollerView$4$1;
.super Ljava/lang/Object;
.source "Andy_TodayRollerView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_TodayRollerView$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_TodayRollerView$4;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView$4;)V
    .registers 2
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4$1;->this$1:Lcom/lge/appwidget/Andy_TodayRollerView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1066
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4$1;->this$1:Lcom/lge/appwidget/Andy_TodayRollerView$4;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, v1, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->scrollTo(II)V

    .line 1067
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView$4$1;->this$1:Lcom/lge/appwidget/Andy_TodayRollerView$4;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_TodayRollerView$4;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1068
    return-void
.end method
