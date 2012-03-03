.class public Lcom/lge/appwidget/Andy_AnimationImageView;
.super Landroid/widget/ImageView;
.source "Andy_AnimationImageView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field Anim:[Ljava/lang/String;

.field mImageView:Landroid/widget/ImageView;

.field repeat:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public setRotateAnimation(Ljava/lang/String;)V
    .registers 8
    .parameter "Animation"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 35
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, Anim:[Ljava/lang/String;
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 37
    .local v1, mRotateAnimation:Landroid/view/animation/RotateAnimation;
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 38
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    return-void
.end method

.method public setScaleAnimation(Ljava/lang/String;)V
    .registers 14
    .parameter "Animation"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 51
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 52
    .local v8, rand:Ljava/util/Random;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v9, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v6, v9

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 54
    .local v0, mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 55
    iput-object p0, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->mImageView:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->Anim:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_AnimationImageView;->repeat:Z

    .line 57
    new-instance v7, Lcom/lge/appwidget/Andy_AnimationImageView$1;

    invoke-direct {v7, p0}, Lcom/lge/appwidget/Andy_AnimationImageView$1;-><init>(Lcom/lge/appwidget/Andy_AnimationImageView;)V

    .line 78
    .local v7, mAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    return-void
.end method

.method public setTranslateAnimation(Ljava/lang/String;)V
    .registers 8
    .parameter "Animation"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 43
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, Anim:[Ljava/lang/String;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 45
    .local v1, mTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 46
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    return-void
.end method
