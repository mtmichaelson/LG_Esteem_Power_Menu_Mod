.class Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaCallTracker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "CDMA"

    .line 297
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 300
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 309
    const-string v2, "CDMA"

    const-string v3, "CdmaCallTracker onReceive()...CARD READY ==> SIM OK "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Z)Z
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_43

    .line 349
    .end local v1       #stateExtra:Ljava/lang/String;,
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    .line 312
    .restart local v1       #stateExtra:Ljava/lang/String;,
    :cond_2d
    :try_start_2d
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 314
    const-string v2, "CDMA"

    const-string v3, "CdmaCallTracker onReceive()...CARD ABSENT "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Z)Z
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_43

    goto :goto_2b

    .line 297
    .end local v0       #action:Ljava/lang/String;,
    .end local v1       #stateExtra:Ljava/lang/String;,
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2

    .line 318
    .restart local v0       #action:Ljava/lang/String;,
    .restart local v1       #stateExtra:Ljava/lang/String;,
    :cond_46
    :try_start_46
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "DISPLAY_TEXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 322
    :cond_56
    const-string v2, "CDMA"

    const-string v3, "CdmaCallTracker onReceive()...ICC_CARD_IO_ERROR "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Z)Z

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$102(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Z)Z

    goto :goto_2b

    .line 329
    :cond_6a
    const-string v2, "SIM_TYPE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 331
    const-string v2, "CDMA"

    const-string v3, "CdmaCallTracker onReceive()...CARD SIM TYPE CHECK "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_46 .. :try_end_79} :catchall_43

    .line 334
    :try_start_79
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isMPCS4GSIM()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 336
    const-string v2, "CDMA"

    const-string v3, "CdmaCallTracker onReceive()...Vaild 4G MPCS card "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Z)Z

    goto :goto_2b

    .line 345
    :catch_98
    move-exception v2

    goto :goto_2b

    .line 341
    :cond_9a
    const-string v2, "CDMA"

    const-string v3, "CdmaCallTracker onReceive()...This card is not MPCS 4G SIM block data session"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Z)Z
    :try_end_a7
    .catchall {:try_start_79 .. :try_end_a7} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a7} :catch_98

    goto :goto_2b
.end method
