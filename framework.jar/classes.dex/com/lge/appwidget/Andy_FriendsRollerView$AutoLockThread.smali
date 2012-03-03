.class Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;
.super Ljava/lang/Thread;
.source "Andy_FriendsRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FriendsRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoLockThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;



# direct methods
.method private constructor <init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/appwidget/Andy_FriendsRollerView;Lcom/lge/appwidget/Andy_FriendsRollerView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    return-void
.end method

.method private getAutoLockedPos(I)I
    .registers 7
    .parameter "from"

    .prologue
    const/4 v4, 0x0

    .line 954
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    if-ne v2, v3, :cond_d

    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    if-ge p1, v2, :cond_d

    move v2, v4

    .line 963
    :goto_c
    return v2

    .line 960
    :cond_d
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    div-int v1, p1, v2

    .line 961
    .local v1, portion:I
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    rem-int v0, p1, v2

    .line 963
    .local v0, mod:I
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    mul-int/2addr v2, v1

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    if-le v0, v3, :cond_20

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    :goto_1e
    add-int/2addr v2, v3

    goto :goto_c

    :cond_20
    move v3, v4

    goto :goto_1e
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 923
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4, v8}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1502(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z

    .line 925
    :cond_7
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1500(Lcom/lge/appwidget/Andy_FriendsRollerView;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 928
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1600(Lcom/lge/appwidget/Andy_FriendsRollerView;)I

    move-result v2

    .line 935
    .local v2, stored_top:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    sget v5, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_SCROLL_WAIT_INTERVAL:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$000(Lcom/lge/appwidget/Andy_FriendsRollerView;J)V

    .line 937
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1600(Lcom/lge/appwidget/Andy_FriendsRollerView;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 938
    .local v1, gap:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1700(Lcom/lge/appwidget/Andy_FriendsRollerView;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    if-ge v1, v4, :cond_7

    .line 940
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1600(Lcom/lge/appwidget/Andy_FriendsRollerView;)I

    move-result v0

    .line 941
    .local v0, from:I
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->getAutoLockedPos(I)I

    move-result v3

    .line 943
    .local v3, to:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const/4 v5, 0x4

    invoke-static {v4, v5, v7, v7}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$500(Lcom/lge/appwidget/Andy_FriendsRollerView;IIZ)V

    .line 944
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const/4 v5, 0x5

    invoke-static {v4, v5, v3, v8}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$500(Lcom/lge/appwidget/Andy_FriendsRollerView;IIZ)V

    .line 946
    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4, v7}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1502(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z

    .line 950
    .end local v0       #from:I,
    .end local v1       #gap:I,
    .end local v2       #stored_top:I,
    .end local v3       #to:I,
    :cond_4f
    return-void
.end method
