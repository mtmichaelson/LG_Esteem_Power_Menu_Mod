.class Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsDataConnectionNotifier.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsDataConnectionNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;



# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;-><init>(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "  // mIsIpv4ResultReceived = "

    const-string v3, "ImsDataConnectionNotifier"

    .line 185
    monitor-enter p0

    .line 186
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 189
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$100(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    .line 190
    .local v2, state:Lcom/android/internal/telephony/Phone$DataState;
    if-nez v2, :cond_1b

    monitor-exit p0

    .line 308
    .end local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :goto_1a
    return-void

    .line 192
    .restart local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$200(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v0

    .line 194
    .local v0, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_42

    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DATA_CONNECTION_STATE_CHANGED REASON is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_42
    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v0, v3, :cond_128

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v2, v3, :cond_128

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v3

    if-eqz v3, :cond_55

    monitor-exit p0

    goto :goto_1a

    .line 307
    .end local v0       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    .end local v1       #reason:Ljava/lang/String;,
    .end local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :catchall_52
    move-exception v3

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_52

    throw v3

    .line 201
    .restart local v0       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    .restart local v1       #reason:Ljava/lang/String;,
    .restart local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :cond_55
    const/4 v3, 0x1

    :try_start_56
    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$302(Z)Z

    .line 202
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$402(Z)Z

    .line 203
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsIpv4Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  // mIsIpv4ResultReceived = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$400()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_87
    :goto_87
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 225
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$700(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Z)V

    .line 226
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDataConnectionMessageToIms(true): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_b8
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v3

    if-nez v3, :cond_ef

    .line 232
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$700(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Z)V

    .line 233
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDataConnectionMessageToIms(false): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_ef
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$700(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Z)V

    .line 240
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HYUNGIN :: sendDataConnectionMessageToIms(true): IPv4 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "IPv6 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    .end local v1       #reason:Ljava/lang/String;,
    .end local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :cond_125
    :goto_125
    monitor-exit p0

    goto/16 :goto_1a

    .line 204
    .restart local v0       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    .restart local v1       #reason:Ljava/lang/String;,
    .restart local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :cond_128
    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v0, v3, :cond_16d

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v2, v3, :cond_16d

    .line 205
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v3

    if-nez v3, :cond_139

    monitor-exit p0

    goto/16 :goto_1a

    .line 206
    :cond_139
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$302(Z)Z

    .line 207
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$402(Z)Z

    .line 208
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsIpv4Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  // mIsIpv4ResultReceived = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$400()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 209
    :cond_16d
    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v0, v3, :cond_1b2

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v2, v3, :cond_1b2

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v3

    if-eqz v3, :cond_17e

    monitor-exit p0

    goto/16 :goto_1a

    .line 211
    :cond_17e
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$502(Z)Z

    .line 212
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$602(Z)Z

    .line 213
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsIpv6Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  // mIsIpv6ResultReceived = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$600()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 214
    :cond_1b2
    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v0, v3, :cond_87

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v2, v3, :cond_87

    .line 215
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v3

    if-nez v3, :cond_1c3

    monitor-exit p0

    goto/16 :goto_1a

    .line 216
    :cond_1c3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$502(Z)Z

    .line 217
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$602(Z)Z

    .line 218
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsIpv6Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  // mIsIpv6ResultReceived = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$600()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 274
    .end local v0       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    .end local v1       #reason:Ljava/lang/String;,
    .end local v2       #state:Lcom/android/internal/telephony/Phone$DataState;,
    :cond_1f7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_221

    .line 278
    const-string v3, "ImsDataConnectionNotifier"

    const-string v4, "data connection state failed intent received."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$800(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;

    move-result-object v3

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_125

    .line 282
    :cond_221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.IMS_DETACH_REQ_FROM_LTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24b

    .line 283
    const-string v3, "ImsDataConnectionNotifier"

    const-string v4, "about to notify IMS module that LTE want to lose from network..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$800(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;

    move-result-object v3

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_125

    .line 289
    :cond_24b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.IMS_PDNCLOSE_REQ_FROM_LTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 290
    const-string v3, "ImsDataConnectionNotifier"

    const-string v4, "about to notify IMS module that LTE want to lose PDN Connection..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$800(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;

    move-result-object v3

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_125

    .line 297
    :cond_275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.IMS_PDN_IPV6_NOTSUPPORT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 299
    const-string v3, "ImsDataConnectionNotifier"

    const-string v4, "Receving IMS IPv6 Not Support, so we send success if we get ipv4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 302
    iget-object v3, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$700(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Z)V

    .line 303
    const-string v3, "ImsDataConnectionNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDataConnectionMessageToIms(true): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$500()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b9
    .catchall {:try_start_56 .. :try_end_2b9} :catchall_52

    goto/16 :goto_125
.end method
