.class public Lcom/lge/sui/widget/list/internal/SUISectionScroller;
.super Landroid/widget/LinearLayout;
.source "SUISectionScroller.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;
    }
.end annotation


# static fields
.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_EXIT:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TRADITIONAL_CHINESE_SCROLL_INDEX:[Ljava/lang/String;



# instance fields
.field private mDragStartX:I

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;

.field private mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollerDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

.field private mScrollerH:I

.field private mScrollerW:I

.field private mScrollerY:I

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mTextColor:I

.field private mTouchFrame:Landroid/graphics/Rect;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "11"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->TRADITIONAL_CHINESE_SCROLL_INDEX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIIndexedListView;)V
    .registers 6
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setOrientation(I)V

    .line 110
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setGravity(I)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iput-object p2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    .line 114
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->init(Landroid/content/Context;)V

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/list/internal/SUISectionScroller;)Lcom/lge/sui/widget/list/SUIIndexedListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    return-object v0
.end method

.method private cancelFling()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 437
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 438
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0, v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 439
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 440
    return-void
.end method

.method private fillTextView(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 173
    .local v7, resources:Landroid/content/res/Resources;
    const/4 v1, 0x1

    .line 174
    .local v1, gap:I
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 175
    .local v0, config:Landroid/content/res/Configuration;
    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_f

    .line 176
    const/4 v1, 0x2

    .line 179
    :cond_f
    const v11, 0x3070003

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 182
    .local v9, textSize:I
    const/4 v4, 0x0

    .line 183
    .local v4, indexArray:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 185
    .local v5, length:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, locale:Ljava/lang/String;
    const-string/jumbo v11, "zh_TW"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    const-string/jumbo v11, "zh_HK"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 188
    :cond_32
    sget-object v4, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->TRADITIONAL_CHINESE_SCROLL_INDEX:[Ljava/lang/String;

    .line 189
    sget-object v11, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->TRADITIONAL_CHINESE_SCROLL_INDEX:[Ljava/lang/String;

    array-length v5, v11

    .line 199
    :cond_37
    const/4 v3, 0x0

    .line 200
    .local v3, index:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_39
    if-ge v2, v5, :cond_94

    .line 201
    rem-int v11, v2, v1

    if-nez v11, :cond_74

    .line 202
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 204
    .local v10, textView:Landroid/widget/TextView;
    aget-object v3, v4, v2

    .line 205
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    int-to-float v11, v9

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    iget v11, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTextColor:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 209
    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    iget-object v11, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mHelper:Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;

    invoke-interface {v11, v3}, Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;->getGroupPosition(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 211
    new-instance v11, Lcom/lge/sui/widget/list/internal/SUISectionScroller$1;

    invoke-direct {v11, p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller$1;-><init>(Lcom/lge/sui/widget/list/internal/SUISectionScroller;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0, v10}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->addView(Landroid/view/View;)V

    .line 200
    .end local v10       #textView:Landroid/widget/TextView;,
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 191
    .end local v2       #i:I,
    .end local v3       #index:Ljava/lang/String;,
    :cond_77
    const v11, 0x308001a

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, sections:Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 193
    new-array v4, v5, [Ljava/lang/String;

    .line 194
    const/4 v2, 0x0

    .restart local v2       #i:I,
    :goto_85
    if-ge v2, v5, :cond_37

    .line 195
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 223
    .end local v8       #sections:Ljava/lang/CharSequence;,
    .restart local v3       #index:Ljava/lang/String;,
    :cond_94
    return-void
.end method

.method private getSectionsFromIndexer()V
    .registers 7

    .prologue
    .line 119
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v3}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getIndexedListAdapter()Lcom/lge/sui/widget/list/SUIIndexedListAdapter;

    move-result-object v1

    .line 120
    .local v1, adapter:Lcom/lge/sui/widget/list/SUIIndexedListAdapter;
    invoke-interface {v1}, Lcom/lge/sui/widget/list/SUIIndexedListAdapter;->getIndexer()Lcom/lge/sui/widget/list/SUISectionIndexer;

    move-result-object v2

    .line 122
    .local v2, indexer:Lcom/lge/sui/widget/list/SUISectionIndexer;
    instance-of v3, v2, Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;

    if-eqz v3, :cond_1b

    .line 123
    move-object v0, v2

    check-cast v0, Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;

    move-object v3, v0

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mHelper:Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;

    .line 124
    invoke-interface {v2}, Lcom/lge/sui/widget/list/SUISectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mSections:[Ljava/lang/Object;

    .line 128
    :goto_1a
    return-void

    .line 126
    :cond_1b
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, " "

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mSections:[Ljava/lang/Object;

    goto :goto_1a
.end method

.method private init(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, resources:Landroid/content/res/Resources;
    const v3, 0x302004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setScrollerDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 149
    const v3, 0x302004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    const/high16 v3, 0x307

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlaySize:I

    .line 153
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 154
    new-instance v3, Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    invoke-direct {v3, p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;-><init>(Lcom/lge/sui/widget/list/internal/SUISectionScroller;)V

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    .line 155
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    .line 156
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 158
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlaySize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v5, [I

    const v5, 0x1010036

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 161
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 162
    .local v2, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTextColor:I

    .line 163
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getSectionsFromIndexer()V

    .line 168
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->fillTextView(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method private isPointInside(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_24

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getBottom()I

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
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    .line 132
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 133
    return-void
.end method

.method private setScrollerDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 136
    iput-object p2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    .line 141
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v7, 0x3

    .line 259
    iget v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    if-nez v5, :cond_6

    .line 293
    :cond_5
    :goto_5
    return-void

    .line 264
    :cond_6
    const/4 v0, -0x1

    .line 265
    .local v0, alpha:I
    iget v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    if-ne v5, v7, :cond_1c

    .line 266
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v5}, Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;->getAlpha()I

    move-result v0

    .line 267
    const/16 v5, 0x68

    if-ge v0, v5, :cond_1c

    .line 268
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 272
    :cond_1c
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    iget v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_55

    iget-boolean v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mDrawOverlay:Z

    if-eqz v5, :cond_55

    .line 276
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    iget-object v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mPaint:Landroid/graphics/Paint;

    .line 279
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 280
    .local v1, descent:F
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 281
    .local v3, rectF:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mSectionText:Ljava/lang/String;

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

    iget v8, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlaySize:I

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 284
    .end local v1       #descent:F,
    .end local v2       #paint:Landroid/graphics/Paint;,
    .end local v3       #rectF:Landroid/graphics/RectF;,
    :cond_55
    iget v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    if-ne v5, v7, :cond_5

    .line 285
    if-nez v0, :cond_60

    .line 286
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setState(I)V

    goto :goto_5

    .line 288
    :cond_60
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v5}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v4

    .line 289
    .local v4, viewWidth:I
    iget-object v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget v6, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v8, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v4, v8}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate(IIII)V

    goto :goto_5
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 323
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setState(I)V

    move v0, v2

    .line 327
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
    .line 301
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 302
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    :cond_10
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 305
    .local v0, pos:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlaySize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 306
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 307
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 308
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 309
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_50

    .line 310
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    :cond_50
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 338
    .local v0, action:I
    if-nez v0, :cond_85

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 340
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 341
    .local v8, y:I
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-direct {p0, v9, v10}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 342
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setState(I)V

    .line 343
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getSectionsFromIndexer()V

    .line 344
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    if-eqz v9, :cond_29

    .line 345
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/lge/sui/widget/list/SUIIndexedListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 348
    :cond_29
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->cancelFling()V

    .line 350
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 351
    .local v3, frame:Landroid/graphics/Rect;
    if-nez v3, :cond_39

    .line 352
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 353
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 355
    :cond_39
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getLeft()I

    move-result v9

    sub-int/2addr v7, v9

    .line 356
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 357
    iput v7, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mDragStartX:I

    .line 358
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getChildCount()I

    move-result v2

    .line 359
    .local v2, count:I
    const/4 v9, 0x1

    sub-int v5, v2, v9

    .local v5, i:I
    :goto_4c
    if-ltz v5, :cond_14a

    .line 360
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 362
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 363
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 364
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v6

    .line 365
    .local v6, viewWidth:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    .line 366
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    sub-int v10, v6, v10

    iget v11, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v12, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v13, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    add-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    const/4 v9, 0x1

    .line 432
    .end local v1       #child:Landroid/view/View;,
    .end local v2       #count:I,
    .end local v3       #frame:Landroid/graphics/Rect;,
    .end local v5       #i:I,
    .end local v6       #viewWidth:I,
    .end local v7       #x:I,
    .end local v8       #y:I,
    .end local p1       
    :goto_81
    return v9

    .line 359
    .restart local v1       #child:Landroid/view/View;,
    .restart local v2       #count:I,
    .restart local v3       #frame:Landroid/graphics/Rect;,
    .restart local v5       #i:I,
    .restart local v7       #x:I,
    .restart local v8       #y:I,
    .restart local p1       
    :cond_82
    add-int/lit8 v5, v5, -0x1

    goto :goto_4c

    .line 375
    .end local v1       #child:Landroid/view/View;,
    .end local v2       #count:I,
    .end local v3       #frame:Landroid/graphics/Rect;,
    .end local v5       #i:I,
    .end local v7       #x:I,
    .end local v8       #y:I,
    :cond_85
    const/4 v9, 0x1

    if-ne v0, v9, :cond_b3

    .line 376
    iget v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14a

    .line 377
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    if-eqz v9, :cond_97

    .line 381
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lge/sui/widget/list/SUIIndexedListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 383
    :cond_97
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->setState(I)V

    .line 384
    iget-object v4, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mHandler:Landroid/os/Handler;

    .line 385
    .local v4, handler:Landroid/os/Handler;
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mDrawOverlay:Z

    .line 388
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    .line 389
    const/4 v9, 0x1

    goto :goto_81

    .line 391
    .end local v4       #handler:Landroid/os/Handler;,
    :cond_b3
    const/4 v9, 0x2

    if-ne v0, v9, :cond_14a

    .line 392
    iget v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14a

    .line 393
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 394
    .restart local v3       #frame:Landroid/graphics/Rect;,
    if-nez v3, :cond_c8

    .line 395
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 396
    iget-object v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mTouchFrame:Landroid/graphics/Rect;

    .line 399
    :cond_c8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getTop()I

    move-result v10

    sub-int v8, v9, v10

    .line 400
    .restart local v8       #y:I,
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getChildCount()I

    move-result v2

    .line 401
    .restart local v2       #count:I,
    const/4 v9, 0x1

    sub-int v5, v2, v9

    .restart local v5       #i:I,
    :goto_da
    if-ltz v5, :cond_140

    .line 402
    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 403
    .restart local v1       #child:Landroid/view/View;,
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 404
    iget v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mDragStartX:I

    invoke-virtual {v3, v9, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_147

    .line 405
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v6

    .line 406
    .restart local v6       #viewWidth:I,
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    .line 407
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    sub-int v10, v6, v10

    iget v11, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v12, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v13, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    add-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 414
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_143

    .line 415
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mSections:[Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object p1, v9, v10

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mSectionText:Ljava/lang/String;

    .line 416
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mDrawOverlay:Z

    .line 422
    :goto_12b
    iget-object v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget v10, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    sub-int v10, v6, v10

    iget-object v11, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v11}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v12}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getBottom()I

    move-result v12

    invoke-virtual {v9, v10, v11, v6, v12}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate(IIII)V

    .line 428
    .end local v1       #child:Landroid/view/View;,
    .end local v6       #viewWidth:I,
    :cond_140
    const/4 v9, 0x1

    goto/16 :goto_81

    .line 418
    .restart local v1       #child:Landroid/view/View;,
    .restart local v6       #viewWidth:I,
    .restart local p1       
    :cond_143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mDrawOverlay:Z

    goto :goto_12b

    .line 401
    .end local v6       #viewWidth:I,
    :cond_147
    add-int/lit8 v5, v5, -0x1

    goto :goto_da

    .line 432
    .end local v1       #child:Landroid/view/View;,
    .end local v2       #count:I,
    .end local v3       #frame:Landroid/graphics/Rect;,
    .end local v5       #i:I,
    .end local v8       #y:I,
    :cond_14a
    const/4 v9, 0x0

    goto/16 :goto_81
.end method

.method public setState(I)V
    .registers 8
    .parameter "state"

    .prologue
    .line 226
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

    .line 227
    packed-switch p1, :pswitch_data_52

    .line 246
    :goto_1b
    iput p1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    .line 247
    return-void

    .line 229
    :pswitch_1e
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    goto :goto_1b

    .line 233
    :pswitch_2b
    iget v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_33

    .line 234
    invoke-direct {p0}, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->resetScroller()V

    .line 238
    :cond_33
    :pswitch_33
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerFadeOut:Lcom/lge/sui/widget/list/internal/SUISectionScroller$ScrollerFadeOut;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 241
    :pswitch_3b
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIIndexedListView;->getWidth()I

    move-result v0

    .line 242
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mList:Lcom/lge/sui/widget/list/SUIIndexedListView;

    iget v2, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v4, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerY:I

    iget v5, p0, Lcom/lge/sui/widget/list/internal/SUISectionScroller;->mScrollerH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate(IIII)V

    goto :goto_1b

    .line 227
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
    .end packed-switch
.end method
