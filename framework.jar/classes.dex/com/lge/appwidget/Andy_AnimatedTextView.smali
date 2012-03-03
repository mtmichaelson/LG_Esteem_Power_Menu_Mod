.class public Lcom/lge/appwidget/Andy_AnimatedTextView;
.super Landroid/widget/TextView;
.source "Andy_AnimatedTextView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatedImageView"



# instance fields
.field mAnim:Landroid/view/animation/Animation;

.field mAppwidgetId:I

.field mAttached:Z

.field mContext:Landroid/content/Context;

.field mIsLast:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private updateAnim()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_AnimatedTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    :cond_9
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 71
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 74
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAttached:Z

    .line 75
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 81
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 83
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAttached:Z

    .line 84
    return-void
.end method

.method public restartAnimation(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 87
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 88
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedTextView;->updateAnim()V

    .line 90
    :cond_9
    return-void
.end method

.method public setAnimationResource(I)V
    .registers 4
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnimatedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_e

    .line 56
    :goto_a
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedTextView;->updateAnim()V

    .line 58
    return-void

    .line 52
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    :try_start_11
    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAnim:Landroid/view/animation/Animation;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_a

    .line 56
    .end local v0       #ex:Landroid/content/res/Resources$NotFoundException;,
    :catchall_14
    move-exception v1

    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedTextView;->updateAnim()V

    throw v1
.end method

.method public setLastAnimation(Z)V
    .registers 2
    .parameter "isLast"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mIsLast:Z

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3
    .parameter "text"
    .parameter "type"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 38
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnimatedTextView;->updateAnim()V

    .line 39
    return-void
.end method

.method public setWidgetId(I)V
    .registers 2
    .parameter "id"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 65
    iput p1, p0, Lcom/lge/appwidget/Andy_AnimatedTextView;->mAppwidgetId:I

    .line 66
    return-void
.end method
