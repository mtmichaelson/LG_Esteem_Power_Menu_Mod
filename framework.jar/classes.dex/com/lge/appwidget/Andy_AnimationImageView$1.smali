.class Lcom/lge/appwidget/Andy_AnimationImageView$1;
.super Ljava/lang/Object;
.source "Andy_AnimationImageView.java"


# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_AnimationImageView;->setScaleAnimation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rand:Ljava/util/Random;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_AnimationImageView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_AnimationImageView;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->rand:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 12
    .parameter "animation"

    .prologue
    const/4 v9, 0x2

    .line 69
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-boolean v1, v1, Lcom/lge/appwidget/Andy_AnimationImageView;->repeat:Z

    if-eqz v1, :cond_9e

    .line 70
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v3, v3, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v4, v4, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->rand:Ljava/util/Random;

    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->rand:Ljava/util/Random;

    iget-object v7, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v7, v7, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v7, v7, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 71
    .local v0, mScaleAnimation1:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->rand:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 72
    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimationImageView;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_AnimationImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    .end local v0       #mScaleAnimation1:Landroid/view/animation/ScaleAnimation;,
    :cond_9e
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 61
    return-void
.end method
