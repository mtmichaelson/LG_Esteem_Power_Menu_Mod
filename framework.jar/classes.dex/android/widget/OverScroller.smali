.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$MagneticOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I



# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

.field private mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const v0, 0x3e23d70a

    .line 68
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-direct {v0}, Landroid/widget/OverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    .line 86
    new-instance v0, Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-direct {v0}, Landroid/widget/OverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    .line 87
    invoke-static {p1}, Landroid/widget/OverScroller$MagneticOverScroller;->initializeFromContext(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    .line 90
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    .line 91
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    .line 462
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    .line 463
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 9

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 253
    const/4 v6, 0x0

    .line 299
    :goto_7
    return v6

    .line 256
    :cond_8
    iget v6, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_7c

    .line 299
    :cond_d
    :goto_d
    const/4 v6, 0x1

    goto :goto_7

    .line 258
    :pswitch_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 261
    .local v4, time:J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-wide v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v1, v4, v6

    .line 263
    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 264
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_40

    .line 265
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 267
    .local v3, q:F
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_39

    .line 268
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 272
    :goto_2e
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->updateScroll(F)V

    .line 273
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->updateScroll(F)V

    goto :goto_d

    .line 270
    :cond_39
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2e

    .line 275
    .end local v3       #q:F,
    :cond_40
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_d

    .line 280
    .end local v0       #duration:I,
    .end local v1       #elapsedTime:J,
    .end local v4       #time:J,
    :pswitch_44
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_5f

    .line 281
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 282
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 283
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    .line 288
    :cond_5f
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_d

    .line 289
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_d

    .line 290
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_d

    .line 291
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    goto :goto_d

    .line 256
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_44
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 3
    .parameter "extend"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->extendDuration(I)V

    .line 210
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->extendDuration(I)V

    .line 211
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 20
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 362
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 363
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 17
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 394
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 395
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$MagneticOverScroller;->fling(IIIII)V

    .line 396
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$MagneticOverScroller;->fling(IIIII)V

    .line 397
    return-void
.end method

.method public final forceFinished(Z)V
    .registers 4
    .parameter "finished"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iput-boolean p1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    iput-boolean p1, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 113
    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    .prologue
    .line 140
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v2, v2, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .line 141
    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v2, v2, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 142
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverScrolled()Z
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I

    move-result v0

    if-nez v0, :cond_1c

    :cond_e
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 5
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 413
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    .line 414
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 5
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    .line 431
    return-void
.end method

.method public setFinalX(I)V
    .registers 3
    .parameter "newX"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->setFinalPosition(I)V

    .line 228
    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .parameter "newY"

    .prologue
    .line 244
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->setFinalPosition(I)V

    .line 245
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v3, 0x1

    .line 352
    iput v3, p0, Landroid/widget/OverScroller;->mMode:I

    .line 355
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v2, p1, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    move-result v0

    .line 356
    .local v0, spingbackX:Z
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    move-result v1

    .line 357
    .local v1, spingbackY:Z
    if-nez v0, :cond_13

    if-eqz v1, :cond_15

    :cond_13
    move v2, v3

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public startScroll(IIII)V
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 317
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 318
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 334
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 335
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$MagneticOverScroller;->startScroll(III)V

    .line 336
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$MagneticOverScroller;->startScroll(III)V

    .line 337
    return-void
.end method

.method public timePassed()I
    .registers 9

    .prologue
    .line 473
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 474
    .local v2, time:J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-wide v4, v4, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-wide v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 475
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
