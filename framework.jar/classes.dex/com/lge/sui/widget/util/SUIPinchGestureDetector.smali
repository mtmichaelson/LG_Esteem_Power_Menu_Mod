.class public Lcom/lge/sui/widget/util/SUIPinchGestureDetector;
.super Ljava/lang/Object;
.source "SUIPinchGestureDetector.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/util/SUIPinchGestureDetector$SimpleOnPinchGestureListener;,
        Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;
    }
.end annotation


# instance fields
.field private mCurrLen:F

.field private mGestureInProgress:Z

.field private mInitLen:F

.field private final mListener:Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;

.field private final mPinchThreshhold:F

.field private mTimeDelta:J



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v0, v2

    check-cast v0, Landroid/view/WindowManager;

    move-object v1, v0

    .line 131
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mPinchThreshhold:F

    .line 132
    iput-object p2, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mListener:Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;

    .line 133
    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    const/high16 v1, -0x4080

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mGestureInProgress:Z

    .line 200
    iput v1, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mInitLen:F

    .line 201
    iput v1, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mCurrLen:F

    .line 202
    return-void
.end method


# virtual methods
.method public getTimeDelta()J
    .registers 3

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, action:I
    const/4 v4, 0x0

    .line 139
    .local v4, handled:Z
    iget-boolean v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mGestureInProgress:Z

    if-nez v11, :cond_39

    .line 140
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_b8

    .line 195
    :cond_e
    :goto_e
    return v4

    .line 143
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->reset()V

    .line 145
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 146
    .local v7, x0:F
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 147
    .local v9, y0:F
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 148
    .local v8, x1:F
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 150
    .local v10, y1:F
    sub-float v2, v8, v7

    .line 151
    .local v2, distanceX:F
    sub-float v3, v10, v9

    .line 152
    .local v3, distanceY:F
    mul-float v11, v2, v2

    mul-float v12, v3, v3

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    iput v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mInitLen:F

    .line 154
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mGestureInProgress:Z

    goto :goto_e

    .line 159
    .end local v2       #distanceX:F,
    .end local v3       #distanceY:F,
    .end local v7       #x0:F,
    .end local v8       #x1:F,
    .end local v9       #y0:F,
    .end local v10       #y1:F,
    :cond_39
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_be

    :pswitch_3e
    goto :goto_e

    .line 170
    :pswitch_3f
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 171
    .restart local v7       #x0:F,
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 172
    .restart local v9       #y0:F,
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 173
    .restart local v8       #x1:F,
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 175
    .restart local v10       #y1:F,
    sub-float v2, v8, v7

    .line 176
    .restart local v2       #distanceX:F,
    sub-float v3, v10, v9

    .line 177
    .restart local v3       #distanceY:F,
    mul-float v11, v2, v2

    mul-float v12, v3, v3

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    iput v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mCurrLen:F

    .line 179
    iget v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mCurrLen:F

    iget v12, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mInitLen:F

    sub-float v1, v11, v12

    .line 180
    .local v1, diff:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mPinchThreshhold:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_e

    .line 181
    const/4 v11, 0x0

    cmpg-float v11, v1, v11

    if-gez v11, :cond_ac

    .line 182
    iget-object v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mListener:Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;

    invoke-interface {v11, p0}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;->onPinchIn(Lcom/lge/sui/widget/util/SUIPinchGestureDetector;)Z

    move-result v4

    .line 187
    :cond_7d
    :goto_7d
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float v5, v11, v12

    .line 188
    .local v5, newDistanceX:F
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float v6, v11, v12

    .line 189
    .local v6, newDistanceY:F
    mul-float v11, v5, v5

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    iput v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mInitLen:F

    goto/16 :goto_e

    .line 162
    .end local v1       #diff:F,
    .end local v2       #distanceX:F,
    .end local v3       #distanceY:F,
    .end local v5       #newDistanceX:F,
    .end local v6       #newDistanceY:F,
    .end local v7       #x0:F,
    .end local v8       #x1:F,
    .end local v9       #y0:F,
    .end local v10       #y1:F,
    :pswitch_a2
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->reset()V

    goto/16 :goto_e

    .line 166
    :pswitch_a7
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->reset()V

    goto/16 :goto_e

    .line 183
    .restart local v1       #diff:F,
    .restart local v2       #distanceX:F,
    .restart local v3       #distanceY:F,
    .restart local v7       #x0:F,
    .restart local v8       #x1:F,
    .restart local v9       #y0:F,
    .restart local v10       #y1:F,
    :cond_ac
    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-lez v11, :cond_7d

    .line 184
    iget-object v11, p0, Lcom/lge/sui/widget/util/SUIPinchGestureDetector;->mListener:Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;

    invoke-interface {v11, p0}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector$OnPinchGestureListener;->onPinchOut(Lcom/lge/sui/widget/util/SUIPinchGestureDetector;)Z

    move-result v4

    goto :goto_7d

    .line 140
    :pswitch_data_b8
    .packed-switch 0x5
        :pswitch_f
    .end packed-switch

    .line 159
    :pswitch_data_be
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_a7
        :pswitch_3e
        :pswitch_3e
        :pswitch_a2
    .end packed-switch
.end method
