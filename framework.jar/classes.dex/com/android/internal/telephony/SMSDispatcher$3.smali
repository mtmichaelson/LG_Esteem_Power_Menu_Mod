.class Lcom/android/internal/telephony/SMSDispatcher$3;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1684
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "SMS"

    .line 1688
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, action:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent received :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1693
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1702
    const-string v2, "SMS"

    const-string v3, "SimFullReceiver onReceive()...CARD READY ==> SIM OK "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_5f

    .line 1749
    .end local v1       #stateExtra:Ljava/lang/String;,
    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    .line 1705
    .restart local v1       #stateExtra:Ljava/lang/String;,
    :cond_43
    :try_start_43
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1707
    const-string v2, "SMS"

    const-string v3, "SimFullReceiver onReceive()...CARD ABSENT "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->SMSCheckNetworkLock_Selection()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1709
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_5f

    goto :goto_41

    .line 1688
    .end local v0       #action:Ljava/lang/String;,
    .end local v1       #stateExtra:Ljava/lang/String;,
    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1711
    .restart local v0       #action:Ljava/lang/String;,
    .restart local v1       #stateExtra:Ljava/lang/String;,
    :cond_62
    const/4 v2, 0x0

    :try_start_63
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    goto :goto_41

    .line 1714
    :cond_67
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v2, "DISPLAY_TEXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1718
    :cond_77
    const-string v2, "SMS"

    const-string v3, "SimFullReceiver onReceive()...ICC_CARD_IO_ERROR "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->SMSCheckNetworkLock_Selection()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1721
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    goto :goto_41

    .line 1723
    :cond_8b
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    goto :goto_41

    .line 1725
    :cond_90
    const-string v2, "SIM_TYPE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1727
    const-string v2, "SMS"

    const-string v3, "SimFullReceiver onReceive()...CARD SIM TYPE CEHCK "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_63 .. :try_end_9f} :catchall_5f

    .line 1730
    :try_start_9f
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isMPCS4GSIM()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1732
    const-string v2, "SMS"

    const-string v3, "SimFullReceiver onReceive()...Vaild 4G MPCS card "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    goto :goto_41

    .line 1744
    :catch_bc
    move-exception v2

    goto :goto_41

    .line 1737
    :cond_be
    const-string v2, "SMS"

    const-string v3, "SimFullReceiver onReceive()...This card is not MPCS 4G SIM block data session"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->SMSCheckNetworkLock_Selection()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 1739
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    goto/16 :goto_41

    .line 1741
    :cond_d3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z
    :try_end_d7
    .catchall {:try_start_9f .. :try_end_d7} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d7} :catch_bc

    goto/16 :goto_41
.end method
