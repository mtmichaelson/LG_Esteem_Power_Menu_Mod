.class Lcom/android/internal/telephony/ATService$2;
.super Landroid/os/Handler;
.source "ATService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ATService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ATService;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ATService;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/ATService$2;->this$0:Lcom/android/internal/telephony/ATService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const-string v5, "ATService"

    .line 151
    const-string v3, "ATService"

    const-string v3, "mHandler:  handleMessage()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_6e

    .line 182
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 184
    :cond_11
    :goto_11
    return-void

    .line 155
    :pswitch_12
    const-string v3, "ATService"

    const-string v3, "mHandler: EVENT_RESPONSE"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v2, 0x0

    .line 159
    .local v2, resp:Ljava/lang/String;
    :try_start_1a
    iget-object v3, p0, Lcom/android/internal/telephony/ATService$2;->this$0:Lcom/android/internal/telephony/ATService;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ATService;->checkATService()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/ATService$2;->this$0:Lcom/android/internal/telephony/ATService;

    invoke-static {v3}, Lcom/android/internal/telephony/ATService;->access$100(Lcom/android/internal/telephony/ATService;)Lcom/android/internal/telephony/IATService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ATService$2;->this$0:Lcom/android/internal/telephony/ATService;

    invoke-static {v4}, Lcom/android/internal/telephony/ATService;->access$000(Lcom/android/internal/telephony/ATService;)Lcom/android/internal/telephony/ICallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IATService;->unregisterCallback(Lcom/android/internal/telephony/ICallback;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/ATService$2;->this$0:Lcom/android/internal/telephony/ATService;

    invoke-static {v3}, Lcom/android/internal/telephony/ATService;->access$100(Lcom/android/internal/telephony/ATService;)Lcom/android/internal/telephony/IATService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IATService;->read()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3a} :catch_68

    move-result-object v2

    .line 170
    :cond_3b
    :goto_3b
    const-string v3, "ATService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/internal/telephony/ATService$2;->this$0:Lcom/android/internal/telephony/ATService;

    iget-object v3, v3, Lcom/android/internal/telephony/ATService;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 173
    .local v1, m:Landroid/os/Message;
    if-eqz v1, :cond_11

    .line 174
    if-eqz v2, :cond_64

    .line 175
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    :cond_64
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11

    .line 165
    .end local v1       #m:Landroid/os/Message;,
    :catch_68
    move-exception v3

    move-object v0, v3

    .line 167
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b

    .line 152
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method
