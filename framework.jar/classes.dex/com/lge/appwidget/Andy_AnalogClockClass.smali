.class public Lcom/lge/appwidget/Andy_AnalogClockClass;
.super Landroid/widget/AnalogClock;
.source "Andy_AnalogClockClass.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final MESSAGE_TICK:I

.field private animation_Tick:I

.field private animation_starting_point:F

.field public currentWorkspace:I

.field private date:Ljava/lang/String;

.field private days:Ljava/lang/String;

.field private intHour:I

.field private intMinute:I

.field private intSecond:I

.field private mAlarm:Landroid/graphics/drawable/Drawable;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private mSecondHandOperation:Z

.field private mWeather:Landroid/graphics/drawable/Drawable;

.field private play_animation:Z

.field public positionInWorkspace:I

.field private secondHandler:Landroid/os/Handler;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mWeather:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAlarm:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    .line 66
    iput v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->positionInWorkspace:I

    .line 67
    iput v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->currentWorkspace:I

    .line 69
    iput v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->MESSAGE_TICK:I

    .line 71
    new-instance v0, Lcom/lge/appwidget/Andy_AnalogClockClass$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_AnalogClockClass$1;-><init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->secondHandler:Landroid/os/Handler;

    .line 522
    new-instance v0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_AnalogClockClass$2;-><init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object v5, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mWeather:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v5, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAlarm:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    .line 66
    iput v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->positionInWorkspace:I

    .line 67
    iput v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->currentWorkspace:I

    .line 69
    iput v4, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->MESSAGE_TICK:I

    .line 71
    new-instance v3, Lcom/lge/appwidget/Andy_AnalogClockClass$1;

    invoke-direct {v3, p0}, Lcom/lge/appwidget/Andy_AnalogClockClass$1;-><init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->secondHandler:Landroid/os/Handler;

    .line 522
    new-instance v3, Lcom/lge/appwidget/Andy_AnalogClockClass$2;

    invoke-direct {v3, p0}, Lcom/lge/appwidget/Andy_AnalogClockClass$2;-><init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 100
    .local v2, r:Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, a:Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 103
    .local v1, b:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_44

    .line 105
    const v3, 0x2020237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_44
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_57

    .line 109
    const v3, 0x2020238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 111
    :cond_57
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6b

    .line 113
    const v3, 0x2020239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 115
    :cond_6b
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_80

    .line 117
    const v3, 0x202023a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_80
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    .line 121
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9b

    .line 122
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialWidth:I

    .line 123
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialHeight:I

    .line 125
    :cond_9b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mWeather:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAlarm:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    .line 66
    iput v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->positionInWorkspace:I

    .line 67
    iput v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->currentWorkspace:I

    .line 69
    iput v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->MESSAGE_TICK:I

    .line 71
    new-instance v0, Lcom/lge/appwidget/Andy_AnalogClockClass$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_AnalogClockClass$1;-><init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->secondHandler:Landroid/os/Handler;

    .line 522
    new-instance v0, Lcom/lge/appwidget/Andy_AnalogClockClass$2;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_AnalogClockClass$2;-><init>(Lcom/lge/appwidget/Andy_AnalogClockClass;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_AnalogClockClass;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/appwidget/Andy_AnalogClockClass;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_AnalogClockClass;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_AnalogClockClass;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->onTimeChanged()V

    return-void
.end method

.method private handsAnimation(Landroid/graphics/Canvas;)V
    .registers 22
    .parameter "canvas"

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mChanged:Z

    move v7, v0

    .line 223
    .local v7, changed:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getLeft()I

    move-result v16

    sub-int v6, v15, v16

    .line 224
    .local v6, availableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getTop()I

    move-result v16

    sub-int v5, v15, v16

    .line 226
    .local v5, availableHeight:I
    div-int/lit8 v13, v6, 0x2

    .line 227
    .local v13, x:I
    div-int/lit8 v14, v5, 0x2

    .line 229
    .local v14, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 230
    .local v8, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 231
    .local v12, w:I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 233
    .local v9, h:I
    const/4 v10, 0x0

    .line 235
    .local v10, scaled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_starting_point:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    move v0, v13

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    move v15, v0

    add-int/lit8 v15, v15, 0x3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHand:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .line 239
    .local v11, secondHand:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_98

    .line 240
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 241
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 242
    const/16 v15, 0x8

    sub-int v15, v13, v15

    div-int/lit8 v16, v12, 0x2

    sub-int v15, v15, v16

    const/16 v16, 0x4

    sub-int v16, v14, v16

    div-int/lit8 v17, v9, 0x2

    sub-int v16, v16, v17

    const/16 v17, 0x8

    sub-int v17, v13, v17

    div-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    const/16 v18, 0x4

    sub-int v18, v14, v18

    div-int/lit8 v19, v9, 0x2

    add-int v18, v18, v19

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    :cond_98
    new-instance v15, Landroid/graphics/LightingColorFilter;

    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v11, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    const/16 v15, 0x80

    invoke-virtual {v11, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 247
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 249
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_starting_point:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    move v0, v13

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    move v15, v0

    add-int/lit8 v15, v15, 0x3

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    .line 254
    if-eqz v7, :cond_10d

    .line 255
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 256
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 257
    div-int/lit8 v15, v12, 0x2

    sub-int v15, v13, v15

    div-int/lit8 v16, v9, 0x2

    sub-int v16, v14, v16

    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v13

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 260
    :cond_10d
    const/16 v15, 0xff

    invoke-virtual {v11, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 263
    if-eqz v10, :cond_120

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 266
    :cond_120
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    move v15, v0

    const/16 v16, 0x168

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_132

    .line 268
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_AnalogClockClass;->play_animation:Z

    .line 270
    :cond_132
    return-void
.end method

.method private onTimeChanged()V
    .registers 4

    .prologue
    const/high16 v2, 0x4270

    .line 173
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->setTimeChangeNow()V

    .line 181
    iget v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intMinute:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intSecond:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mMinutes:F

    .line 182
    iget v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intHour:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intMinute:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mHour:F

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mChanged:Z

    .line 185
    return-void
.end method

.method private runningSecond(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 274
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mChanged:Z

    .line 276
    .local v2, changed:Z
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getLeft()I

    move-result v11

    sub-int v1, v10, v11

    .line 277
    .local v1, availableWidth:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getBottom()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getTop()I

    move-result v11

    sub-int v0, v10, v11

    .line 279
    .local v0, availableHeight:I
    div-int/lit8 v8, v1, 0x2

    .line 280
    .local v8, x:I
    div-int/lit8 v9, v0, 0x2

    .line 282
    .local v9, y:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    .line 283
    .local v3, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 284
    .local v7, w:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 286
    .local v4, h:I
    const/4 v5, 0x0

    .line 290
    .local v5, scaled:Z
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->setTimeChangeNow()V

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    iget v10, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intSecond:I

    int-to-float v10, v10

    const/high16 v11, 0x4270

    div-float/2addr v10, v11

    const/high16 v11, 0x43b4

    mul-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 294
    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v6, secondHand:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_56

    .line 312
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 313
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 314
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v4, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    :cond_56
    const/16 v10, 0xff

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 318
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 321
    if-eqz v5, :cond_66

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 324
    :cond_66
    return-void
.end method

.method private runningTime(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mChanged:Z

    move v7, v0

    .line 331
    .local v7, changed:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getLeft()I

    move-result v18

    sub-int v6, v17, v18

    .line 332
    .local v6, availableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getTop()I

    move-result v18

    sub-int v5, v17, v18

    .line 334
    .local v5, availableHeight:I
    div-int/lit8 v15, v6, 0x2

    .line 335
    .local v15, x:I
    div-int/lit8 v16, v5, 0x2

    .line 337
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 338
    .local v8, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 339
    .local v14, w:I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 341
    .local v9, h:I
    const/4 v13, 0x0

    .line 343
    .local v13, scaled:Z
    if-lt v6, v14, :cond_2f

    if-ge v5, v9, :cond_5f

    .line 345
    :cond_2f
    const/4 v13, 0x1

    .line 346
    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 348
    .local v12, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 349
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move v1, v12

    move v2, v12

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 352
    .end local v12       #scale:F,
    :cond_5f
    if-eqz v7, :cond_7d

    .line 353
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    :cond_7d
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mHour:F

    move/from16 v17, v0

    const/high16 v18, 0x4140

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mHourHand:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 376
    .local v10, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_d3

    .line 377
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 378
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 379
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move-object v0, v10

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    :cond_d3
    const/16 v17, 0xff

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 383
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mMinutes:F

    move/from16 v17, v0

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .line 406
    .local v11, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_134

    .line 407
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 408
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 409
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    :cond_134
    const/16 v17, 0xff

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 416
    return-void
.end method

.method private setDateTimeText()V
    .registers 10

    .prologue
    const-string v8, "MM-dd"

    .line 420
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 421
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 422
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, strSysDateFormat:Ljava/lang/String;
    const/4 v2, 0x0

    .line 429
    .local v2, formatDate:Ljava/text/SimpleDateFormat;
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6c

    .line 431
    :cond_25
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 432
    .local v1, dateFormatOrder:[C
    const/4 v6, 0x0

    aget-char v6, v1, v6

    sparse-switch v6, :sswitch_data_76

    .line 445
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "MM-dd"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 455
    .end local v1       #dateFormatOrder:[C,
    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    :goto_3a
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, strDate:Ljava/lang/String;
    const-string v6, "EEE"

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, strDays:Ljava/lang/String;
    iput-object v3, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->date:Ljava/lang/String;

    .line 460
    iput-object v4, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->days:Ljava/lang/String;

    .line 461
    return-void

    .line 435
    .end local v3       #strDate:Ljava/lang/String;,
    .end local v4       #strDays:Ljava/lang/String;,
    .restart local v1       #dateFormatOrder:[C,
    :sswitch_54
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "MM-dd"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_3a

    .line 438
    :sswitch_5c
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "MM-dd"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_3a

    .line 441
    :sswitch_64
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "dd-MM"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_3a

    .line 452
    .end local v1       #dateFormatOrder:[C,
    :cond_6c
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_3a

    .line 432
    :sswitch_data_76
    .sparse-switch
        0x4d -> :sswitch_5c
        0x64 -> :sswitch_64
        0x79 -> :sswitch_54
    .end sparse-switch
.end method

.method private setTimeChangeNow()V
    .registers 9

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, current_time:J
    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 160
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 161
    .local v2, formatClockTime:Ljava/text/SimpleDateFormat;
    const-string v6, "hh"

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 162
    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, strHour:Ljava/lang/String;
    const-string v6, "mm"

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 164
    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, strMinute:Ljava/lang/String;
    const-string/jumbo v6, "ss"

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, strSecond:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intHour:I

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intMinute:I

    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intSecond:I

    .line 171
    return-void
.end method


# virtual methods
.method public SetImageWeather(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 465
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mWeather:Landroid/graphics/drawable/Drawable;

    .line 466
    return-void
.end method

.method public destroyDrawingCache()V
    .registers 3

    .prologue
    .line 500
    invoke-super {p0}, Landroid/widget/AnalogClock;->destroyDrawingCache()V

    .line 501
    const-string v0, "AnalogClockFramework"

    const-string v1, "## SJ ## how diff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-super {p0}, Landroid/widget/AnalogClock;->onAttachedToWindow()V

    .line 131
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAttached:Z

    if-nez v1, :cond_37

    .line 132
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAttached:Z

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    .end local v0       #filter:Landroid/content/IntentFilter;,
    :cond_37
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mCalendar:Ljava/util/Calendar;

    .line 146
    const-string v1, "AnalogClockFramework"

    const-string v2, "## SJ on Andy_AnalogClockClass : onAttachedToWindow "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->onTimeChanged()V

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_Tick:I

    .line 151
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->play_animation:Z

    .line 152
    iget v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->intSecond:I

    int-to-float v1, v1

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->animation_starting_point:F

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 488
    invoke-super {p0}, Landroid/widget/AnalogClock;->onDetachedFromWindow()V

    .line 489
    const-string v0, "AnalogClockFramework"

    const-string v1, "## SJ ## onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAttached:Z

    if-eqz v0, :cond_1a

    .line 491
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_AnalogClockClass;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mAttached:Z

    .line 494
    :cond_1a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 470
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->runningTime(Landroid/graphics/Canvas;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->runningSecond(Landroid/graphics/Canvas;)V

    .line 472
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    if-eqz v0, :cond_1a

    .line 473
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->secondHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->secondHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHandOperation:Z

    .line 477
    :cond_1a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 481
    invoke-super {p0}, Landroid/widget/AnalogClock;->onFinishInflate()V

    .line 482
    const-string v0, "AnalogClockFramework"

    const-string v1, "## SJ on Andy_AnalogClockClass : onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 191
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 192
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 193
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 195
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 196
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 198
    .local v4, vScale:F
    if-eqz v5, :cond_20

    iget v7, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialWidth:I

    if-ge v6, v7, :cond_20

    .line 199
    int-to-float v7, v6

    iget v8, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 202
    :cond_20
    if-eqz v1, :cond_2c

    iget v7, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialHeight:I

    if-ge v2, v7, :cond_2c

    .line 203
    int-to-float v7, v2

    iget v8, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 206
    :cond_2c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 208
    .local v3, scale:F
    iget v7, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lcom/lge/appwidget/Andy_AnalogClockClass;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lcom/lge/appwidget/Andy_AnalogClockClass;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/lge/appwidget/Andy_AnalogClockClass;->setMeasuredDimension(II)V

    .line 210
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AnalogClock;->onSizeChanged(IIII)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mChanged:Z

    .line 216
    return-void
.end method

.method public setDialDrawable(I)V
    .registers 4
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 519
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mDial:Landroid/graphics/drawable/Drawable;

    .line 520
    return-void
.end method

.method public setSecondHandDrawable(I)V
    .registers 4
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 510
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_AnalogClockClass;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 511
    return-void
.end method
