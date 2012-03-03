.class Landroid/webkit/WebView$8;
.super Ljava/lang/Object;
.source "WebView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->getZoomControls()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;



# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 6181
    iput-object p1, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 6187
    iget-object v0, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6188
    iget-object v0, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 6194
    :goto_15
    return-void

    .line 6190
    :cond_16
    iget-object v0, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6191
    iget-object v0, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView$8;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/webkit/WebView;->access$3600()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15
.end method
