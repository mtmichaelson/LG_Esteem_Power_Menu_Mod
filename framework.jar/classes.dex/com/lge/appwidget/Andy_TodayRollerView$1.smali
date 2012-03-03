.class Lcom/lge/appwidget/Andy_TodayRollerView$1;
.super Ljava/lang/Object;
.source "Andy_TodayRollerView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_TodayRollerView;->scrollToPosFrom(F)Z
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
    .line 610
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$1;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView$1;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$000(Lcom/lge/appwidget/Andy_TodayRollerView;J)V

    .line 614
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView$1;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$102(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z

    .line 615
    return-void
.end method
