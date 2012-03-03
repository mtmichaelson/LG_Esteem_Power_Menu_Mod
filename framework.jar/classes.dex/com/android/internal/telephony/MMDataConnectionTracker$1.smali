.class Lcom/android/internal/telephony/MMDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MMDataConnectionTracker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent received :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 405
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 406
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-static {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$200(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataNetStatistics;->notifyScreenState(Z)V

    .line 407
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 408
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_58

    .line 602
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 410
    :cond_3b
    :try_start_3b
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 411
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-static {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$200(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataNetStatistics;->notifyScreenState(Z)V

    .line 412
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 413
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_58

    goto :goto_39

    .line 403
    .end local v0       #action:Ljava/lang/String;,
    :catchall_58
    move-exception v8

    monitor-exit p0

    throw v8

    .line 415
    .restart local v0       #action:Ljava/lang/String;,
    :cond_5b
    :try_start_5b
    const-string v8, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 416
    const-string/jumbo v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, reason:Ljava/lang/String;
    const-string v8, "ds"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/DataServiceType;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 418
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    const-string v8, "ipv"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/Phone$IPVersion;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v3

    .line 420
    .local v3, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v8, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_93

    .line 421
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 422
    :cond_93
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_39

    .line 423
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .end local v3       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    .end local v5       #reason:Ljava/lang/String;,
    :cond_99
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 424
    const-string/jumbo v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 426
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    if-eqz v4, :cond_b9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_b9

    const/4 v9, 0x1

    :goto_b5
    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$302(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto :goto_39

    :cond_b9
    const/4 v9, 0x0

    goto :goto_b5

    .line 428
    .end local v4       #networkInfo:Landroid/net/NetworkInfo;,
    :cond_bb
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 429
    const-string/jumbo v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_fa

    const/4 v8, 0x1

    move v2, v8

    .line 431
    .local v2, enabled:Z
    :goto_d0
    if-nez v2, :cond_d8

    .line 434
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$302(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    .line 438
    :cond_d8
    const-string/jumbo v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 439
    .local v7, wifi_state:I
    const/4 v8, 0x3

    if-ne v8, v7, :cond_ec

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->notifyWiFiConnectionState(Landroid/os/Message;I)V

    .line 440
    :cond_ec
    const/4 v8, 0x1

    if-ne v8, v7, :cond_39

    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->notifyWiFiConnectionState(Landroid/os/Message;I)V

    goto/16 :goto_39

    .line 429
    .end local v2       #enabled:Z,
    .end local v7       #wifi_state:I,
    :cond_fa
    const/4 v8, 0x0

    move v2, v8

    goto :goto_d0

    .line 442
    :cond_fd
    const-string v8, "android.intent.action.VOICE_CALL_STARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 443
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_39

    .line 445
    :cond_113
    const-string v8, "android.intent.action.VOICE_CALL_ENDED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_129

    .line 446
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_39

    .line 452
    :cond_129
    const-string v8, "com.lge.lte.factoryConn"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_140

    .line 453
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/16 v10, 0x36

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_39

    .line 455
    :cond_140
    const-string v8, "com.lge.lte.factoryDisconn"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 456
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/16 v10, 0x37

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_39

    .line 478
    :cond_157
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1dc

    .line 480
    const-string/jumbo v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, stateExtra:Ljava/lang/String;
    const-string v8, "READY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_176

    .line 539
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_39

    .line 541
    :cond_176
    const-string v8, "ABSENT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_186

    .line 544
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_39

    .line 546
    :cond_186
    const-string v8, "CARD_IO_ERROR"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19b

    .line 549
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disableDataConnectivity()Z

    .line 550
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_39

    .line 553
    :cond_19b
    const-string v8, "DISPLAY_TEXT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b0

    .line 555
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disableDataConnectivity()Z

    .line 556
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_39

    .line 559
    :cond_1b0
    const-string v8, "SIM_TYPE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b5
    .catchall {:try_start_5b .. :try_end_1b5} :catchall_58

    move-result v8

    if-eqz v8, :cond_39

    .line 564
    :try_start_1b8
    const-string/jumbo v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isMPCS4GSIM()Z

    move-result v8

    if-eqz v8, :cond_1d4

    .line 567
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_39

    .line 575
    :catch_1d1
    move-exception v8

    goto/16 :goto_39

    .line 572
    :cond_1d4
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$402(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    :try_end_1da
    .catchall {:try_start_1b8 .. :try_end_1da} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1da} :catch_1d1

    goto/16 :goto_39

    .line 584
    .end local v6       #stateExtra:Ljava/lang/String;,
    :cond_1dc
    :try_start_1dc
    const-string v8, "action.ims.t3402.timer.expired"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20f

    .line 585
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const-string v9, "!!!!!!!EVENT_T3402_TIMER_EXPIRED!!!!!!!!!"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$500()Z

    move-result v8

    if-nez v8, :cond_39

    .line 587
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$602(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    .line 588
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 589
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 590
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->releaseLTEBlock(Landroid/os/Message;)V

    goto/16 :goto_39

    .line 592
    :cond_20f
    const-string v8, "action.ims.cdma.timer.expired"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 593
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const-string v9, "!!!!!!!EVENT_CDMA_TIMER_EXPIRED!!!!!!!!!"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 594
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$702(Z)Z

    .line 595
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v9, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataProfileTracker;->resetProfilesAsWorking(Lcom/android/internal/telephony/DataServiceType;)V

    .line 596
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v9, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V

    .line 597
    iget-object v8, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const-string v9, "cdmaTimerExpired"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V
    :try_end_23b
    .catchall {:try_start_1dc .. :try_end_23b} :catchall_58

    goto/16 :goto_39
.end method
