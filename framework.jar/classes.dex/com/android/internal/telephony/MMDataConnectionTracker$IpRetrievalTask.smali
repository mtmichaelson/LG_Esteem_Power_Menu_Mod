.class Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;
.super Ljava/util/TimerTask;
.source "MMDataConnectionTracker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpRetrievalTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const-string v1, "PPP Resync! IP address retrieval processing is ongoing..."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const-string/jumbo v1, "net.ims.bond0_addr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$002(Lcom/android/internal/telephony/MMDataConnectionTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "net.ims.bond0_addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "at retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$100(Lcom/android/internal/telephony/MMDataConnectionTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$108(Lcom/android/internal/telephony/MMDataConnectionTracker;)I

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$IpRetrievalTask;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method
