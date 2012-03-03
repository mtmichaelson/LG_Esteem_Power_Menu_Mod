.class Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;
.super Ljava/lang/Thread;
.source "Andy_TodayRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_TodayRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShrinkDownThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayRollerView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1026
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1200(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1027
    .local v0, h:I
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_23

    move v2, v0

    .line 1029
    .local v2, init_height:I
    :goto_f
    move v1, v2

    .local v1, i:I
    :goto_10
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-lt v1, v3, :cond_27

    .line 1031
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const-wide/16 v4, 0x3

    invoke-static {v3, v4, v5}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$000(Lcom/lge/appwidget/Andy_TodayRollerView;J)V

    .line 1033
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v3, v7, v1, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 1029
    add-int/lit8 v1, v1, -0x2

    goto :goto_10

    .line 1027
    .end local v1       #i:I,
    .end local v2       #init_height:I,
    :cond_23
    add-int/lit8 v3, v0, 0x1

    move v2, v3

    goto :goto_f

    .line 1036
    .restart local v1       #i:I,
    .restart local v2       #init_height:I,
    :cond_27
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-static {v3, v7, v4, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 1038
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1902(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z

    .line 1039
    iget-object v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$2000(Lcom/lge/appwidget/Andy_TodayRollerView;)I

    move-result v4

    invoke-static {v3, v6, v4, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 1041
    new-instance v3, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->start()V

    .line 1042
    return-void
.end method
