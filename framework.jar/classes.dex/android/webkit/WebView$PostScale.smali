.class Landroid/webkit/WebView$PostScale;
.super Ljava/lang/Object;
.source "WebView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostScale"
.end annotation


# instance fields
.field final mUpdateTextWrap:Z

.field final mWebView:Landroid/webkit/WebView;



# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .registers 3
    .parameter "webView"
    .parameter "updateTextWrap"

    .prologue
    .line 4682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4683
    iput-object p1, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    .line 4684
    iput-boolean p2, p0, Landroid/webkit/WebView$PostScale;->mUpdateTextWrap:Z

    .line 4685
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4688
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 4691
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v1

    iget-boolean v2, p0, Landroid/webkit/WebView$PostScale;->mUpdateTextWrap:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    .line 4694
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4695
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 4698
    :cond_27
    return-void
.end method
