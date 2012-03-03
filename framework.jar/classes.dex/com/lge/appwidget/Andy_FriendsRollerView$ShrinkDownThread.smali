.class Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;
.super Ljava/lang/Thread;
.source "Andy_FriendsRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FriendsRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShrinkDownThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_FriendsRollerView;Lcom/lge/appwidget/Andy_FriendsRollerView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 993
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1200(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 994
    .local v0, h:I
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_23

    move v2, v0

    .line 996
    .local v2, init_height:I
    :goto_f
    move v1, v2

    .local v1, i:I
    :goto_10
    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-lt v1, v3, :cond_27

    .line 998
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const-wide/16 v4, 0x3

    invoke-static {v3, v4, v5}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$000(Lcom/lge/appwidget/Andy_FriendsRollerView;J)V

    .line 1000
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v3, v7, v1, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$500(Lcom/lge/appwidget/Andy_FriendsRollerView;IIZ)V

    .line 996
    add-int/lit8 v1, v1, -0x2

    goto :goto_10

    .line 994
    .end local v1       #i:I,
    .end local v2       #init_height:I,
    :cond_23
    add-int/lit8 v3, v0, 0x1

    move v2, v3

    goto :goto_f

    .line 1003
    .restart local v1       #i:I,
    .restart local v2       #init_height:I,
    :cond_27
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-static {v3, v7, v4, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$500(Lcom/lge/appwidget/Andy_FriendsRollerView;IIZ)V

    .line 1005
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1902(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z

    .line 1006
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$2000(Lcom/lge/appwidget/Andy_FriendsRollerView;)I

    move-result v4

    invoke-static {v3, v6, v4, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$500(Lcom/lge/appwidget/Andy_FriendsRollerView;IIZ)V

    .line 1008
    new-instance v3, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;Lcom/lge/appwidget/Andy_FriendsRollerView$1;)V

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->start()V

    .line 1009
    return-void
.end method
