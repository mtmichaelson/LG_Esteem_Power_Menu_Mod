.class Lcom/lge/appwidget/Andy_FriendsRollerView$4$1;
.super Ljava/lang/Object;
.source "Andy_FriendsRollerView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_FriendsRollerView$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_FriendsRollerView$4;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_FriendsRollerView$4;)V
    .registers 2
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4$1;->this$1:Lcom/lge/appwidget/Andy_FriendsRollerView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1031
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4$1;->this$1:Lcom/lge/appwidget/Andy_FriendsRollerView$4;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v1, v2, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->scrollTo(II)V

    .line 1033
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$4$1;->this$1:Lcom/lge/appwidget/Andy_FriendsRollerView$4;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_FriendsRollerView$4;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1034
    .local v0, item:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 1036
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1038
    :cond_15
    return-void
.end method
