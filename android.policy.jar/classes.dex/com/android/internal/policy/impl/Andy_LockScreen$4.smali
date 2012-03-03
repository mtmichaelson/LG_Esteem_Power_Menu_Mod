.class Lcom/android/internal/policy/impl/Andy_LockScreen$4;
.super Ljava/lang/Object;
.source "Andy_LockScreen.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen;->initializeMusicPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$600(Lcom/android/internal/policy/impl/Andy_LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x2020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$602(Lcom/android/internal/policy/impl/Andy_LockScreen;Z)Z

    .line 447
    :goto_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$800(Lcom/android/internal/policy/impl/Andy_LockScreen;I)V

    .line 448
    return-void

    .line 443
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x2020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$602(Lcom/android/internal/policy/impl/Andy_LockScreen;Z)Z

    goto :goto_23
.end method
