.class Landroid/widget/Scroller$FrameRate;
.super Ljava/lang/Object;
.source "Scroller.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameRate"
.end annotation


# instance fields
.field public frameCount:I

.field final synthetic this$0:Landroid/widget/Scroller;

.field public timePassed:I



# direct methods
.method public constructor <init>(Landroid/widget/Scroller;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 212
    iput-object p1, p0, Landroid/widget/Scroller$FrameRate;->this$0:Landroid/widget/Scroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 214
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->timePassed:I

    .line 215
    return-void
.end method


# virtual methods
.method public getTimeDiff()F
    .registers 3

    .prologue
    .line 223
    iget v0, p0, Landroid/widget/Scroller$FrameRate;->timePassed:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 218
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 219
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->timePassed:I

    .line 220
    return-void
.end method
