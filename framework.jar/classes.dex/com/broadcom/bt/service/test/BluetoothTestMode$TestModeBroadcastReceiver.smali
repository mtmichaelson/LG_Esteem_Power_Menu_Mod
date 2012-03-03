.class Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestMode.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/BluetoothTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;Lcom/broadcom/bt/service/test/BluetoothTestMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const-string v8, "STATUS"

    const-string v6, "MODE"

    .line 576
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->abortBroadcast()V

    .line 578
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 581
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 582
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 583
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 584
    .local v3, instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 586
    .local v1, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "CMD"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "LENGTH"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "PAYLOAD"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onBtldApiCmdInd(II[B)V

    goto :goto_24

    .line 590
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_5b
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 592
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 593
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 594
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 595
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 597
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterDUTMode(I)V

    goto :goto_73

    .line 600
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_9d
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 602
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 603
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_b5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 604
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 605
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 607
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterTestMode(I)V

    goto :goto_b5

    .line 610
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_df
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 612
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 613
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_f7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 614
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 615
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 617
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitDUTMode(I)V

    goto :goto_f7

    .line 620
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_121
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_163

    .line 622
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 623
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_139
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 624
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 625
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 627
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitTestMode(I)V

    goto :goto_139

    .line 629
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_163
    const-string v4, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 631
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 632
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_17b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 633
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 634
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 636
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onGetTestMode(I)V

    goto :goto_17b

    .line 638
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_1a5
    const-string v4, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 640
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 641
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1bd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 643
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 645
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V

    goto :goto_1bd

    .line 647
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_1e7
    const-string v4, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 649
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 650
    .restart local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 651
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 652
    .restart local v3       #instance:I,
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 654
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onTx_Rx_Test(II)V

    goto :goto_1ff

    .line 658
    .end local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;,
    .end local v2       #i:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3       #instance:I,
    :cond_22f
    return-void
.end method
