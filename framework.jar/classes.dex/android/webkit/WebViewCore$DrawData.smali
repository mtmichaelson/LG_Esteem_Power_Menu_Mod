.class Landroid/webkit/WebViewCore$DrawData;
.super Ljava/lang/Object;
.source "WebViewCore.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawData"
.end annotation


# instance fields
.field mFocusSizeChanged:Z

.field mInvalRegion:Landroid/graphics/Region;

.field mMinPrefWidth:I

.field mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

.field mViewPoint:Landroid/graphics/Point;

.field mWidthHeight:Landroid/graphics/Point;



# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    .line 1769
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    .line 1770
    return-void
.end method
