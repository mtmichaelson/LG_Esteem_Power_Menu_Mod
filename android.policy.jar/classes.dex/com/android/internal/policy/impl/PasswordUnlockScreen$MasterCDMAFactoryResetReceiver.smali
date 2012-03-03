.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$MasterCDMAFactoryResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PasswordUnlockScreen.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterCDMAFactoryResetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;



# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$MasterCDMAFactoryResetReceiver;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$MasterCDMAFactoryResetReceiver;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$MasterCDMAFactoryResetReceiver;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Landroid/content/Intent;)V

    .line 390
    :cond_11
    return-void
.end method
