.class Lcom/android/internal/policy/impl/Andy_LockScreen2$3;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;->initializeMusicPlayer()V
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
    .line 688
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandlerClick(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)V
    .registers 5
    .parameter "panel"
    .parameter "isShrinking"

    .prologue
    .line 705
    if-nez p2, :cond_2a

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$300(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$400(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/lge/internal/widget/Andy_SlidingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    const v1, 0x202009b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->onBindService()V

    .line 711
    :cond_2a
    return-void
.end method

.method public onPanelClosed(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 4
    .parameter "panel"

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$200(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$300(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    return-void
.end method

.method public onPanelOpened(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 4
    .parameter "panel"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$200(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 698
    return-void
.end method

.method public onPanelTouched(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 3
    .parameter "panel"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 702
    return-void
.end method
