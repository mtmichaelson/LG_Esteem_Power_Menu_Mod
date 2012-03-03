.class public Lcom/lge/appwidget/Andy_AnimatedImageView;
.super Landroid/widget/ImageView;
.source "Andy_AnimatedImageView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field animListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnim:Landroid/view/animation/Animation;

.field mAppwidgetId:I

.field private mAttached:Z

.field mContext:Landroid/content/Context;

.field mIsLast:Z

.field mPendingUnallocFlag:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mPendingUnallocFlag:Z

    .line 28
    new-instance v0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_AnimatedImageView$1;-><init>(Lcom/lge/appwidget/Andy_AnimatedImageView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 61
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mPendingUnallocFlag:Z

    .line 28
    new-instance v0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_AnimatedImageView$1;-><init>(Lcom/lge/appwidget/Andy_AnimatedImageView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->animListener:Landroid/view/animation/Animation$AnimationListener;

    .line 66
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private updateAnim()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    :cond_9
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 138
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 142
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAttached:Z

    .line 143
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 148
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 149
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 152
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAttached:Z

    .line 153
    return-void
.end method

.method public restartAnimation(Z)V
    .registers 3
    .parameter "value"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 124
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->updateAnim()V

    .line 126
    :cond_9
    return-void
.end method

.method public setAnimationResource(I)V
    .registers 5
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    .line 113
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_11} :catch_15

    .line 117
    :goto_11
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->updateAnim()V

    .line 119
    return-void

    .line 114
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAnim:Landroid/view/animation/Animation;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 117
    .end local v0       #ex:Landroid/content/res/Resources$NotFoundException;,
    :catchall_1b
    move-exception v1

    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->updateAnim()V

    throw v1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "drawable"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->updateAnim()V

    .line 93
    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 98
    if-ltz p1, :cond_9

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->updateAnim()V

    .line 107
    :goto_8
    return-void

    .line 105
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8
.end method

.method public setLastAnimation(Z)V
    .registers 2
    .parameter "isLast"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mIsLast:Z

    .line 130
    return-void
.end method

.method public setPendingUnallocFlag(Z)V
    .registers 2
    .parameter "peningFlag"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mPendingUnallocFlag:Z

    .line 57
    return-void
.end method

.method public setWidgetId(I)V
    .registers 2
    .parameter "id"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 133
    iput p1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAppwidgetId:I

    .line 134
    return-void
.end method
