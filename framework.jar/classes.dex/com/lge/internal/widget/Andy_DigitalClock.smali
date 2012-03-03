.class public Lcom/lge/internal/widget/Andy_DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "Andy_DigitalClock.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;,
        Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"



# instance fields
.field private mAmPm:Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/internal/widget/Andy_DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mLive:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/lge/internal/widget/Andy_DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/lge/internal/widget/Andy_DigitalClock$1;-><init>(Lcom/lge/internal/widget/Andy_DigitalClock;)V

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/lge/internal/widget/Andy_DigitalClock;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lge/internal/widget/Andy_DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/internal/widget/Andy_DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/internal/widget/Andy_DigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/internal/widget/Andy_DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .registers 5

    .prologue
    const-string v3, "h:mm"

    .line 196
    invoke-virtual {p0}, Lcom/lge/internal/widget/Andy_DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "kk:mm"

    :goto_e
    iput-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mFormat:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAmPm:Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 199
    return-void

    .line 196
    :cond_1e
    const-string v0, "h:mm"

    move-object v0, v3

    goto :goto_e
.end method

.method private updateTime()V
    .registers 5

    .prologue
    .line 186
    iget-boolean v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mLive:Z

    if-eqz v1, :cond_d

    .line 187
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    :cond_d
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 191
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAmPm:Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;

    iget-object v2, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    :goto_27
    invoke-virtual {v1, v2}, Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;->setIsMorning(Z)V

    .line 193
    return-void

    .line 192
    :cond_2b
    const/4 v2, 0x0

    goto :goto_27
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 137
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 139
    iget-boolean v2, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAttached:Z

    if-eqz v2, :cond_9

    .line 163
    :goto_8
    return-void

    .line 140
    :cond_9
    iput-boolean v5, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAttached:Z

    .line 142
    iget-boolean v2, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mLive:Z

    if-eqz v2, :cond_2a

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    .end local v0       #filter:Landroid/content/IntentFilter;,
    :cond_2a
    new-instance v2, Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/lge/internal/widget/Andy_DigitalClock$FormatChangeObserver;-><init>(Lcom/lge/internal/widget/Andy_DigitalClock;)V

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 153
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_51

    .line 159
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 162
    :cond_51
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_DigitalClock;->updateTime()V

    goto :goto_8
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 169
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAttached:Z

    if-nez v0, :cond_8

    .line 177
    :goto_7
    return-void

    .line 170
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAttached:Z

    .line 172
    iget-boolean v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mLive:Z

    if-eqz v0, :cond_16

    .line 173
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    :cond_16
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 127
    const v0, 0x205000e

    invoke-virtual {p0, v0}, Lcom/lge/internal/widget/Andy_DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    const-string v1, "/system/fonts/Clockopia.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    new-instance v0, Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mAmPm:Lcom/lge/internal/widget/Andy_DigitalClock$AmPm;

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 132
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_DigitalClock;->setDateFormat()V

    .line 133
    return-void
.end method

.method setLive(Z)V
    .registers 2
    .parameter "live"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mLive:Z

    .line 203
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 182
    invoke-direct {p0}, Lcom/lge/internal/widget/Andy_DigitalClock;->updateTime()V

    .line 183
    return-void
.end method
