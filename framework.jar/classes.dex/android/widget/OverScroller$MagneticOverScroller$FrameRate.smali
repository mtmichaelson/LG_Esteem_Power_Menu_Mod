.class Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;
.super Ljava/lang/Object;
.source "OverScroller.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller$MagneticOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameRate"
.end annotation


# instance fields
.field public frameCount:I

.field final synthetic this$0:Landroid/widget/OverScroller$MagneticOverScroller;

.field public timePassed:I



# direct methods
.method public constructor <init>(Landroid/widget/OverScroller$MagneticOverScroller;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 604
    iput-object p1, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->this$0:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    .line 606
    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    .line 607
    return-void
.end method


# virtual methods
.method public getTimeDiff()F
    .registers 3

    .prologue
    .line 615
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 610
    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    .line 611
    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    .line 612
    return-void
.end method
