.class Lcom/lge/sui/widget/list/SUISectionScroller;
.super Landroid/widget/LinearLayout;
.source "SUISectionScroller.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;
    }
.end annotation


# static fields
.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_EXIT:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1



# instance fields
.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/lge/sui/widget/list/SUISectionScrollerHelper;

.field private mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollerDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

.field private mScrollerH:I

.field private mScrollerW:I

.field private mScrollerY:I

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mValidSections:[Ljava/lang/Object;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIIndexedListView;)V
    .registers 6
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/SUISectionScroller;->setOrientation(I)V

    .line 94
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/SUISectionScroller;->setGravity(I)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUISectionScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    .line 98
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUISectionScroller;->init(Landroid/content/Context;)V

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/list/SUISectionScroller;)Lcom/lge/sui/widget/list/SUIIndexedListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    return-object v0
.end method

.method private cancelFling()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 404
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 406
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0, v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 407
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 408
    return-void
.end method

.method private fillTextView(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 157
    .local v4, resources:Landroid/content/res/Resources;
    const/4 v1, 0x1

    .line 158
    .local v1, gap:I
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 159
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 160
    const/4 v1, 0x2

    .line 163
    :cond_f
    const v7, 0x3070003

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 165
    .local v5, textSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v3, v7, :cond_5c

    .line 166
    rem-int v7, v3, v1

    if-nez v7, :cond_59

    .line 167
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v6, textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mSections:[Ljava/lang/Object;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 172
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHelper:Lcom/lge/sui/widget/list/SUISectionScrollerHelper;

    invoke-interface {v7, v3}, Lcom/lge/sui/widget/list/SUISectionScrollerHelper;->getGroupPosition(I)I

    move-result v2

    .line 175
    .local v2, groupPosition:I
    const/4 v7, -0x1

    if-le v2, v7, :cond_56

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 177
    new-instance v7, Lcom/lge/sui/widget/list/SUISectionScroller$1;

    invoke-direct {v7, p0}, Lcom/lge/sui/widget/list/SUISectionScroller$1;-><init>(Lcom/lge/sui/widget/list/SUISectionScroller;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_56
    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/list/SUISectionScroller;->addView(Landroid/view/View;)V

    .line 165
    .end local v2       #groupPosition:I,
    .end local v6       #textView:Landroid/widget/TextView;,
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 190
    :cond_5c
    return-void
.end method

.method private getSectionsFromIndexer()V
    .registers 6

    .prologue
    .line 103
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v2}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getIndexedListAdapter()Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    move-result-object v0

    .line 104
    .local v0, adapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;
    invoke-interface {v0}, Lcom/lge/sui/widget/list/SUIIndexedListAdapter;->getIndexer()Lcom/lge/sui/widget/list/SUISectionIndexer;

    move-result-object v1

    .line 105
    .local v1, indexer:Lcom/lge/sui/widget/list/SUISectionIndexer;
    invoke-interface {v1}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mValidSections:[Ljava/lang/Object;

    .line 106
    instance-of v2, v1, Lcom/lge/sui/widget/list/SUISectionScrollerHelper;

    if-eqz v2, :cond_21

    .line 107
    check-cast v1, Lcom/lge/sui/widget/list/SUISectionScrollerHelper;

    .end local v1       #indexer:Lcom/lge/sui/widget/list/SUISectionIndexer;,
    iput-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHelper:Lcom/lge/sui/widget/list/SUISectionScrollerHelper;

    .line 108
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHelper:Lcom/lge/sui/widget/list/SUISectionScrollerHelper;

    invoke-interface {v2}, Lcom/lge/sui/widget/list/SUISectionScrollerHelper;->getSectionTitles()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mSections:[Ljava/lang/Object;

    .line 112
    :goto_20
    return-void

    .line 110
    .restart local v1       #indexer:Lcom/lge/sui/widget/list/SUISectionIndexer;,
    :cond_21
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " "

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mSections:[Ljava/lang/Object;

    goto :goto_20
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    .local v0, resources:Landroid/content/res/Resources;
    const v4, 0x302008f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/lge/sui/widget/list/SUISectionScroller;->setScrollerDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 133
    const v4, 0x302000d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    const/high16 v4, 0x307

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlaySize:I

    .line 137
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 138
    new-instance v4, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    invoke-direct {v4, p0}, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;-><init>(Lcom/lge/sui/widget/list/SUISectionScroller;)V

    iput-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    .line 139
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlaySize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v6, [I

    const v6, 0x1010036

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 145
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 146
    .local v2, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 147
    .local v3, textColorNormal:I
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getSectionsFromIndexer()V

    .line 152
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUISectionScroller;->fillTextView(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method private isPointInside(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_24

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private resetScroller()V
    .registers 3

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    .line 116
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    return-void
.end method

.method private setScrollerDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 120
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    .line 125
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v7, 0x3

    .line 226
    iget v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    if-nez v5, :cond_6

    .line 260
    :cond_5
    :goto_5
    return-void

    .line 231
    :cond_6
    const/4 v0, -0x1

    .line 232
    .local v0, alpha:I
    iget v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    if-ne v5, v7, :cond_1c

    .line 233
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v5}, Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;->getAlpha()I

    move-result v0

    .line 234
    const/16 v5, 0x68

    if-ge v0, v5, :cond_1c

    .line 235
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    :cond_1c
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    iget v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_55

    iget-boolean v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mDrawOverlay:Z

    if-eqz v5, :cond_55

    .line 243
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    .line 246
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 247
    .local v1, descent:F
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 248
    .local v3, rectF:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mSectionText:Ljava/lang/String;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v8, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlaySize:I

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 251
    .end local v1       #descent:F,
    .end local v2       #paint:Landroid/graphics/Paint;,
    .end local v3       #rectF:Landroid/graphics/RectF;,
    :cond_55
    iget v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    if-ne v5, v7, :cond_5

    .line 252
    if-nez v0, :cond_60

    .line 253
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/SUISectionScroller;->setState(I)V

    goto :goto_5

    .line 255
    :cond_60
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v5}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v4

    .line 256
    .local v4, viewWidth:I
    iget-object v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget v6, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v8, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v4, v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate(IIII)V

    goto :goto_5
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lge/sui/widget/list/SUISectionScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 290
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/SUISectionScroller;->setState(I)V

    move v0, v2

    .line 294
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 269
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    :cond_10
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 272
    .local v0, pos:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlaySize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 273
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 274
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 275
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 276
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_50

    .line 277
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    :cond_50
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, action:I
    if-nez v0, :cond_83

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 307
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 308
    .local v8, y:I
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-direct {p0, v9, v10}, Lcom/lge/sui/widget/list/SUISectionScroller;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_151

    .line 309
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/lge/sui/widget/list/SUISectionScroller;->setState(I)V

    .line 310
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getSectionsFromIndexer()V

    .line 311
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    if-eqz v9, :cond_29

    .line 312
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/lge/sui/widget/list/SUIIndexedListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 315
    :cond_29
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->cancelFling()V

    .line 317
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 318
    .local v3, frame:Landroid/graphics/Rect;
    if-nez v3, :cond_39

    .line 319
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 320
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 322
    :cond_39
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getLeft()I

    move-result v9

    sub-int/2addr v7, v9

    .line 323
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 324
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getChildCount()I

    move-result v2

    .line 325
    .local v2, count:I
    const/4 v9, 0x1

    sub-int v5, v2, v9

    .local v5, i:I
    :goto_4a
    if-ltz v5, :cond_151

    .line 326
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/SUISectionScroller;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 330
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v6

    .line 331
    .local v6, viewWidth:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    .line 332
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    sub-int v10, v6, v10

    iget v11, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v12, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v13, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    add-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 337
    const/4 v9, 0x1

    .line 399
    .end local v1       #child:Landroid/view/View;,
    .end local v2       #count:I,
    .end local v3       #frame:Landroid/graphics/Rect;,
    .end local v5       #i:I,
    .end local v6       #viewWidth:I,
    .end local v7       #x:I,
    .end local v8       #y:I,
    .end local p1       
    :goto_7f
    return v9

    .line 325
    .restart local v1       #child:Landroid/view/View;,
    .restart local v2       #count:I,
    .restart local v3       #frame:Landroid/graphics/Rect;,
    .restart local v5       #i:I,
    .restart local v7       #x:I,
    .restart local v8       #y:I,
    .restart local p1       
    :cond_80
    add-int/lit8 v5, v5, -0x1

    goto :goto_4a

    .line 341
    .end local v1       #child:Landroid/view/View;,
    .end local v2       #count:I,
    .end local v3       #frame:Landroid/graphics/Rect;,
    .end local v5       #i:I,
    .end local v7       #x:I,
    .end local v8       #y:I,
    :cond_83
    const/4 v9, 0x1

    if-ne v0, v9, :cond_b1

    .line 342
    iget v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_151

    .line 343
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    if-eqz v9, :cond_95

    .line 347
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lge/sui/widget/list/SUIIndexedListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 349
    :cond_95
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/lge/sui/widget/list/SUISectionScroller;->setState(I)V

    .line 350
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHandler:Landroid/os/Handler;

    .line 351
    .local v4, handler:Landroid/os/Handler;
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mDrawOverlay:Z

    .line 354
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    .line 355
    const/4 v9, 0x1

    goto :goto_7f

    .line 357
    .end local v4       #handler:Landroid/os/Handler;,
    :cond_b1
    const/4 v9, 0x2

    if-ne v0, v9, :cond_151

    .line 358
    iget v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_151

    .line 359
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 360
    .restart local v3       #frame:Landroid/graphics/Rect;,
    if-nez v3, :cond_c6

    .line 361
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 362
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 365
    :cond_c6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getLeft()I

    move-result v10

    sub-int v7, v9, v10

    .line 366
    .restart local v7       #x:I,
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getTop()I

    move-result v10

    sub-int v8, v9, v10

    .line 367
    .restart local v8       #y:I,
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->getChildCount()I

    move-result v2

    .line 368
    .restart local v2       #count:I,
    const/4 v9, 0x1

    sub-int v5, v2, v9

    .restart local v5       #i:I,
    :goto_e3
    if-ltz v5, :cond_147

    .line 369
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/SUISectionScroller;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 370
    .restart local v1       #child:Landroid/view/View;,
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 371
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_14e

    .line 372
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v6

    .line 373
    .restart local v6       #viewWidth:I,
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    .line 374
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    sub-int v10, v6, v10

    iget v11, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v12, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v13, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    add-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_14a

    .line 382
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mValidSections:[Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object p1, v9, v10

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mSectionText:Ljava/lang/String;

    .line 383
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mDrawOverlay:Z

    .line 389
    :goto_132
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget v10, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    sub-int v10, v6, v10

    iget-object v11, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v11}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v12}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getBottom()I

    move-result v12

    invoke-virtual {v9, v10, v11, v6, v12}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate(IIII)V

    .line 395
    .end local v1       #child:Landroid/view/View;,
    .end local v6       #viewWidth:I,
    :cond_147
    const/4 v9, 0x1

    goto/16 :goto_7f

    .line 385
    .restart local v1       #child:Landroid/view/View;,
    .restart local v6       #viewWidth:I,
    .restart local p1       
    :cond_14a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mDrawOverlay:Z

    goto :goto_132

    .line 368
    .end local v6       #viewWidth:I,
    :cond_14e
    add-int/lit8 v5, v5, -0x1

    goto :goto_e3

    .line 399
    .end local v1       #child:Landroid/view/View;,
    .end local v2       #count:I,
    .end local v3       #frame:Landroid/graphics/Rect;,
    .end local v5       #i:I,
    .end local v7       #x:I,
    .end local v8       #y:I,
    :cond_151
    const/4 v9, 0x0

    goto/16 :goto_7f
.end method

.method public setState(I)V
    .registers 8
    .parameter "state"

    .prologue
    .line 193
    const-string v1, "SUISectionScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    packed-switch p1, :pswitch_data_52

    .line 213
    :goto_1b
    iput p1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    .line 214
    return-void

    .line 196
    :pswitch_1e
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    goto :goto_1b

    .line 200
    :pswitch_2b
    iget v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_33

    .line 201
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUISectionScroller;->resetScroller()V

    .line 205
    :cond_33
    :pswitch_33
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 208
    :pswitch_3b
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v0

    .line 209
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget v2, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v4, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerY:I

    iget v5, p0, Lcom/lge/sui/widget/list/SUISectionScroller;->mScrollerH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate(IIII)V

    goto :goto_1b

    .line 194
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
    .end packed-switch
.end method
