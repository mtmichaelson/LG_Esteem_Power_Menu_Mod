.class public Lcom/lge/sui/widget/control/QuickActionWindow;
.super Landroid/widget/PopupWindow;
.source "QuickActionWindow.java"


# interfaces
.implements Landroid/view/KeyEvent$Callback;


# instance fields
.field contentView:Landroid/view/View;

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPView:Landroid/view/View;

.field private mScreenWidth:I

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private final mWindowManager:Landroid/view/WindowManager;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 73
    invoke-static {p2}, Lcom/lge/sui/widget/control/QuickActionWindow;->buildRectFromView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/QuickActionWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 10
    .parameter "context"
    .parameter "target"
    .parameter "rect"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object p2, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mPView:Landroid/view/View;

    .line 87
    iput-object p3, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mAnchor:Landroid/graphics/Rect;

    .line 89
    iput-object p1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    .line 90
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x303002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->contentView:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->contentView:Landroid/view/View;

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mScreenWidth:I

    .line 98
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v5}, Lcom/lge/sui/widget/control/QuickActionWindow;->setWindowLayoutMode(II)V

    .line 100
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x3070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowHoriz:I

    .line 102
    const v1, 0x3070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowVert:I

    .line 103
    const v1, 0x3070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowTouch:I

    .line 105
    iget v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mScreenWidth:I

    iget v2, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowHoriz:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowHoriz:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/QuickActionWindow;->setWidth(I)V

    .line 106
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/control/QuickActionWindow;->setHeight(I)V

    .line 108
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/QuickActionWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->contentView:Landroid/view/View;

    const v2, 0x30a0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->contentView:Landroid/view/View;

    const v2, 0x30a0044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 113
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->contentView:Landroid/view/View;

    const v2, 0x30a0041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrack:Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/QuickActionWindow;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/QuickActionWindow;->setTouchable(Z)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/QuickActionWindow;->setOutsideTouchable(Z)V

    .line 120
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    const v2, 0x3050005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    .line 121
    iget-object v1, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lge/sui/widget/control/QuickActionWindow$1;

    invoke-direct {v2, p0}, Lcom/lge/sui/widget/control/QuickActionWindow$1;-><init>(Lcom/lge/sui/widget/control/QuickActionWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    return-void
.end method

.method private static buildRectFromIntent(Landroid/content/Intent;)Landroid/graphics/Rect;
    .registers 2
    .parameter "intent"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static buildRectFromView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .parameter "target"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 137
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 139
    .local v1, xy:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    .local v0, rect:Landroid/graphics/Rect;
    return-object v0
.end method

.method private showArrow(II)V
    .registers 9
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v5, 0x30a0043

    .line 186
    if-ne p1, v5, :cond_33

    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mArrowUp:Landroid/widget/ImageView;

    move-object v3, v4

    .line 187
    .local v3, showArrow:Landroid/view/View;
    :goto_8
    if-ne p1, v5, :cond_37

    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mArrowDown:Landroid/widget/ImageView;

    move-object v1, v4

    .line 190
    .local v1, hideArrow:Landroid/view/View;
    :goto_d
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x30200af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 193
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 196
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 198
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    return-void

    .line 186
    .end local v0       #arrowWidth:I,
    .end local v1       #hideArrow:Landroid/view/View;,
    .end local v2       #param:Landroid/view/ViewGroup$MarginLayoutParams;,
    .end local v3       #showArrow:Landroid/view/View;,
    :cond_33
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mArrowDown:Landroid/widget/ImageView;

    move-object v3, v4

    goto :goto_8

    .line 187
    .restart local v3       #showArrow:Landroid/view/View;,
    :cond_37
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mArrowUp:Landroid/widget/ImageView;

    move-object v1, v4

    goto :goto_d
.end method


# virtual methods
.method public addItem(ILandroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "drawable"
    .parameter "l"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/lge/sui/widget/control/QuickActionWindow;->addItem(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method public addItem(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .registers 9
    .parameter "drawable"
    .parameter "l"

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v2, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x303002d

    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/control/QuickActionItem;

    .line 163
    .local v1, view:Lcom/lge/sui/widget/control/QuickActionItem;
    invoke-virtual {v1, v5}, Lcom/lge/sui/widget/control/QuickActionItem;->setChecked(Z)V

    .line 164
    invoke-virtual {v1, p1}, Lcom/lge/sui/widget/control/QuickActionItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {v1, p2}, Lcom/lge/sui/widget/control/QuickActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 168
    .local v0, index:I
    iget-object v2, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 248
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 249
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/QuickActionWindow;->dismiss()V

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public show()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/QuickActionWindow;->show(I)V

    .line 244
    return-void
.end method

.method public show(I)V
    .registers 9
    .parameter "requestedX"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 207
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mPView:Landroid/view/View;

    invoke-super {p0, v4, v5, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 210
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/QuickActionWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 212
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/QuickActionWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 214
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/QuickActionWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 216
    .local v0, blockHeight:I
    iget v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowHoriz:I

    neg-int v2, v4

    .line 218
    .local v2, x:I
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mAnchor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_46

    .line 221
    const v4, 0x30a0044

    invoke-direct {p0, v4, p1}, Lcom/lge/sui/widget/control/QuickActionWindow;->showArrow(II)V

    .line 222
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mAnchor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowVert:I

    add-int v3, v4, v5

    .line 223
    .local v3, y:I
    const v1, 0x309001f

    .line 233
    .local v1, windowAnimations:I
    :goto_38
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/QuickActionWindow;->setAnimationStyle(I)V

    .line 234
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    invoke-virtual {p0, v2, v3, v6, v6}, Lcom/lge/sui/widget/control/QuickActionWindow;->update(IIII)V

    .line 237
    .end local v0       #blockHeight:I,
    .end local v1       #windowAnimations:I,
    .end local v2       #x:I,
    .end local v3       #y:I,
    :cond_45
    return-void

    .line 228
    .restart local v0       #blockHeight:I,
    .restart local v2       #x:I,
    :cond_46
    const v4, 0x30a0043

    invoke-direct {p0, v4, p1}, Lcom/lge/sui/widget/control/QuickActionWindow;->showArrow(II)V

    .line 229
    iget-object v4, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mAnchor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/lge/sui/widget/control/QuickActionWindow;->mShadowVert:I

    sub-int v3, v4, v5

    .line 230
    .restart local v3       #y:I,
    const v1, 0x3090020

    .restart local v1       #windowAnimations:I,
    goto :goto_38
.end method
