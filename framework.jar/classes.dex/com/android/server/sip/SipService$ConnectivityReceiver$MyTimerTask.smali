.class Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
.super Ljava/util/TimerTask;
.source "SipService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService$ConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field private mConnected:Z

.field private mNetworkType:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;



# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter "type"
    .parameter "connected"

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1097
    iput-object p2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    .line 1098
    iput-boolean p3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    .line 1099
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->realRun()V

    return-void
.end method

.method private realRun()V
    .registers 5

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1114
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-static {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$1900(Lcom/android/server/sip/SipService$ConnectivityReceiver;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    move-result-object v1

    if-eq v1, p0, :cond_41

    .line 1115
    const-string v1, "SipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  unexpected task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    if-eqz v3, :cond_3e

    const-string v3, " CONNECTED"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v1, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1118
    monitor-exit v0

    .line 1126
    :goto_3d
    return-void

    .line 1115
    :cond_3e
    const-string v3, "DISCONNECTED"

    goto :goto_26

    .line 1120
    :cond_41
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$1902(Lcom/android/server/sip/SipService$ConnectivityReceiver;Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    .line 1123
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v1, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/sip/SipService;->access$1700(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V

    .line 1124
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v1, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1125
    monitor-exit v0

    goto :goto_3d

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_5f

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1110
    return-void
.end method
