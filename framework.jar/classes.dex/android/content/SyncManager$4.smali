.class Landroid/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;



# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "SyncManager"

    .line 245
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 247
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_6d

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v1, v3

    .line 249
    .local v1, state:Landroid/net/NetworkInfo$State;
    :goto_13
    const-string v3, "SyncManager"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 250
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received connectivity action.  network info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_34
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v2

    .line 262
    .local v2, wasConnected:Z
    sget-object v3, Landroid/content/SyncManager$8;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8e

    .line 276
    :goto_45
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 277
    if-nez v2, :cond_67

    .line 278
    const-string v3, "SyncManager"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 279
    const-string v3, "SyncManager"

    const-string v3, "Reconnection detected: clearing all backoffs"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_5e
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->clearAllBackoffs()V

    .line 283
    :cond_67
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)V

    .line 285
    :cond_6c
    return-void

    .line 247
    .end local v1       #state:Landroid/net/NetworkInfo$State;,
    .end local v2       #wasConnected:Z,
    :cond_6d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    move-object v1, v3

    goto :goto_13

    .line 264
    .restart local v1       #state:Landroid/net/NetworkInfo$State;,
    .restart local v2       #wasConnected:Z,
    :pswitch_73
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3, v7}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_45

    .line 267
    :pswitch_79
    const-string/jumbo v3, "noConnectivity"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 268
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3, v6}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_45

    .line 270
    :cond_88
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v3, v7}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_45

    .line 262
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_73
        :pswitch_79
    .end packed-switch
.end method
