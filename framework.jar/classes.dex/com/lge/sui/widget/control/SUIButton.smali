.class public Lcom/lge/sui/widget/control/SUIButton;
.super Landroid/widget/Button;
.source "SUIButton.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUIButton"



# instance fields
.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x0

    .line 50
    new-instance v10, Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-direct {v10, p0}, Lcom/lge/sui/widget/control/SUITouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v10, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    .line 52
    invoke-virtual {p0, p0}, Lcom/lge/sui/widget/control/SUIButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    if-eqz p2, :cond_4d

    .line 55
    sget-object v10, Lcom/lge/sui/widget/R$styleable;->TouchAreaAttr:[I

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 59
    .local v3, pressedLeftSlop:I
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 61
    .local v5, pressedTopSlop:I
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 63
    .local v4, pressedRightSlop:I
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 66
    .local v2, pressedBottomSlop:I
    iget-object v10, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v10}, Lcom/lge/sui/widget/control/SUITouchDelegate;->getDefaultSlop()I

    move-result v1

    .line 68
    .local v1, defaultSlop:I
    const/4 v10, 0x4

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 70
    .local v7, releasedLeftSlop:I
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 72
    .local v9, releasedTopSlop:I
    const/4 v10, 0x6

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 74
    .local v8, releasedRightSlop:I
    const/4 v10, 0x7

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 77
    .local v6, releasedBottomSlop:I
    iget-object v10, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v10, v3, v5, v4, v2}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setPressedSlop(IIII)V

    .line 80
    iget-object v10, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v10, v7, v9, v8, v6}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setReleasedSlop(IIII)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
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
    :cond_4d
    return-void
.end method


# virtual methods
.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "outRect"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_13

    .line 103
    invoke-super {p0, p1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 106
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->getHitRect(Landroid/graphics/Rect;)V

    .line 111
    :cond_12
    :goto_12
    return-void

    .line 109
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method public getOriginalHitRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "outRect"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 115
    return-void
.end method

.method public getReleaseRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "outRect"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->getReleaseRect(Landroid/graphics/Rect;)V

    .line 122
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
    .line 140
    const-string v0, "SUIButton"

    const-string v1, "call onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_10

    .line 142
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITouchDelegate;->invalidateBounds()V

    .line 144
    :cond_10
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 145
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/control/SUITouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 162
    :goto_e
    return v0

    .line 157
    :cond_f
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 158
    goto :goto_e

    .line 162
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUIButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 88
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setPressedSlop(IIII)V

    .line 91
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
    .line 94
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setReleasedSlop(IIII)V

    .line 97
    :cond_9
    return-void
.end method

.method public setUserOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 127
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    if-eqz v0, :cond_b

    .line 128
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIButton;->mTouchDelegate:Lcom/lge/sui/widget/control/SUITouchDelegate;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITouchDelegate;->setUserOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    :cond_b
    return-void
.end method
