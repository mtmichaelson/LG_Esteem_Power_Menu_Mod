.class public Lcom/lge/internal/widget/Andy_SlidingPanel;
.super Landroid/widget/LinearLayout;
.source "Andy_SlidingPanel.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;,
        Lcom/lge/internal/widget/Andy_SlidingPanel$State;,
        Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Andy_SlidingPanel"

.field public static final TOP:I



# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field private isHandleDown:Z

.field private mBringToFront:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentId:I

.field private mContentWidth:I

.field private mDifHandleHeight:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private mWeight:F

.field private panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v5, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->isHandleDown:Z

    .line 340
    new-instance v2, Lcom/lge/internal/widget/Andy_SlidingPanel$1;

    invoke-direct {v2, p0}, Lcom/lge/internal/widget/Andy_SlidingPanel$1;-><init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->touchListener:Landroid/view/View$OnTouchListener;

    .line 416
    new-instance v2, Lcom/lge/internal/widget/Andy_SlidingPanel$2;

    invoke-direct {v2, p0}, Lcom/lge/internal/widget/Andy_SlidingPanel$2;-><init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->clickListener:Landroid/view/View$OnClickListener;

    .line 456
    new-instance v2, Lcom/lge/internal/widget/Andy_SlidingPanel$3;

    invoke-direct {v2, p0}, Lcom/lge/internal/widget/Andy_SlidingPanel$3;-><init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->startAnimation:Ljava/lang/Runnable;

    .line 99
    sget-object v2, Lcom/lge/internal/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x2ee

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mDuration:I

    .line 105
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    .line 109
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mLinearFlying:Z

    .line 114
    iput-boolean v5, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mLinearFlying:Z

    .line 116
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    .line 119
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4f

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6d

    .line 120
    :cond_4f
    iput v4, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    .line 121
    const-string v2, "Andy_SlidingPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": weight must be > 0 and <= 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_6d
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mDifHandleHeight:I

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandleId:I

    .line 132
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandleId:I

    if-nez v2, :cond_b2

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1       #e:Ljava/lang/RuntimeException;,
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v1       #e:Ljava/lang/RuntimeException;,
    :cond_b2
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentId:I

    .line 137
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentId:I

    if-nez v2, :cond_d9

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1       #e:Ljava/lang/RuntimeException;,
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v1       #e:Ljava/lang/RuntimeException;,
    :cond_d9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    if-eqz v1, :cond_df

    .line 144
    throw v1

    .line 146
    :cond_df
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    if-eqz v2, :cond_e7

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    if-ne v2, v6, :cond_10c

    :cond_e7
    move v2, v6

    :goto_e8
    iput v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    .line 147
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setOrientation(I)V

    .line 148
    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 149
    new-instance v2, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;-><init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mGestureListener:Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;

    .line 150
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mGestureListener:Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 151
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 154
    invoke-virtual {p0, v5}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setBaselineAligned(Z)V

    .line 155
    return-void

    :cond_10c
    move v2, v5

    .line 146
    goto :goto_e8
.end method

.method static synthetic access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->isHandleDown:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->isHandleDown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->postProcess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/internal/widget/Andy_SlidingPanel;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mVelocity:F

    return v0
.end method

.method static synthetic access$1302(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mVelocity:F

    return p1
.end method

.method static synthetic access$1400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mDifHandleHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mDuration:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lge/internal/widget/Andy_SlidingPanel;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/animation/Interpolator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mBringToFront:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/internal/widget/Andy_SlidingPanel;FII)F
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/internal/widget/Andy_SlidingPanel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/internal/widget/Andy_SlidingPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mGestureListener:Lcom/lge/internal/widget/Andy_SlidingPanel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/GestureDetector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private ensureRange(FII)F
    .registers 5
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 335
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 336
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 337
    return p1
.end method

.method private postProcess()V
    .registers 3

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 595
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    if-eqz v0, :cond_1c

    .line 601
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-eqz v0, :cond_2d

    .line 602
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;->onPanelClosed(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    .line 607
    :cond_1c
    :goto_1c
    return-void

    .line 596
    :cond_1d
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 597
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 604
    :cond_2d
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;->onPanelOpened(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    goto :goto_1c
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ABOUT_TO_ANIMATE:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v1, v2, :cond_25

    iget-boolean v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-nez v1, :cond_25

    .line 318
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    if-ne v1, v4, :cond_3c

    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentHeight:I

    move v0, v1

    .line 319
    .local v0, delta:I
    :goto_13
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    if-nez v1, :cond_1d

    .line 320
    :cond_1c
    neg-int v0, v0

    .line 322
    :cond_1d
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    if-ne v1, v4, :cond_40

    .line 323
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 328
    .end local v0       #delta:I,
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->TRACKING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-eq v1, v2, :cond_31

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    sget-object v2, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v1, v2, :cond_38

    .line 329
    :cond_31
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mTrackX:F

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 331
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 332
    return-void

    .line 318
    :cond_3c
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentWidth:I

    move v0, v1

    goto :goto_13

    .line 325
    .restart local v0       #delta:I,
    :cond_40
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_25
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-eq v0, v1, :cond_a

    move v0, v2

    .line 453
    :goto_9
    return v0

    .line 446
    :cond_a
    sget-object v0, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ABOUT_TO_ANIMATE:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 447
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    move v0, v3

    :goto_17
    iput-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    .line 448
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-nez v0, :cond_22

    .line 451
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    move v0, v3

    .line 453
    goto :goto_9

    :cond_24
    move v0, v2

    .line 447
    goto :goto_17
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onAnimationEnd()V
    .registers 3

    .prologue
    .line 574
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 575
    sget-object v0, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 577
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-eqz v0, :cond_12

    .line 578
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_12
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->postProcess()V

    .line 581
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .prologue
    .line 585
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationStart()V

    .line 586
    sget-object v0, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ANIMATING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 587
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    if-eqz v0, :cond_12

    .line 588
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    iget-boolean v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    invoke-interface {v0, p0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;->onHandlerClick(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)V

    .line 590
    :cond_12
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 281
    invoke-virtual {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 282
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mBringToFront:Z

    .line 285
    :cond_10
    return-void
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v7, "Your Andy_SlidingPanel must have a child View whose id attribute is \'R.id."

    const-string v6, "\'"

    .line 234
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 235
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    .line 236
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    if-nez v2, :cond_3e

    .line 237
    invoke-virtual {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Andy_SlidingPanel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v0       #name:Ljava/lang/String;,
    :cond_3e
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    .line 245
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    if-nez v2, :cond_81

    .line 246
    invoke-virtual {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0       #name:Ljava/lang/String;,
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Andy_SlidingPanel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v0       #name:Ljava/lang/String;,
    :cond_81
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->removeView(Landroid/view/View;)V

    .line 253
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->removeView(Landroid/view/View;)V

    .line 254
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    if-eqz v2, :cond_94

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ce

    .line 255
    :cond_94
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->addView(Landroid/view/View;)V

    .line 256
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->addView(Landroid/view/View;)V

    .line 262
    :goto_9e
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a9

    .line 263
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_a9
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 266
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_cd

    .line 268
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 269
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    if-ne v2, v5, :cond_d9

    .line 270
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    :goto_c8
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .end local v1       #params:Landroid/view/ViewGroup$LayoutParams;,
    :cond_cd
    return-void

    .line 258
    :cond_ce
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->addView(Landroid/view/View;)V

    .line 259
    iget-object v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->addView(Landroid/view/View;)V

    goto :goto_9e

    .line 272
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;,
    :cond_d9
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_c8
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 306
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 307
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentWidth:I

    .line 308
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContentHeight:I

    .line 309
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 289
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2b

    .line 290
    invoke-virtual {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 291
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_2b

    .line 292
    iget v1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 301
    .end local v0       #parent:Landroid/view/View;,
    :cond_2b
    :goto_2b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 302
    return-void

    .line 296
    .restart local v0       #parent:Landroid/view/View;,
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2b
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .parameter "i"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    return-void
.end method

.method public setOnPanelListener(Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;)V
    .registers 2
    .parameter "onPanelListener"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->panelListener:Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;

    .line 164
    return-void
.end method

.method public setOpen(ZZ)Z
    .registers 7
    .parameter "open"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    sget-object v1, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v0, v1, :cond_3b

    invoke-virtual {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isOpen()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_3b

    .line 204
    if-nez p1, :cond_2a

    move v0, v3

    :goto_12
    iput-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    .line 205
    if-eqz p2, :cond_2c

    .line 206
    sget-object v0, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ABOUT_TO_ANIMATE:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mState:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 207
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mIsShrinking:Z

    if-nez v0, :cond_23

    .line 211
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_23
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->post(Ljava/lang/Runnable;)Z

    :goto_28
    move v0, v3

    .line 220
    :goto_29
    return v0

    :cond_2a
    move v0, v2

    .line 204
    goto :goto_12

    .line 215
    :cond_2c
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_SlidingPanel;->mContent:Landroid/view/View;

    if-eqz p1, :cond_38

    move v1, v2

    :goto_31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->postProcess()V

    goto :goto_28

    .line 215
    :cond_38
    const/16 v1, 0x8

    goto :goto_31

    :cond_3b
    move v0, v2

    .line 220
    goto :goto_29
.end method
