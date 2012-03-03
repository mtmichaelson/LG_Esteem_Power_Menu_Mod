.class Lcom/android/internal/policy/impl/SimUnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "SimUnlockScreen.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->SimUnlockScreen_CardError_Detection_TimerStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 786
    const-string v0, "SimUnlockScreen"

    const-string v1, "SimUnlockScreen_CardError_Detection_Timer expired so error pop up will come"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$202(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x20801fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1802(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1900(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    .line 791
    :cond_3b
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 780
    return-void
.end method
