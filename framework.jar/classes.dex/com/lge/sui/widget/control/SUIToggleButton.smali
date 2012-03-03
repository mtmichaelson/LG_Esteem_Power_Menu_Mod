.class public Lcom/lge/sui/widget/control/SUIToggleButton;
.super Landroid/widget/ToggleButton;
.source "SUIToggleButton.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUIToggleButton"



# instance fields
.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x0

    .line 75
    new-instance v10, Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-direct {v10, p0}, Lcom/lge/sui/widget/control/SUITouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v10, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    .line 77
    invoke-virtual {p0, p0}, Lcom/lge/sui/widget/control/SUIToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    const v10, 0x3020062

    invoke-virtual {p0, v10}, Lcom/lge/sui/widget/control/SUIToggleButton;->setBackgroundResource(I)V

    .line 80
    if-eqz p2, :cond_53

    .line 81
    sget-object v10, Lcom/lge/sui/widget/R$styleable;->TouchAreaAttr:[I

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 85
    .local v3, pressedLeftSlop:I
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 87
    .local v5, pressedTopSlop:I
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 89
    .local v4, pressedRightSlop:I
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 92
    .local v2, pressedBottomSlop:I
    iget-object v10, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v10}, Lcom/lge/sui/widget/control/SUITouchDelegate;->getDefaultSlop()I

    move-result v1

    .line 94
    .local v1, defaultSlop:I
    const/4 v10, 0x4

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 96
    .local v7, releasedLeftSlop:I
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 98
    .local v9, releasedTopSlop:I
    const/4 v10, 0x6

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 100
    .local v8, releasedRightSlop:I
    const/4 v10, 0x7

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 103
    .local v6, releasedBottomSlop:I
    iget-object v10, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v10, v3, v5, v4, v2}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setPressedSlop(IIII)V

    .line 106
    iget-object v10, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v10, v7, v9, v8, v6}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setReleasedSlop(IIII)V

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    .end local v0       #ar:Landroid/content/res/TypedArray;,
    .end local v1       #defaultSlop:I,
    .end local v2       #pressedBottomSlop:I,
    .end local v3       #pressedLeftSlop:I,
    .end local v4       #pressedRightSlop:I,
    .end local v5       #pressedTopSlop:I,
    .end local v6       #releasedBottomSlop:I,
    .end local v7       #releasedLeftSlop:I,
    .end local v8       #releasedRightSlop:I,
    .end local v9       #releasedTopSlop:I,
    :cond_53
    return-void
.end method


# virtual methods
.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "outRect"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_13

    .line 129
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 132
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->getHitRect(Landroid/graphics/Rect;)V

    .line 137
    :cond_12
    :goto_12
    return-void

    .line 135
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method public getOriginalHitRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "outRect"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 141
    return-void
.end method

.method public getReleaseRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "outRect"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->getReleaseRect(Landroid/graphics/Rect;)V

    .line 148
    :cond_9
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 166
    const-string v0, "SUIToggleButton"

    const-string v1, "call onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITouchDelegate;->invalidateBounds()V

    .line 170
    :cond_10
    invoke-super/range {p0 .. p5}, Landroid/widget/ToggleButton;->onLayout(ZIIII)V

    .line 171
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/control/SUITouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 188
    :goto_e
    return v0

    .line 183
    :cond_f
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 184
    goto :goto_e

    .line 188
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUIToggleButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public setPressedSlop(IIII)V
    .registers 6
    .parameter "leftSlop"
    .parameter "topSlop"
    .parameter "rightSlop"
    .parameter "bottomSlop"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setPressedSlop(IIII)V

    .line 117
    :cond_9
    return-void
.end method

.method public setReleasedSlop(IIII)V
    .registers 6
    .parameter "leftSlop"
    .parameter "topSlop"
    .parameter "rightSlop"
    .parameter "bottomSlop"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setReleasedSlop(IIII)V

    .line 123
    :cond_9
    return-void
.end method

.method public setUserOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 153
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setUserOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    :cond_b
    return-void
.end method
