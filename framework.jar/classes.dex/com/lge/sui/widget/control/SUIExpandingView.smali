.class public Lcom/lge/sui/widget/control/SUIExpandingView;
.super Landroid/widget/FrameLayout;
.source "SUIExpandingView.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButton:Lcom/lge/sui/widget/control/SUIImageButton;

.field private mContents:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mExpandable:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIExpandingView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIExpandingView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIExpandingView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContext:Landroid/content/Context;

    .line 90
    iget-object v11, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 92
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v11, 0x3030009

    const/4 v12, 0x1

    invoke-virtual {v2, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    const v11, 0x30a0030

    invoke-virtual {p0, v11}, Lcom/lge/sui/widget/control/SUIExpandingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/control/SUIImageButton;

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    .line 95
    const v11, 0x30a002f

    invoke-virtual {p0, v11}, Lcom/lge/sui/widget/control/SUIExpandingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContents:Landroid/widget/TextView;

    .line 97
    iget-object v11, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    const v12, 0x3020046

    invoke-virtual {v11, v12}, Lcom/lge/sui/widget/control/SUIImageButton;->setImageResource(I)V

    .line 98
    iget-object v11, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v11, p0}, Lcom/lge/sui/widget/control/SUIImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    if-eqz p2, :cond_7f

    .line 101
    sget-object v11, Lcom/lge/sui/widget/R$styleable;->ExpandingView:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, ar:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 105
    .local v4, pressedLeftSlop:I
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 107
    .local v6, pressedTopSlop:I
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 109
    .local v5, pressedRightSlop:I
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 112
    .local v3, pressedBottomSlop:I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 114
    .local v1, defaultSlop:I
    const/4 v11, 0x4

    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 116
    .local v8, releasedLeftSlop:I
    const/4 v11, 0x5

    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 118
    .local v10, releasedTopSlop:I
    const/4 v11, 0x6

    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 120
    .local v9, releasedRightSlop:I
    const/4 v11, 0x7

    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 123
    .local v7, releasedBottomSlop:I
    iget-object v11, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v11, v4, v6, v5, v3}, Lcom/lge/sui/widget/control/SUIImageButton;->setPressedSlop(IIII)V

    .line 126
    iget-object v11, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v11, v8, v10, v9, v7}, Lcom/lge/sui/widget/control/SUIImageButton;->setReleasedSlop(IIII)V

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    .end local v0       #ar:Landroid/content/res/TypedArray;,
    .end local v1       #defaultSlop:I,
    .end local v3       #pressedBottomSlop:I,
    .end local v4       #pressedLeftSlop:I,
    .end local v5       #pressedRightSlop:I,
    .end local v6       #pressedTopSlop:I,
    .end local v7       #releasedBottomSlop:I,
    .end local v8       #releasedLeftSlop:I,
    .end local v9       #releasedRightSlop:I,
    .end local v10       #releasedTopSlop:I,
    :cond_7f
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mExpandable:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIExpandingView;->setExpandable(Z)V

    .line 181
    return-void

    .line 180
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 189
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 193
    .local v2, y:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v0, hitRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v3, v0}, Lcom/lge/sui/widget/control/SUIImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 199
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v3}, Lcom/lge/sui/widget/control/SUIImageButton;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v4}, Lcom/lge/sui/widget/control/SUIImageButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v4}, Lcom/lge/sui/widget/control/SUIImageButton;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v5}, Lcom/lge/sui/widget/control/SUIImageButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 202
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public setContentView(I)V
    .registers 3
    .parameter "content"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContents:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    return-void
.end method

.method public setContentView(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContents:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setExpandable(Z)V
    .registers 6
    .parameter "isExpandable"

    .prologue
    const/16 v3, 0xa

    .line 146
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mExpandable:Z

    .line 148
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContents:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 149
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContents:Landroid/widget/TextView;

    if-eqz p1, :cond_25

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 150
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mContents:Landroid/widget/TextView;

    const/16 v1, 0x28

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIExpandingView;->mButton:Lcom/lge/sui/widget/control/SUIImageButton;

    if-eqz p1, :cond_27

    const v1, 0x3020046

    :goto_21
    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIImageButton;->setImageResource(I)V

    .line 154
    return-void

    .line 149
    :cond_25
    const/4 v1, 0x0

    goto :goto_f

    .line 152
    :cond_27
    const v1, 0x3020047

    goto :goto_21
.end method
