.class public Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;
.super Ljava/lang/Object;
.source "SUISectionScroller.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUISectionScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollerFadeOut"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xd0

.field static final FADE_DURATION:J = 0xc8L



# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/lge/sui/widget/list/SUISectionScroller;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/list/SUISectionScroller;)V
    .registers 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .registers 10

    .prologue
    const-wide/16 v7, 0xd0

    .line 438
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v3}, Lcom/lge/sui/widget/list/SUISectionScroller;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    .line 439
    const/16 v3, 0xd0

    .line 449
    :goto_d
    return v3

    .line 442
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 443
    .local v1, now:J
    iget-wide v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->mStartTime:J

    iget-wide v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 444
    const/4 v0, 0x0

    .local v0, alpha:I
    :goto_1c
    move v3, v0

    .line 449
    goto :goto_d

    .line 446
    .end local v0       #alpha:I,
    :cond_1e
    iget-wide v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I,
    goto :goto_1c
.end method

.method public run()V
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 454
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->startFade()V

    .line 463
    :goto_c
    return-void

    .line 458
    :cond_d
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1d

    .line 459
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    invoke-static {v0}, Lcom/lge/sui/widget/list/SUISectionScroller;->access$000(Lcom/lge/sui/widget/list/SUISectionScroller;)Lcom/lge/sui/widget/list/SUIIndexedListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    goto :goto_c

    .line 461
    :cond_1d
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/list/SUISectionScroller;->setState(I)V

    goto :goto_c
.end method

.method startFade()V
    .registers 3

    .prologue
    .line 432
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->mFadeDuration:J

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->mStartTime:J

    .line 434
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->this$0:Lcom/lge/sui/widget/list/SUISectionScroller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/list/SUISectionScroller;->setState(I)V

    .line 435
    return-void
.end method
