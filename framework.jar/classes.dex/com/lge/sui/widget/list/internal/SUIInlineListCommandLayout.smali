.class public Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;
.super Landroid/widget/RelativeLayout;
.source "SUIInlineListCommandLayout.java"



# instance fields
.field private mCmdButton:Landroid/view/View;

.field private mHitRect:Landroid/graphics/Rect;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mHitRect:Landroid/graphics/Rect;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mHitRect:Landroid/graphics/Rect;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mHitRect:Landroid/graphics/Rect;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x20

    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    const v1, 0x30a003b

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    if-eqz v1, :cond_24

    .line 56
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    instance-of v1, v1, Lcom/lge/sui/widget/control/SUIButton;

    if-eqz v1, :cond_25

    .line 57
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    check-cast v0, Lcom/lge/sui/widget/control/SUIButton;

    .line 58
    .local v0, btn:Lcom/lge/sui/widget/control/SUIButton;
    invoke-virtual {v0, v3, v2, v3, v2}, Lcom/lge/sui/widget/control/SUIButton;->setPressedSlop(IIII)V

    .line 59
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/lge/sui/widget/control/SUIButton;->setReleasedSlop(IIII)V

    .line 66
    .end local v0       #btn:Lcom/lge/sui/widget/control/SUIButton;,
    :cond_24
    :goto_24
    return-void

    .line 60
    :cond_25
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    instance-of v1, v1, Lcom/lge/sui/widget/control/SUIImageButton;

    if-eqz v1, :cond_24

    .line 61
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    check-cast v0, Lcom/lge/sui/widget/control/SUIImageButton;

    .line 62
    .local v0, btn:Lcom/lge/sui/widget/control/SUIImageButton;
    invoke-virtual {v0, v3, v2, v3, v2}, Lcom/lge/sui/widget/control/SUIImageButton;->setPressedSlop(IIII)V

    .line 63
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/lge/sui/widget/control/SUIImageButton;->setReleasedSlop(IIII)V

    goto :goto_24
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 74
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 77
    .local v4, y:I
    iget-object v2, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mHitRect:Landroid/graphics/Rect;

    .line 78
    .local v2, hitRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUIInlineListCommandLayout;->mCmdButton:Landroid/view/View;

    .line 80
    .local v1, cmdButton:Landroid/view/View;
    instance-of v5, v1, Lcom/lge/sui/widget/control/SUIButton;

    if-eqz v5, :cond_3f

    .line 81
    move-object v0, v1

    check-cast v0, Lcom/lge/sui/widget/control/SUIButton;

    move-object v5, v0

    invoke-virtual {v5, v2}, Lcom/lge/sui/widget/control/SUIButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 89
    :goto_19
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 95
    :cond_3a
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_3e
    return v5

    .line 82
    :cond_3f
    instance-of v5, v1, Lcom/lge/sui/widget/control/SUIImageButton;

    if-eqz v5, :cond_4b

    .line 83
    move-object v0, v1

    check-cast v0, Lcom/lge/sui/widget/control/SUIImageButton;

    move-object v5, v0

    invoke-virtual {v5, v2}, Lcom/lge/sui/widget/control/SUIImageButton;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_19

    .line 85
    :cond_4b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_3e
.end method
