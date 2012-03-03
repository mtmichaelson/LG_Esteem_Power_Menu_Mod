.class Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;
.super Ljava/lang/Thread;
.source "Andy_TodayRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_TodayRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoLockThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_TodayRollerView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    return-void
.end method

.method private getAutoLockedPos(I)I
    .registers 7
    .parameter "from"

    .prologue
    const/16 v4, 0x29

    .line 985
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-ne v3, v4, :cond_a

    if-ge p1, v4, :cond_a

    .line 988
    const/4 v2, 0x0

    .line 997
    .local v2, to:I
    :goto_9
    return v2

    .line 992
    .end local v2       #to:I,
    :cond_a
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    div-int v1, p1, v3

    .line 993
    .local v1, portion:I
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    rem-int v0, p1, v3

    .line 994
    .local v0, mod:I
    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    mul-int/2addr v3, v1

    if-le v0, v4, :cond_1c

    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    :goto_19
    add-int v2, v3, v4

    .restart local v2       #to:I,
    goto :goto_9

    .end local v2       #to:I,
    :cond_1c
    const/4 v4, 0x0

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 946
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4, v8}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1502(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z

    .line 948
    :cond_7
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1500(Lcom/lge/appwidget/Andy_TodayRollerView;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 951
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1600(Lcom/lge/appwidget/Andy_TodayRollerView;)I

    move-result v2

    .line 958
    .local v2, stored_top:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    sget v5, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_SCROLL_WAIT_INTERVAL:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$000(Lcom/lge/appwidget/Andy_TodayRollerView;J)V

    .line 960
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1600(Lcom/lge/appwidget/Andy_TodayRollerView;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 964
    .local v1, gap:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1700(Lcom/lge/appwidget/Andy_TodayRollerView;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    if-ge v1, v4, :cond_7

    .line 966
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1600(Lcom/lge/appwidget/Andy_TodayRollerView;)I

    move-result v0

    .line 967
    .local v0, from:I
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->getAutoLockedPos(I)I

    move-result v3

    .line 969
    .local v3, to:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const/4 v5, 0x4

    invoke-static {v4, v5, v7, v7}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 973
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    const/4 v5, 0x5

    invoke-static {v4, v5, v3, v8}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V

    .line 975
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-static {v4, v7}, Lcom/lge/appwidget/Andy_TodayRollerView;->access$1502(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z

    .line 979
    .end local v0       #from:I,
    .end local v1       #gap:I,
    .end local v2       #stored_top:I,
    .end local v3       #to:I,
    :cond_4f
    return-void
.end method
