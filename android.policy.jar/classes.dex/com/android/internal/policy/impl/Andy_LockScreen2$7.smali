.class Lcom/android/internal/policy/impl/Andy_LockScreen2$7;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;->lockMovingAction(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V
    .registers 2
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$7;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$7;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1038
    return-void
.end method
