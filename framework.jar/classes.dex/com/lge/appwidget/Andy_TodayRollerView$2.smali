.class Lcom/lge/appwidget/Andy_TodayRollerView$2;
.super Ljava/lang/Object;
.source "Andy_TodayRollerView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_TodayRollerView;->updateItemPosChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

.field final synthetic val$pos:I



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$2;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    iput p2, p0, Lcom/lge/appwidget/Andy_TodayRollerView$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 840
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView$2;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$000(Lcom/lge/appwidget/Andy_TodayRollerView;J)V

    .line 842
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView$2;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    iget v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$2;->val$pos:I

    invoke-static {v0, v3, v1, v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 843
    return-void
.end method
