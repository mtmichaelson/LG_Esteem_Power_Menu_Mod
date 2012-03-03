.class Lcom/android/internal/policy/impl/Andy_LockScreen$2;
.super Ljava/lang/Object;
.source "Andy_LockScreen.java"


# interfaces
.implements Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;


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
    .line 378
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandlerClick(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)V
    .registers 5
    .parameter "panel"
    .parameter "isShrinking"

    .prologue
    .line 394
    if-nez p2, :cond_2a

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$200(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$300(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/lge/internal/widget/Andy_SlidingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    const v1, 0x202009b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$400(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->onBindService()V

    .line 403
    :cond_2a
    return-void
.end method

.method public onPanelClosed(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 4
    .parameter "panel"

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$100(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$200(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    return-void
.end method

.method public onPanelOpened(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 4
    .parameter "panel"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$100(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 388
    return-void
.end method

.method public onPanelTouched(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 3
    .parameter "panel"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 391
    return-void
.end method
