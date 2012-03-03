.class public Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;
.super Ljava/lang/Object;
.source "SUIFastScrollGestureDetector.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$SimpleOnScrollGestureListener;,
        Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f



# instance fields
.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFocusX:F

.field private mCurrFocusY:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusDiffX:F

.field private mFocusDiffY:F

.field private mGestureInProgress:Z

.field private mInMultiTouchScrolling:Z

.field private final mListener:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFocusX:F

.field private mPrevFocusY:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 119
    .local v0, configuration:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mListener:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mEdgeSlop:F

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mMinimumFlingVelocity:I

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mMaximumFlingVelocity:I

    .line 125
    return-void
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float v0, v1, v2

    .line 294
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float v0, v1, v2

    .line 299
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private isScrolling()Z
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, result:Z
    iget v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mFocusDiffX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gez v1, :cond_17

    iget v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mFocusDiffY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_18

    .line 355
    :cond_17
    const/4 v0, 0x1

    .line 357
    :cond_18
    return v0
.end method

.method private reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 338
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 339
    iput-object v2, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 341
    :cond_d
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_18

    .line 342
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 343
    iput-object v2, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 345
    :cond_18
    iput-boolean v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    .line 346
    iput-boolean v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mGestureInProgress:Z

    .line 347
    iput-boolean v1, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mInMultiTouchScrolling:Z

    .line 348
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 349
    iput-object v2, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 350
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .registers 22
    .parameter "curr"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v9, v0

    .line 310
    .local v9, prev:Landroid/view/MotionEvent;
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 311
    .local v12, px0:F
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 312
    .local v14, py0:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 313
    .local v13, px1:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 314
    .local v15, py1:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 315
    .local v5, cx0:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 316
    .local v7, cy0:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 317
    .local v6, cx1:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 319
    .local v8, cy1:F
    sub-float v10, v13, v12

    .line 320
    .local v10, pvx:F
    sub-float v11, v15, v14

    .line 321
    .local v11, pvy:F
    sub-float v3, v6, v5

    .line 322
    .local v3, cvx:F
    sub-float v4, v8, v7

    .line 324
    .local v4, cvy:F
    const/high16 v16, 0x3f00

    mul-float v16, v16, v10

    add-float v16, v16, v12

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevFocusX:F

    .line 325
    const/high16 v16, 0x3f00

    mul-float v16, v16, v11

    add-float v16, v16, v14

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevFocusY:F

    .line 326
    const/high16 v16, 0x3f00

    mul-float v16, v16, v3

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 327
    const/high16 v16, 0x3f00

    mul-float v16, v16, v4

    add-float v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevFocusX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mFocusDiffX:F

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevFocusY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mFocusDiffY:F

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mTimeDelta:J

    .line 332
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrPressure:F

    .line 333
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevPressure:F

    .line 334
    return-void
.end method


# virtual methods
.method public getEventTime()J
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    return v0
.end method

.method public getTimeDelta()J
    .registers 3

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInMultiTouchScrolling()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mInMultiTouchScrolling:Z

    return v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .parameter "event"

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 136
    .local v3, action:I
    const/4 v6, 0x0

    .line 138
    .local v6, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_17

    .line 139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 141
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mGestureInProgress:Z

    move/from16 v19, v0

    if-nez v19, :cond_273

    .line 144
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_366

    .line 289
    :cond_34
    :goto_34
    :pswitch_34
    return v6

    .line 149
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 151
    .local v8, metrics:Landroid/util/DisplayMetrics;
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mEdgeSlop:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mRightSlopEdge:F

    .line 152
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mEdgeSlop:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mBottomSlopEdge:F

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->reset()V

    .line 157
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 158
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mTimeDelta:J

    .line 160
    invoke-direct/range {p0 .. p1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 167
    .local v5, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 168
    .local v11, rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 169
    .local v4, bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    .line 170
    .local v15, x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    .line 171
    .local v17, y0:F
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 172
    .local v16, x1:F
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 174
    .local v18, y1:F
    cmpg-float v19, v15, v5

    if-ltz v19, :cond_c6

    cmpg-float v19, v17, v5

    if-ltz v19, :cond_c6

    cmpl-float v19, v15, v11

    if-gtz v19, :cond_c6

    cmpl-float v19, v17, v4

    if-lez v19, :cond_fc

    :cond_c6
    const/16 v19, 0x1

    move/from16 v9, v19

    .line 176
    .local v9, p0sloppy:Z
    :goto_ca
    cmpg-float v19, v16, v5

    if-ltz v19, :cond_da

    cmpg-float v19, v18, v5

    if-ltz v19, :cond_da

    cmpl-float v19, v16, v11

    if-gtz v19, :cond_da

    cmpl-float v19, v18, v4

    if-lez v19, :cond_101

    :cond_da
    const/16 v19, 0x1

    move/from16 v10, v19

    .line 179
    .local v10, p1sloppy:Z
    :goto_de
    if-eqz v9, :cond_106

    if-eqz v10, :cond_106

    .line 180
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 181
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    .line 182
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_34

    .line 174
    .end local v9       #p0sloppy:Z,
    .end local v10       #p1sloppy:Z,
    :cond_fc
    const/16 v19, 0x0

    move/from16 v9, v19

    goto :goto_ca

    .line 176
    .restart local v9       #p0sloppy:Z,
    :cond_101
    const/16 v19, 0x0

    move/from16 v10, v19

    goto :goto_de

    .line 183
    .restart local v10       #p1sloppy:Z,
    :cond_106
    if-eqz v9, :cond_132

    .line 184
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 185
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    .line 186
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_34

    .line 187
    :cond_132
    if-eqz v10, :cond_15e

    .line 188
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 189
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    .line 190
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_34

    .line 192
    :cond_15e
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_34

    .line 198
    .end local v4       #bottomSlop:F,
    .end local v5       #edgeSlop:F,
    .end local v8       #metrics:Landroid/util/DisplayMetrics;,
    .end local v9       #p0sloppy:Z,
    .end local v10       #p1sloppy:Z,
    .end local v11       #rightSlop:F,
    .end local v15       #x0:F,
    .end local v16       #x1:F,
    .end local v17       #y0:F,
    .end local v18       #y1:F,
    :pswitch_168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_34

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 201
    .restart local v5       #edgeSlop:F,
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 202
    .restart local v11       #rightSlop:F,
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 203
    .restart local v4       #bottomSlop:F,
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    .line 204
    .restart local v15       #x0:F,
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    .line 205
    .restart local v17       #y0:F,
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 206
    .restart local v16       #x1:F,
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 208
    .restart local v18       #y1:F,
    cmpg-float v19, v15, v5

    if-ltz v19, :cond_1ab

    cmpg-float v19, v17, v5

    if-ltz v19, :cond_1ab

    cmpl-float v19, v15, v11

    if-gtz v19, :cond_1ab

    cmpl-float v19, v17, v4

    if-lez v19, :cond_1d9

    :cond_1ab
    const/16 v19, 0x1

    move/from16 v9, v19

    .line 210
    .restart local v9       #p0sloppy:Z,
    :goto_1af
    cmpg-float v19, v16, v5

    if-ltz v19, :cond_1bf

    cmpg-float v19, v18, v5

    if-ltz v19, :cond_1bf

    cmpl-float v19, v16, v11

    if-gtz v19, :cond_1bf

    cmpl-float v19, v18, v4

    if-lez v19, :cond_1de

    :cond_1bf
    const/16 v19, 0x1

    move/from16 v10, v19

    .line 213
    .restart local v10       #p1sloppy:Z,
    :goto_1c3
    if-eqz v9, :cond_1e3

    if-eqz v10, :cond_1e3

    .line 214
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 215
    const/high16 v19, -0x4080

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    goto/16 :goto_34

    .line 208
    .end local v9       #p0sloppy:Z,
    .end local v10       #p1sloppy:Z,
    :cond_1d9
    const/16 v19, 0x0

    move/from16 v9, v19

    goto :goto_1af

    .line 210
    .restart local v9       #p0sloppy:Z,
    :cond_1de
    const/16 v19, 0x0

    move/from16 v10, v19

    goto :goto_1c3

    .line 216
    .restart local v10       #p1sloppy:Z,
    :cond_1e3
    if-eqz v9, :cond_207

    .line 217
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 218
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    goto/16 :goto_34

    .line 219
    :cond_207
    if-eqz v10, :cond_22b

    .line 220
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 221
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    goto/16 :goto_34

    .line 223
    :cond_22b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    .line 224
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_34

    .line 230
    .end local v4       #bottomSlop:F,
    .end local v5       #edgeSlop:F,
    .end local v9       #p0sloppy:Z,
    .end local v10       #p1sloppy:Z,
    .end local v11       #rightSlop:F,
    .end local v15       #x0:F,
    .end local v16       #x1:F,
    .end local v17       #y0:F,
    .end local v18       #y1:F,
    :pswitch_23d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_34

    .line 232
    const v19, 0xff00

    and-int v19, v19, v3

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_26e

    const/16 v19, 0x1

    move/from16 v7, v19

    .line 234
    .local v7, id:I
    :goto_252
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 235
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    goto/16 :goto_34

    .line 232
    .end local v7       #id:I,
    :cond_26e
    const/16 v19, 0x0

    move/from16 v7, v19

    goto :goto_252

    .line 241
    :cond_273
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_374

    :pswitch_27b
    goto/16 :goto_34

    .line 271
    :pswitch_27d
    invoke-direct/range {p0 .. p1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrPressure:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevPressure:F

    move/from16 v20, v0

    div-float v19, v19, v20

    const v20, 0x3f2b851f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_34

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 278
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->isScrolling()Z

    move-result v19

    if-eqz v19, :cond_34

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mListener:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mFocusDiffX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mFocusDiffY:F

    move/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;->onScroll(FF)Z

    move-result v6

    .line 282
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mInMultiTouchScrolling:Z

    goto/16 :goto_34

    .line 244
    :pswitch_2ce
    invoke-direct/range {p0 .. p1}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 247
    const v19, 0xff00

    and-int v19, v19, v3

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_35b

    const/16 v19, 0x1

    move/from16 v7, v19

    .line 249
    .restart local v7       #id:I,
    :goto_2de
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusX:F

    .line 250
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mCurrFocusY:F

    .line 252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mSloppyGesture:Z

    move/from16 v19, v0

    if-nez v19, :cond_356

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v12, v0

    .line 254
    .local v12, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 255
    invoke-virtual {v12, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    .line 256
    .local v13, velocityX:F
    invoke-virtual {v12, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v14

    .line 257
    .local v14, velocityY:F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_348

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_356

    .line 259
    :cond_348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->mListener:Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector$OnScrollGestureListener;->onFling(FF)Z

    move-result v6

    .line 263
    .end local v12       #velocityTracker:Landroid/view/VelocityTracker;,
    .end local v13       #velocityX:F,
    .end local v14       #velocityY:F,
    :cond_356
    invoke-direct/range {p0 .. p0}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->reset()V

    goto/16 :goto_34

    .line 247
    .end local v7       #id:I,
    :cond_35b
    const/16 v19, 0x0

    move/from16 v7, v19

    goto/16 :goto_2de

    .line 267
    :pswitch_361
    invoke-direct/range {p0 .. p0}, Lcom/lge/sui/widget/util/SUIFastScrollGestureDetector;->reset()V

    goto/16 :goto_34

    .line 144
    :pswitch_data_366
    .packed-switch 0x2
        :pswitch_168
        :pswitch_34
        :pswitch_34
        :pswitch_35
        :pswitch_23d
    .end packed-switch

    .line 241
    :pswitch_data_374
    .packed-switch 0x2
        :pswitch_27d
        :pswitch_361
        :pswitch_27b
        :pswitch_27b
        :pswitch_2ce
    .end packed-switch
.end method
