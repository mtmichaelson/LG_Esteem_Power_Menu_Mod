.class Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;
.super Ljava/lang/Thread;
.source "Andy_TodayRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_TodayRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShrinkUpThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayRollerView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1005
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1000(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1006
    .local v0, h:I
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_26

    add-int/lit8 v3, v0, 0x1

    move v2, v3

    .line 1008
    .local v2, init_height:I
    :goto_12
    move v1, v2

    .local v1, i:I
    :goto_13
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-le v1, v3, :cond_28

    .line 1010
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const-wide/16 v4, 0x3

    invoke-static {v3, v4, v5}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$000(Lcom/lge/appwidget/Andy_TodayRollerView;J)V

    .line 1012
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3, v8, v1, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 1008
    add-int/lit8 v1, v1, -0x2

    goto :goto_13

    .end local v1       #i:I,
    .end local v2       #init_height:I,
    :cond_26
    move v2, v0

    .line 1006
    goto :goto_12

    .line 1015
    .restart local v1       #i:I,
    .restart local v2       #init_height:I,
    :cond_28
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-static {v3, v8, v4, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 1017
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3, v7}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1802(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z

    .line 1018
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3, v6, v7, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 1019
    return-void
.end method
