.class Lcom/android/internal/policy/impl/SimUnlockScreen$3;
.super Landroid/content/BroadcastReceiver;
.source "SimUnlockScreen.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 761
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, action:Ljava/lang/String;
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimUnlockScreen received Card IO error Intent :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 765
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 767
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1602(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 770
    :cond_39
    monitor-exit p0

    return-void

    .line 761
    .end local v0       #action:Ljava/lang/String;,
    .end local v1       #stateExtra:Ljava/lang/String;,
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2
.end method
