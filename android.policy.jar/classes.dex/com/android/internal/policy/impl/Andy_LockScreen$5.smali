.class Lcom/android/internal/policy/impl/Andy_LockScreen$5;
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
    .line 456
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$5;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$5;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$5;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x2020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$5;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$602(Lcom/android/internal/policy/impl/Andy_LockScreen;Z)Z

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$5;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$702(Lcom/android/internal/policy/impl/Andy_LockScreen;Z)Z

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$5;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    const/16 v1, 0x57

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$800(Lcom/android/internal/policy/impl/Andy_LockScreen;I)V

    .line 468
    return-void
.end method
