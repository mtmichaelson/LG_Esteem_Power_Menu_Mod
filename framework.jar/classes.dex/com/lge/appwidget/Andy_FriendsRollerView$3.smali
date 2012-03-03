.class Lcom/lge/appwidget/Andy_FriendsRollerView$3;
.super Landroid/os/Handler;
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
    .line 865
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 869
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_aa

    .line 912
    :cond_6
    :goto_6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 913
    return-void

    .line 872
    :pswitch_a
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$600(Lcom/lge/appwidget/Andy_FriendsRollerView;I)I

    move-result v0

    .line 873
    .local v0, pos:I
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v2, v5, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->smoothScrollTo(II)V

    .line 874
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v2, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->updateItemPosChanged(I)V

    goto :goto_6

    .line 878
    .end local v0       #pos:I,
    :pswitch_1d
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v5, v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->scrollTo(II)V

    goto :goto_6

    .line 884
    :pswitch_25
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    div-int v1, v2, v3

    .line 885
    .local v1, pos_item:I
    if-ltz v1, :cond_6

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 887
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$700(Lcom/lge/appwidget/Andy_FriendsRollerView;)Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onRollerStopped(II)V

    .line 888
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v5, v4, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$800(Lcom/lge/appwidget/Andy_FriendsRollerView;Landroid/content/Context;III)V

    goto :goto_6

    .line 893
    .end local v1       #pos_item:I,
    :pswitch_52
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$900(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/ImageView;

    move-result-object v2

    monitor-enter v2

    .line 894
    :try_start_59
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1000(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 895
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$900(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1000(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    monitor-exit v2

    goto :goto_6

    :catchall_74
    move-exception v3

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_74

    throw v3

    .line 900
    :pswitch_77
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1100(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/ImageView;

    move-result-object v2

    monitor-enter v2

    .line 901
    :try_start_7e
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1200(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 902
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1100(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1200(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    monitor-exit v2

    goto/16 :goto_6

    :catchall_9a
    move-exception v3

    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_7e .. :try_end_9c} :catchall_9a

    throw v3

    .line 907
    :pswitch_9d
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v2, v5}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1300(Lcom/lge/appwidget/Andy_FriendsRollerView;I)V

    .line 908
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;->this$0:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-static {v2, v5}, Lcom/lge/appwidget/Andy_FriendsRollerView;->access$1400(Lcom/lge/appwidget/Andy_FriendsRollerView;I)V

    goto/16 :goto_6

    .line 869
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_52
        :pswitch_77
        :pswitch_9d
        :pswitch_a
    .end packed-switch
.end method
