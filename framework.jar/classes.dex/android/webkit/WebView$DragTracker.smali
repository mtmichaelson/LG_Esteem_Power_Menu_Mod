.class public Landroid/webkit/WebView$DragTracker;
.super Ljava/lang/Object;
.source "WebView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragTracker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapChange(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bm"

    .prologue
    .line 4987
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 4988
    return-void
.end method

.method public onStartDrag(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4981
    return-void
.end method

.method public onStopDrag()V
    .registers 1

    .prologue
    .line 4986
    return-void
.end method

.method public onStretchChange(FF)Z
    .registers 4
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 4984
    const/4 v0, 0x0

    return v0
.end method
