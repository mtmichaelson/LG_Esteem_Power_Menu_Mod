.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$000()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 138
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$000()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 139
    :cond_e
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$002(Ljava/util/Timer;)Ljava/util/Timer;

    .line 140
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 141
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 143
    :cond_22
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_68

    .line 144
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 148
    :goto_2d
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 150
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$202(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/HTML5VideoViewProxy;

    .line 151
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 152
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 153
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 154
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 155
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$402(Landroid/view/View;)Landroid/view/View;

    .line 157
    :cond_64
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$302(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 158
    return-void

    .line 146
    :cond_68
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_2d
.end method

.method public onCustomViewResume()V
    .registers 2

    .prologue
    .line 165
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->resume(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 166
    return-void
.end method

.method public onCustomViewSuspend()V
    .registers 2

    .prologue
    .line 161
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 162
    return-void
.end method
