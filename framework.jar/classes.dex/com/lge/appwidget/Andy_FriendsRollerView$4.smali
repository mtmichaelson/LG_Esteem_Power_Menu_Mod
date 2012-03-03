.class Lcom/lge/appwidget/Andy_FriendsRollerView$4;
.super Landroid/content/BroadcastReceiver;
.source "Andy_FriendsRollerView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FriendsRollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1017
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.lge.appwidget.Andy_FriendsRollerView.action.REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1021
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$2100(Lcom/lge/appwidget/Andy_FriendsRollerView;)Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->refreshFriendsList(Landroid/content/Context;)V

    .line 1023
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->removeAllViews()V

    .line 1024
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v1, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->updateRollerLayout(Landroid/content/Context;)V

    .line 1027
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$2200(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lge/appwidget/Andy_FriendsRollerView$4$1;

    invoke-direct {v2, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView$4$1;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1041
    :cond_2d
    return-void
.end method
