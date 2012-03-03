.class Lcom/lge/appwidget/Andy_AnimatedImageView$1;
.super Ljava/lang/Object;
.source "Andy_AnimatedImageView.java"


# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_AnimatedImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_AnimatedImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    iget-boolean v1, v1, Lcom/lge/appwidget/Andy_AnimatedImageView;->mIsLast:Z

    if-eqz v1, :cond_22

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wipro.ANIMATIONFINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    iget v2, v2, Lcom/lge/appwidget/Andy_AnimatedImageView;->mAppwidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_AnimatedImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    iput-boolean v3, v1, Lcom/lge/appwidget/Andy_AnimatedImageView;->mIsLast:Z

    .line 47
    .end local v0       #intent:Landroid/content/Intent;,
    :cond_22
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    iget-boolean v1, v1, Lcom/lge/appwidget/Andy_AnimatedImageView;->mPendingUnallocFlag:Z

    if-eqz v1, :cond_32

    .line 48
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnimatedImageView$1;->this$0:Lcom/lge/appwidget/Andy_AnimatedImageView;

    iput-boolean v3, v1, Lcom/lge/appwidget/Andy_AnimatedImageView;->mPendingUnallocFlag:Z

    .line 51
    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 36
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 32
    return-void
.end method
