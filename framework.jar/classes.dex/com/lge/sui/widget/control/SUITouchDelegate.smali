.class public Lcom/lge/sui/widget/control/SUITouchDelegate;
.super Ljava/lang/Object;
.source "SUITouchDelegate.java"



# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressedBottomSlop:I

.field private mPressedLeftSlop:I

.field private mPressedRightSlop:I

.field private mPressedTopSlop:I

.field private mReleasedBottomSlop:I

.field private mReleasedLeftSlop:I

.field private mReleasedRightSlop:I

.field private mReleasedTopSlop:I

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;



# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "delegateView"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 23
    iput v1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedLeftSlop:I

    .line 24
    iput v1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedTopSlop:I

    .line 25
    iput v1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedRightSlop:I

    .line 26
    iput v1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedBottomSlop:I

    .line 38
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mDelegateView:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlop:I

    .line 40
    return-void
.end method


# virtual methods
.method public adjustHitRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "hitRect"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 79
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedLeftSlop:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 80
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedTopSlop:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 81
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedRightSlop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 82
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedBottomSlop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 83
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    return-void
.end method

.method public adjustSlopBounds(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "hitRect"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 88
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 89
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedLeftSlop:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 90
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedTopSlop:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 91
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedRightSlop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 92
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedBottomSlop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 94
    :cond_31
    return-void
.end method

.method public getDefaultSlop()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlop:I

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "outRect"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 63
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->adjustHitRect(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->adjustSlopBounds(Landroid/graphics/Rect;)V

    .line 69
    :cond_14
    :goto_14
    return-void

    .line 67
    :cond_15
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_14
.end method

.method public getReleaseRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "outRect"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 75
    :cond_d
    return-void
.end method

.method public invalidateBounds()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 98
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 107
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 108
    .local v8, y:I
    const/4 v4, 0x0

    .line 109
    .local v4, sendToDelegate:Z
    const/4 v3, 0x1

    .line 110
    .local v3, hit:Z
    const/4 v2, 0x0

    .line 111
    .local v2, handled:Z
    iget v5, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlop:I

    .line 112
    .local v5, slop:I
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mDelegateView:Landroid/view/View;

    .line 114
    .local v1, delegateView:Landroid/view/View;
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 115
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v7, v9

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_78

    .line 147
    :cond_25
    :goto_25
    if-eqz v4, :cond_76

    .line 148
    if-eqz v3, :cond_66

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 160
    :goto_3a
    iget-object v9, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v9, :cond_72

    iget-object v9, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v9, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_72

    move v9, v11

    .line 167
    :goto_47
    return v9

    .line 120
    :pswitch_48
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 121
    iput-boolean v11, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mDelegateTargeted:Z

    .line 122
    const/4 v4, 0x1

    goto :goto_25

    .line 130
    :pswitch_52
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mDelegateTargeted:Z

    .line 131
    iget-object v6, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 132
    .local v6, slopBounds:Landroid/graphics/Rect;
    if-eqz v4, :cond_25

    .line 133
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_25

    .line 135
    const/4 v3, 0x0

    goto :goto_25

    .line 142
    .end local v6       #slopBounds:Landroid/graphics/Rect;,
    :pswitch_60
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mDelegateTargeted:Z

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mDelegateTargeted:Z

    goto :goto_25

    .line 155
    :cond_66
    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_3a

    .line 164
    :cond_72
    invoke-virtual {v1, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_76
    move v9, v2

    .line 167
    goto :goto_47

    .line 118
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_48
        :pswitch_52
        :pswitch_52
        :pswitch_60
    .end packed-switch
.end method

.method public setPressedSlop(IIII)V
    .registers 5
    .parameter "leftSlop"
    .parameter "topSlop"
    .parameter "rightSlop"
    .parameter "bottomSlop"

    .prologue
    .line 47
    iput p1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedLeftSlop:I

    .line 48
    iput p2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedTopSlop:I

    .line 49
    iput p3, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedRightSlop:I

    .line 50
    iput p4, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mPressedBottomSlop:I

    .line 51
    return-void
.end method

.method public setReleasedSlop(IIII)V
    .registers 5
    .parameter "leftSlop"
    .parameter "topSlop"
    .parameter "rightSlop"
    .parameter "bottomSlop"

    .prologue
    .line 54
    iput p1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedLeftSlop:I

    .line 55
    iput p2, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedTopSlop:I

    .line 56
    iput p3, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedRightSlop:I

    .line 57
    iput p4, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mReleasedBottomSlop:I

    .line 58
    return-void
.end method

.method public setUserOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITouchDelegate;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 103
    return-void
.end method
