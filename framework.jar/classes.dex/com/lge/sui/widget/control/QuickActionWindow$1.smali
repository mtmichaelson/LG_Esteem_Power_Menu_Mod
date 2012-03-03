.class Lcom/lge/sui/widget/control/QuickActionWindow$1;
.super Ljava/lang/Object;
.source "QuickActionWindow.java"


# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/control/QuickActionWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/control/QuickActionWindow;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/QuickActionWindow;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/sui/widget/control/QuickActionWindow$1;->this$0:Lcom/lge/sui/widget/control/QuickActionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5
    .parameter "t"

    .prologue
    .line 125
    const v1, 0x3fc66666

    mul-float/2addr v1, p1

    const v2, 0x3f8ccccd

    sub-float v0, v1, v2

    .line 126
    .local v0, inner:F
    const v1, 0x3f99999a

    mul-float v2, v0, v0

    sub-float/2addr v1, v2

    return v1
.end method
