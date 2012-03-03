.class public Lcom/lge/appwidget/Andy_WorldClock;
.super Landroid/widget/AnalogClock;
.source "Andy_WorldClock.java"



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

.field private mAlarm:Landroid/graphics/drawable/Drawable;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

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

.field private mTime:Landroid/text/format/Time;

.field private offset_hour:I

.field private offset_minute:I

.field private play_animation:Z

.field public positionInWorkspace:I

.field private secondHandler:Landroid/os/Handler;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAlarm:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    .line 52
    iput v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->positionInWorkspace:I

    .line 53
    iput v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->currentWorkspace:I

    .line 55
    iput v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->MESSAGE_TICK:I

    .line 56
    iput v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    .line 57
    iput v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    .line 59
    new-instance v0, Lcom/lge/appwidget/Andy_WorldClock$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_WorldClock$1;-><init>(Lcom/lge/appwidget/Andy_WorldClock;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->secondHandler:Landroid/os/Handler;

    .line 516
    new-instance v0, Lcom/lge/appwidget/Andy_WorldClock$2;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_WorldClock$2;-><init>(Lcom/lge/appwidget/Andy_WorldClock;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v8, 0x2020239

    const/16 v7, 0xc

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAlarm:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    .line 52
    iput v6, p0, Lcom/lge/appwidget/Andy_WorldClock;->positionInWorkspace:I

    .line 53
    iput v6, p0, Lcom/lge/appwidget/Andy_WorldClock;->currentWorkspace:I

    .line 55
    iput v5, p0, Lcom/lge/appwidget/Andy_WorldClock;->MESSAGE_TICK:I

    .line 56
    iput v4, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    .line 57
    iput v4, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    .line 59
    new-instance v3, Lcom/lge/appwidget/Andy_WorldClock$1;

    invoke-direct {v3, p0}, Lcom/lge/appwidget/Andy_WorldClock$1;-><init>(Lcom/lge/appwidget/Andy_WorldClock;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->secondHandler:Landroid/os/Handler;

    .line 516
    new-instance v3, Lcom/lge/appwidget/Andy_WorldClock$2;

    invoke-direct {v3, p0}, Lcom/lge/appwidget/Andy_WorldClock$2;-><init>(Lcom/lge/appwidget/Andy_WorldClock;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, r:Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, a:Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    .local v1, b:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4d

    .line 92
    const v3, 0x2020237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_4d
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_60

    .line 98
    const v3, 0x2020238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 101
    :cond_60
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_71

    .line 104
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_71
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_81

    .line 110
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_81
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    .line 115
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9c

    .line 117
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialWidth:I

    .line 118
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialHeight:I

    .line 121
    :cond_9c
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    .line 122
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    iget v5, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 123
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAlarm:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    .line 52
    iput v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->positionInWorkspace:I

    .line 53
    iput v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->currentWorkspace:I

    .line 55
    iput v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->MESSAGE_TICK:I

    .line 56
    iput v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    .line 57
    iput v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    .line 59
    new-instance v0, Lcom/lge/appwidget/Andy_WorldClock$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_WorldClock$1;-><init>(Lcom/lge/appwidget/Andy_WorldClock;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->secondHandler:Landroid/os/Handler;

    .line 516
    new-instance v0, Lcom/lge/appwidget/Andy_WorldClock$2;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_WorldClock$2;-><init>(Lcom/lge/appwidget/Andy_WorldClock;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_WorldClock;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/appwidget/Andy_WorldClock;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_WorldClock;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_WorldClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_WorldClock;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/appwidget/Andy_WorldClock;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/appwidget/Andy_WorldClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_WorldClock;->onTimeChanged()V

    return-void
.end method

.method private handsAnimation(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 199
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->mChanged:Z

    .line 201
    .local v2, changed:Z
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getLeft()I

    move-result v11

    sub-int v1, v10, v11

    .line 202
    .local v1, availableWidth:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getBottom()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getTop()I

    move-result v11

    sub-int v0, v10, v11

    .line 204
    .local v0, availableHeight:I
    div-int/lit8 v8, v1, 0x2

    .line 205
    .local v8, x:I
    div-int/lit8 v9, v0, 0x2

    .line 207
    .local v9, y:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 208
    .local v3, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 209
    .local v7, w:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 211
    .local v4, h:I
    const/4 v5, 0x0

    .line 216
    .local v5, scaled:Z
    iget-object v6, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 229
    .local v6, secondHand:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 230
    iget v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_starting_point:F

    iget v11, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_Tick:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 231
    iget v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_Tick:I

    add-int/lit8 v10, v10, 0x3

    iput v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_Tick:I

    .line 232
    if-eqz v2, :cond_56

    .line 233
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 234
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 235
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v4, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    :cond_56
    const/16 v10, 0xff

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    if-eqz v5, :cond_66

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    :cond_66
    iget v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_Tick:I

    const/16 v11, 0x168

    if-le v10, v11, :cond_6f

    .line 246
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->play_animation:Z

    .line 248
    :cond_6f
    return-void
.end method

.method private onTimeChanged()V
    .registers 7

    .prologue
    const/high16 v5, 0x4270

    .line 156
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 158
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 159
    .local v0, hour:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 160
    .local v1, minute:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 161
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mMinutes:F

    .line 162
    int-to-float v3, v0

    iget v4, p0, Lcom/lge/appwidget/Andy_WorldClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mHour:F

    .line 163
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mChanged:Z

    .line 164
    return-void
.end method

.method private runningSecond(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 253
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->mChanged:Z

    .line 255
    .local v2, changed:Z
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getLeft()I

    move-result v11

    sub-int v1, v10, v11

    .line 256
    .local v1, availableWidth:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getBottom()I

    move-result v10

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getTop()I

    move-result v11

    sub-int v0, v10, v11

    .line 258
    .local v0, availableHeight:I
    div-int/lit8 v8, v1, 0x2

    .line 259
    .local v8, x:I
    div-int/lit8 v9, v0, 0x2

    .line 261
    .local v9, y:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 262
    .local v3, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 263
    .local v7, w:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 265
    .local v4, h:I
    const/4 v5, 0x0

    .line 271
    .local v5, scaled:Z
    iget-object v6, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 284
    .local v6, secondHand:Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 286
    iget-object v10, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    int-to-float v10, v10

    const/high16 v11, 0x4270

    div-float/2addr v10, v11

    const/high16 v11, 0x43b4

    mul-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 288
    if-eqz v2, :cond_5a

    .line 289
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 290
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 291
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v4, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    :cond_5a
    const/16 v10, 0xff

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 295
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 298
    if-eqz v5, :cond_6a

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 301
    :cond_6a
    return-void
.end method

.method private runningTime(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_WorldClock;->mChanged:Z

    move v7, v0

    .line 308
    .local v7, changed:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_WorldClock;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_WorldClock;->getLeft()I

    move-result v18

    sub-int v6, v17, v18

    .line 309
    .local v6, availableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_WorldClock;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_WorldClock;->getTop()I

    move-result v18

    sub-int v5, v17, v18

    .line 311
    .local v5, availableHeight:I
    div-int/lit8 v15, v6, 0x2

    .line 312
    .local v15, x:I
    div-int/lit8 v16, v5, 0x2

    .line 314
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 315
    .local v8, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 316
    .local v14, w:I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 318
    .local v9, h:I
    const/4 v13, 0x0

    .line 320
    .local v13, scaled:Z
    if-lt v6, v14, :cond_2f

    if-ge v5, v9, :cond_5f

    .line 322
    :cond_2f
    const/4 v13, 0x1

    .line 323
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

    .line 325
    .local v12, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 326
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

    .line 329
    .end local v12       #scale:F,
    :cond_5f
    if-eqz v7, :cond_7d

    .line 330
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

    .line 332
    :cond_7d
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_WorldClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 351
    .local v10, hourHand:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_WorldClock;->mHour:F

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

    .line 353
    if-eqz v7, :cond_d3

    .line 354
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 355
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 356
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

    .line 359
    :cond_d3
    const/16 v17, 0xff

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 360
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_WorldClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .line 381
    .local v11, minuteHand:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_WorldClock;->mMinutes:F

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

    .line 383
    if-eqz v7, :cond_134

    .line 384
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 385
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 386
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

    .line 389
    :cond_134
    const/16 v17, 0xff

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 390
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 393
    return-void
.end method

.method private setDateTimeText()V
    .registers 10

    .prologue
    const-string v8, "MM-dd"

    .line 397
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 398
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 399
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, strSysDateFormat:Ljava/lang/String;
    const/4 v2, 0x0

    .line 402
    .local v2, formatDate:Ljava/text/SimpleDateFormat;
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_67

    .line 404
    :cond_25
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 405
    .local v1, dateFormatOrder:[C
    const/4 v6, 0x0

    aget-char v6, v1, v6

    sparse-switch v6, :sswitch_data_72

    .line 423
    .end local v1       #dateFormatOrder:[C,
    :goto_33
    if-eqz v2, :cond_4e

    .line 425
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, strDate:Ljava/lang/String;
    const-string v6, "EEE"

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, strDays:Ljava/lang/String;
    iput-object v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->date:Ljava/lang/String;

    .line 430
    iput-object v4, p0, Lcom/lge/appwidget/Andy_WorldClock;->days:Ljava/lang/String;

    .line 433
    .end local v3       #strDate:Ljava/lang/String;,
    .end local v4       #strDays:Ljava/lang/String;,
    :cond_4e
    return-void

    .line 408
    .restart local v1       #dateFormatOrder:[C,
    :sswitch_4f
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "MM-dd"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_33

    .line 411
    :sswitch_57
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "MM-dd"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_33

    .line 414
    :sswitch_5f
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    const-string v6, "dd-MM"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_33

    .line 420
    .end local v1       #dateFormatOrder:[C,
    :cond_67
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #formatDate:Ljava/text/SimpleDateFormat;,
    goto :goto_33

    .line 405
    nop

    :sswitch_data_72
    .sparse-switch
        0x4d -> :sswitch_57
        0x64 -> :sswitch_5f
        0x79 -> :sswitch_4f
    .end sparse-switch
.end method


# virtual methods
.method public destroyDrawingCache()V
    .registers 3

    .prologue
    .line 511
    invoke-super {p0}, Landroid/widget/AnalogClock;->destroyDrawingCache()V

    .line 512
    const-string v0, "asdf"

    const-string v1, "## SJ ## how diff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 128
    invoke-super {p0}, Landroid/widget/AnalogClock;->onAttachedToWindow()V

    .line 130
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAttached:Z

    if-nez v1, :cond_2d

    .line 131
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAttached:Z

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 141
    .end local v0       #filter:Landroid/content/IntentFilter;,
    :cond_2d
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    .line 143
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    .line 144
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    iget v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 145
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    iget v3, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 147
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_WorldClock;->onTimeChanged()V

    .line 149
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_Tick:I

    .line 150
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_WorldClock;->play_animation:Z

    .line 151
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    int-to-float v1, v1

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->animation_starting_point:F

    .line 153
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 499
    invoke-super {p0}, Landroid/widget/AnalogClock;->onDetachedFromWindow()V

    .line 500
    const-string v0, "asdf"

    const-string v1, "## SJ ## onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAttached:Z

    if-eqz v0, :cond_1a

    .line 502
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mAttached:Z

    .line 505
    :cond_1a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 479
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_WorldClock;->runningTime(Landroid/graphics/Canvas;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_WorldClock;->runningSecond(Landroid/graphics/Canvas;)V

    .line 483
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    if-eqz v0, :cond_1a

    .line 484
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->secondHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->secondHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHandOperation:Z

    .line 488
    :cond_1a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 492
    invoke-super {p0}, Landroid/widget/AnalogClock;->onFinishInflate()V

    .line 493
    const-string v0, "asdf"

    const-string v1, "## SJ on Andy_AnalogClockClass : onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 170
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 171
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 172
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 174
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 175
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 177
    .local v4, vScale:F
    if-eqz v5, :cond_20

    iget v7, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialWidth:I

    if-ge v6, v7, :cond_20

    .line 178
    int-to-float v7, v6

    iget v8, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 181
    :cond_20
    if-eqz v1, :cond_2c

    iget v7, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialHeight:I

    if-ge v2, v7, :cond_2c

    .line 182
    int-to-float v7, v2

    iget v8, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 185
    :cond_2c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 187
    .local v3, scale:F
    iget v7, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lcom/lge/appwidget/Andy_WorldClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lcom/lge/appwidget/Andy_WorldClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/lge/appwidget/Andy_WorldClock;->setMeasuredDimension(II)V

    .line 189
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AnalogClock;->onSizeChanged(IIII)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mChanged:Z

    .line 194
    return-void
.end method

.method public setDialDrawable(I)V
    .registers 4
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 452
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 454
    return-void
.end method

.method public setOffsetHour(I)V
    .registers 5
    .parameter "mHour"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 458
    iput p1, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    .line 459
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    .line 460
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    iget v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 461
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    iget v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 462
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_WorldClock;->onTimeChanged()V

    .line 463
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->invalidate()V

    .line 464
    return-void
.end method

.method public setOffsetMinute(I)V
    .registers 5
    .parameter "mMinute"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 468
    iput p1, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    .line 469
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    .line 470
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    iget v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 471
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WorldClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    iget v2, p0, Lcom/lge/appwidget/Andy_WorldClock;->offset_minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 472
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_WorldClock;->onTimeChanged()V

    .line 474
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_WorldClock;->invalidate()V

    .line 475
    return-void
.end method

.method public setSecondHandDrawable(I)V
    .registers 4
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 442
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_WorldClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 443
    return-void
.end method
