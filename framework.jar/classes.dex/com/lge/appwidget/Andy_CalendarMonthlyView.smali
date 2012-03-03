.class public Lcom/lge/appwidget/Andy_CalendarMonthlyView;
.super Landroid/widget/RelativeLayout;
.source "Andy_CalendarMonthlyView.java"


# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;
    }
.end annotation


# static fields
.field private static final CALENDAR_APPLICATION_CLASS:Ljava/lang/String; = "com.android.calendar.LaunchActivity"

.field private static final CALENDAR_APPLICATION_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field private static final DAY_VIEW_ID:I = 0x2

.field private static final EDIT_EVENT_ID:I = 0x5

.field private static final EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field private static final EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field private static EVENT_MAX_MINUTE:I = 0x0

.field private static EVENT_MIN_MINUTE:I = 0x0

.field private static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field private static final KEY_DETAIL_VIEW_MODE:Ljava/lang/String; = "DETAIL_VIEW_MODE"

.field private static final LOCALE_DE:Ljava/lang/String; = "de"

.field private static final LOCALE_DE_DE:Ljava/lang/String; = "de_DE"

.field private static final LOCALE_HU:Ljava/lang/String; = "hu"

.field private static final LOCALE_SR:Ljava/lang/String; = "sr"

.field private static final MAX_MONTH:I = 0xb

.field private static final MAX_YEAR:I = 0x7f5

.field private static final MIN_MONTH:I = 0x0

.field private static final MIN_YEAR:I = 0x7b2

.field private static final MONTHLY_SEARCH_DAYS:I = 0x2a

.field private static final MONTH_VIEW_ID:I = 0x0

.field private static final WEEK_DAYS:I = 0x7



# instance fields
.field private mAppWidgetId:I

.field private mBottomInAnimation:Landroid/view/animation/Animation;

.field private mBottomOutAnimation:Landroid/view/animation/Animation;

.field private mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

.field private mCurrentJulianDay:I

.field private mCurrentTime:Landroid/text/format/Time;

.field private mIsSetFlipListener:Z

.field private mMonthlyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthlyJulianDay:I

.field private mMonthlyTime:Landroid/text/format/Time;

.field private mStartDay:I

.field private mTopInAnimation:Landroid/view/animation/Animation;

.field private mTopOutAnimation:Landroid/view/animation/Animation;

.field private mViewId:I

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->EVENT_MIN_MINUTE:I

    .line 49
    const/16 v0, 0x5a0

    sput v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->EVENT_MAX_MINUTE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mIsSetFlipListener:Z

    .line 69
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentTime:Landroid/text/format/Time;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mIsSetFlipListener:Z

    .line 69
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentTime:Landroid/text/format/Time;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mIsSetFlipListener:Z

    .line 69
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentTime:Landroid/text/format/Time;

    .line 97
    return-void
.end method

.method private getCurrentLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_9

    .line 276
    const-string v1, ""

    .line 279
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private getMonthlyFirstJulianDay()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 242
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    if-nez v4, :cond_14

    .line 244
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 246
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 247
    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 252
    :cond_14
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    iget v3, v4, Landroid/text/format/Time;->weekDay:I

    .line 254
    .local v3, weekDay:I
    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    if-lt v4, v6, :cond_21

    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    const/4 v5, 0x7

    if-le v4, v5, :cond_2c

    .line 257
    :cond_21
    const/4 v2, 0x1

    .line 264
    .local v2, startDay:I
    :goto_22
    add-int/lit8 v4, v3, 0x7

    sub-int/2addr v4, v2

    rem-int/lit8 v0, v4, 0x7

    .line 265
    .local v0, differenceDay:I
    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    sub-int v1, v4, v0

    .line 267
    .local v1, firstJulianDay:I
    return v1

    .line 261
    .end local v0       #differenceDay:I,
    .end local v1       #firstJulianDay:I,
    .end local v2       #startDay:I,
    :cond_2c
    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    sub-int v2, v4, v6

    .restart local v2       #startDay:I,
    goto :goto_22
.end method

.method private loadCurrentTime()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 208
    .local v0, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 209
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 211
    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 212
    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 213
    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 214
    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 216
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    .line 218
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 219
    return-void
.end method

.method private setMonthlyDayViews(Landroid/view/View;)V
    .registers 22
    .parameter "view"

    .prologue
    .line 405
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 406
    .local v12, time:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 407
    .local v14, todayTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v0, v14

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    if-nez v16, :cond_37

    .line 412
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 418
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 420
    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    move-object v0, v14

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v13

    .line 421
    .local v13, todayJulianDay:I
    invoke-direct/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyFirstJulianDay()I

    move-result v8

    .line 423
    .local v8, firstJulianDay:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_51
    const/16 v16, 0x2a

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_168

    .line 425
    add-int v6, v8, v9

    .line 427
    .local v6, drawJulianDay:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyDayTextResource(I)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 428
    .local v5, dayTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyEventTimebarResource(I)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;

    .line 430
    .local v7, eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;
    invoke-virtual {v7}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->clearDrawingEvent()V

    .line 432
    invoke-virtual {v12, v6}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 433
    move-object v0, v12

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v17, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v16, v0

    move-object v0, v12

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_129

    .line 438
    move-object v0, v12

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v16, v0

    if-nez v16, :cond_117

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060004

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    :goto_cc
    const/16 v16, 0x4

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setVisibility(I)V

    .line 450
    const/4 v10, 0x1

    .line 469
    .local v10, isNowMonthDay:Z
    :goto_d5
    if-ne v13, v6, :cond_15d

    .line 471
    const v16, 0x2020037

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 478
    :goto_e0
    new-instance v16, Lcom/lge/appwidget/Andy_CalendarMonthlyView$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$1;-><init>(Lcom/lge/appwidget/Andy_CalendarMonthlyView;)V

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    new-instance v15, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v6

    move/from16 v3, v16

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;-><init>(Lcom/lge/appwidget/Andy_CalendarMonthlyView;IZZ)V

    .line 591
    .local v15, viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 593
    const v16, 0x20500ba

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 594
    .local v11, loadingView:Landroid/view/View;
    const/16 v16, 0x4

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_51

    .line 444
    .end local v10       #isNowMonthDay:Z,
    .end local v11       #loadingView:Landroid/view/View;,
    .end local v15       #viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;,
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060003

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cc

    .line 455
    :cond_129
    move-object v0, v12

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v16, v0

    if-nez v16, :cond_14b

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060006

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    :goto_141
    const/16 v16, 0x4

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setVisibility(I)V

    .line 466
    const/4 v10, 0x0

    .restart local v10       #isNowMonthDay:Z,
    goto :goto_d5

    .line 461
    .end local v10       #isNowMonthDay:Z,
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060005

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_141

    .line 475
    .restart local v10       #isNowMonthDay:Z,
    :cond_15d
    const v16, 0x2020036

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_e0

    .line 596
    .end local v5       #dayTextView:Landroid/widget/TextView;,
    .end local v6       #drawJulianDay:I,
    .end local v7       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    .end local v10       #isNowMonthDay:Z,
    :cond_168
    return-void
.end method

.method private setMonthlyEventTimebars(Landroid/view/View;)V
    .registers 21
    .parameter "view"

    .prologue
    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyFirstJulianDay()I

    move-result v9

    .line 638
    .local v9, firstJulianDay:I
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 643
    .local v15, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyEvents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 786
    :cond_11
    return-void

    .line 648
    :cond_12
    const/4 v10, 0x0

    .local v10, i:I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyEvents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyEvents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    .line 652
    .local v7, eventParcelable:Lcom/lge/appwidget/Andy_CalendarEventParcelable;
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndDay:I

    move/from16 v17, v0

    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 654
    .local v6, eventDays:I
    if-nez v6, :cond_105

    .line 656
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move/from16 v17, v0

    sub-int v11, v17, v9

    .line 657
    .local v11, index:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyEventTimebarResource(I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;

    .line 658
    .local v8, eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyDayTextResource(I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 660
    .local v4, dayTextView:Landroid/widget/TextView;
    if-nez v8, :cond_6d

    .line 648
    .end local v4       #dayTextView:Landroid/widget/TextView;,
    .end local v8       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    .end local v11       #index:I,
    :cond_6a
    :goto_6a
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 665
    .restart local v4       #dayTextView:Landroid/widget/TextView;,
    .restart local v8       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    .restart local v11       #index:I,
    :cond_6d
    const/4 v12, 0x0

    .line 667
    .local v12, isAllDay:Z
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9e

    .line 669
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9e

    .line 673
    const/4 v12, 0x1

    .line 680
    :cond_9e
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartMinute:I

    move/from16 v17, v0

    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndMinute:I

    move/from16 v18, v0

    move-object v0, v8

    move v1, v12

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->addDrawingEvent(ZII)Z

    .line 682
    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;

    .line 684
    .local v16, viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;
    if-eqz v16, :cond_6a

    .line 686
    invoke-virtual/range {v16 .. v16}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->getIsNowMonthDay()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f8

    .line 689
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v17

    or-int/lit8 v17, v17, 0x20

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 692
    invoke-virtual/range {v16 .. v16}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->getIsHaveEvent()Z

    move-result v17

    if-nez v17, :cond_e0

    .line 694
    const v17, 0x202002c

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setBackgroundResource(I)V

    .line 697
    :cond_e0
    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_f0

    .line 699
    const v17, 0x202002c

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setBackgroundResource(I)V

    .line 702
    :cond_f0
    const/16 v17, 0x0

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setVisibility(I)V

    .line 705
    :cond_f8
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->setIsHaveEvent(Z)V

    .line 706
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6a

    .line 712
    .end local v4       #dayTextView:Landroid/widget/TextView;,
    .end local v8       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    .end local v11       #index:I,
    .end local v12       #isAllDay:Z,
    .end local v16       #viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;,
    :cond_105
    const/4 v13, 0x0

    .local v13, j:I
    :goto_106
    if-gt v13, v6, :cond_6a

    .line 714
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move/from16 v17, v0

    sub-int v17, v17, v9

    add-int v11, v17, v13

    .line 716
    .restart local v11       #index:I,
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyEventTimebarResource(I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;

    .line 717
    .restart local v8       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyDayTextResource(I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 719
    .restart local v4       #dayTextView:Landroid/widget/TextView;,
    if-nez v8, :cond_138

    .line 712
    :cond_135
    :goto_135
    add-int/lit8 v13, v13, 0x1

    goto :goto_106

    .line 724
    :cond_138
    if-nez v13, :cond_1c8

    .line 726
    iget v14, v7, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartMinute:I

    .line 727
    .local v14, startMinute:I
    sget v5, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->EVENT_MAX_MINUTE:I

    .line 740
    .local v5, endMinute:I
    :goto_13e
    const/4 v12, 0x0

    .line 742
    .restart local v12       #isAllDay:Z,
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_171

    .line 744
    move-object v0, v7

    iget v0, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_171

    .line 748
    const/4 v12, 0x1

    .line 755
    :cond_171
    invoke-virtual {v8, v12, v14, v5}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->addDrawingEvent(ZII)Z

    .line 757
    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;

    .line 759
    .restart local v16       #viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;,
    if-eqz v16, :cond_135

    .line 761
    invoke-virtual/range {v16 .. v16}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->getIsNowMonthDay()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1bb

    .line 764
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v17

    or-int/lit8 v17, v17, 0x20

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 767
    invoke-virtual/range {v16 .. v16}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->getIsHaveEvent()Z

    move-result v17

    if-nez v17, :cond_1a3

    .line 769
    const v17, 0x202002c

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setBackgroundResource(I)V

    .line 772
    :cond_1a3
    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b3

    .line 774
    const v17, 0x202002c

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setBackgroundResource(I)V

    .line 777
    :cond_1b3
    const/16 v17, 0x0

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setVisibility(I)V

    .line 780
    :cond_1bb
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;->setIsHaveEvent(Z)V

    .line 781
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_135

    .line 729
    .end local v5       #endMinute:I,
    .end local v12       #isAllDay:Z,
    .end local v14       #startMinute:I,
    .end local v16       #viewTag:Lcom/lge/appwidget/Andy_CalendarMonthlyView$CalendarMonthlyViewTag;,
    :cond_1c8
    if-ne v13, v6, :cond_1d0

    .line 731
    sget v14, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->EVENT_MIN_MINUTE:I

    .line 732
    .restart local v14       #startMinute:I,
    iget v5, v7, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndMinute:I

    .restart local v5       #endMinute:I,
    goto/16 :goto_13e

    .line 736
    .end local v5       #endMinute:I,
    .end local v14       #startMinute:I,
    :cond_1d0
    sget v14, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->EVENT_MIN_MINUTE:I

    .line 737
    .restart local v14       #startMinute:I,
    sget v5, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->EVENT_MAX_MINUTE:I

    .restart local v5       #endMinute:I,
    goto/16 :goto_13e
.end method

.method private setMonthlyEventViews(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/16 v5, 0x2a

    .line 604
    iget-object v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    if-nez v3, :cond_15

    .line 606
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 608
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 609
    iget v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 613
    :cond_15
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v5, :cond_3c

    .line 615
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyEventTimebarResource(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;

    .line 616
    .local v1, eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->clearDrawingEvent()V

    .line 617
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->setVisibility(I)V

    .line 619
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyDayTextResource(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 620
    .local v0, dayTextView:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 623
    .end local v0       #dayTextView:Landroid/widget/TextView;,
    .end local v1       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    :cond_3c
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyEventTimebars(Landroid/view/View;)V

    .line 625
    const/4 v2, 0x0

    :goto_40
    if-ge v2, v5, :cond_52

    .line 627
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyEventTimebarResource(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;

    .line 628
    .restart local v1       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;->invalidate()V

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 630
    .end local v1       #eventTimebarView:Lcom/lge/appwidget/Andy_CalendarMonthlyEventTimebarView;,
    :cond_52
    return-void
.end method

.method private setMonthlyTitleView()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 284
    const v6, 0x20500b5

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 285
    .local v3, monthTextView:Landroid/widget/TextView;
    const v6, 0x20500b6

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 287
    .local v5, yearView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 289
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1c

    .line 332
    :cond_1b
    :goto_1b
    return-void

    .line 296
    :cond_1c
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    if-nez v6, :cond_2f

    .line 298
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 300
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 301
    iget v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 306
    :cond_2f
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/lge/appwidget/util/calendar/Andy_TimeHelper;->getMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/lge/appwidget/util/calendar/Andy_TimeHelper;->getYear(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, language:Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 317
    const v6, 0x20500b8

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 318
    .local v4, textView:Landroid/widget/TextView;
    const v6, 0x20500b9

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 320
    .local v1, getmanTextView:Landroid/widget/TextView;
    const-string v6, "de"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v8, :cond_71

    const-string v6, "de_DE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_78

    .line 323
    :cond_71
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b

    .line 328
    :cond_78
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b
.end method

.method private setMonthlyWeekDayViews()V
    .registers 11

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 342
    iget v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    if-lt v6, v7, :cond_c

    iget v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    if-le v6, v8, :cond_14

    .line 345
    :cond_c
    const/4 v4, 0x1

    .line 352
    .local v4, startDay:I
    :goto_d
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, language:Ljava/lang/String;
    if-nez v3, :cond_19

    .line 395
    :cond_13
    return-void

    .line 349
    .end local v3       #language:Ljava/lang/String;,
    .end local v4       #startDay:I,
    :cond_14
    iget v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    sub-int v4, v6, v7

    .restart local v4       #startDay:I,
    goto :goto_d

    .line 359
    .restart local v3       #language:Ljava/lang/String;,
    :cond_19
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v8, :cond_13

    .line 361
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getMonthlyWeekDayTextResource(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 363
    .local v5, weekTextView:Landroid/widget/TextView;
    const-string/jumbo v6, "sr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v7, :cond_4e

    .line 365
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_45

    .line 370
    add-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v9}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 383
    .end local v0       #context:Landroid/content/Context;,
    .local v1, dayString:Ljava/lang/String;
    :goto_3f
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 374
    .end local v1       #dayString:Ljava/lang/String;,
    .restart local v0       #context:Landroid/content/Context;,
    :cond_45
    add-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x7

    invoke-static {v0, v6}, Lcom/lge/appwidget/util/calendar/Andy_TimeHelper;->getServiaWeek(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dayString:Ljava/lang/String;,
    goto :goto_3f

    .line 380
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #dayString:Ljava/lang/String;,
    :cond_4e
    add-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v9}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dayString:Ljava/lang/String;,
    goto :goto_3f
.end method


# virtual methods
.method public getMonthlyDayTextResource(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 891
    packed-switch p1, :pswitch_data_b8

    .line 980
    const/high16 v0, -0x8000

    :goto_5
    return v0

    .line 894
    :pswitch_6
    const v0, 0x2050086

    goto :goto_5

    .line 896
    :pswitch_a
    const v0, 0x2050087

    goto :goto_5

    .line 898
    :pswitch_e
    const v0, 0x2050088

    goto :goto_5

    .line 900
    :pswitch_12
    const v0, 0x2050089

    goto :goto_5

    .line 902
    :pswitch_16
    const v0, 0x205008a

    goto :goto_5

    .line 904
    :pswitch_1a
    const v0, 0x205008b

    goto :goto_5

    .line 906
    :pswitch_1e
    const v0, 0x205008c

    goto :goto_5

    .line 908
    :pswitch_22
    const v0, 0x205008d

    goto :goto_5

    .line 910
    :pswitch_26
    const v0, 0x205008e

    goto :goto_5

    .line 912
    :pswitch_2a
    const v0, 0x205008f

    goto :goto_5

    .line 914
    :pswitch_2e
    const v0, 0x2050090

    goto :goto_5

    .line 916
    :pswitch_32
    const v0, 0x2050091

    goto :goto_5

    .line 918
    :pswitch_36
    const v0, 0x2050092

    goto :goto_5

    .line 920
    :pswitch_3a
    const v0, 0x2050093

    goto :goto_5

    .line 922
    :pswitch_3e
    const v0, 0x2050094

    goto :goto_5

    .line 924
    :pswitch_42
    const v0, 0x2050095

    goto :goto_5

    .line 926
    :pswitch_46
    const v0, 0x2050096

    goto :goto_5

    .line 928
    :pswitch_4a
    const v0, 0x2050097

    goto :goto_5

    .line 930
    :pswitch_4e
    const v0, 0x2050098

    goto :goto_5

    .line 932
    :pswitch_52
    const v0, 0x2050099

    goto :goto_5

    .line 934
    :pswitch_56
    const v0, 0x205009a

    goto :goto_5

    .line 936
    :pswitch_5a
    const v0, 0x205009b

    goto :goto_5

    .line 938
    :pswitch_5e
    const v0, 0x205009c

    goto :goto_5

    .line 940
    :pswitch_62
    const v0, 0x205009d

    goto :goto_5

    .line 942
    :pswitch_66
    const v0, 0x205009e

    goto :goto_5

    .line 944
    :pswitch_6a
    const v0, 0x205009f

    goto :goto_5

    .line 946
    :pswitch_6e
    const v0, 0x20500a0

    goto :goto_5

    .line 948
    :pswitch_72
    const v0, 0x20500a1

    goto :goto_5

    .line 950
    :pswitch_76
    const v0, 0x20500a2

    goto :goto_5

    .line 952
    :pswitch_7a
    const v0, 0x20500a3

    goto :goto_5

    .line 954
    :pswitch_7e
    const v0, 0x20500a4

    goto :goto_5

    .line 956
    :pswitch_82
    const v0, 0x20500a5

    goto :goto_5

    .line 958
    :pswitch_86
    const v0, 0x20500a6

    goto/16 :goto_5

    .line 960
    :pswitch_8b
    const v0, 0x20500a7

    goto/16 :goto_5

    .line 962
    :pswitch_90
    const v0, 0x20500a8

    goto/16 :goto_5

    .line 964
    :pswitch_95
    const v0, 0x20500a9

    goto/16 :goto_5

    .line 966
    :pswitch_9a
    const v0, 0x20500aa

    goto/16 :goto_5

    .line 968
    :pswitch_9f
    const v0, 0x20500ab

    goto/16 :goto_5

    .line 970
    :pswitch_a4
    const v0, 0x20500ac

    goto/16 :goto_5

    .line 972
    :pswitch_a9
    const v0, 0x20500ad

    goto/16 :goto_5

    .line 974
    :pswitch_ae
    const v0, 0x20500ae

    goto/16 :goto_5

    .line 976
    :pswitch_b3
    const v0, 0x20500af

    goto/16 :goto_5

    .line 891
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_86
        :pswitch_8b
        :pswitch_90
        :pswitch_95
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_a9
        :pswitch_ae
        :pswitch_b3
    .end packed-switch
.end method

.method public getMonthlyEventTimebarResource(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 985
    packed-switch p1, :pswitch_data_b8

    .line 1074
    const/high16 v0, -0x8000

    :goto_5
    return v0

    .line 988
    :pswitch_6
    const v0, 0x2050031

    goto :goto_5

    .line 990
    :pswitch_a
    const v0, 0x2050033

    goto :goto_5

    .line 992
    :pswitch_e
    const v0, 0x2050035

    goto :goto_5

    .line 994
    :pswitch_12
    const v0, 0x2050037

    goto :goto_5

    .line 996
    :pswitch_16
    const v0, 0x2050039

    goto :goto_5

    .line 998
    :pswitch_1a
    const v0, 0x205003b

    goto :goto_5

    .line 1000
    :pswitch_1e
    const v0, 0x205003d

    goto :goto_5

    .line 1002
    :pswitch_22
    const v0, 0x205003f

    goto :goto_5

    .line 1004
    :pswitch_26
    const v0, 0x2050041

    goto :goto_5

    .line 1006
    :pswitch_2a
    const v0, 0x2050043

    goto :goto_5

    .line 1008
    :pswitch_2e
    const v0, 0x2050045

    goto :goto_5

    .line 1010
    :pswitch_32
    const v0, 0x2050047

    goto :goto_5

    .line 1012
    :pswitch_36
    const v0, 0x2050049

    goto :goto_5

    .line 1014
    :pswitch_3a
    const v0, 0x205004b

    goto :goto_5

    .line 1016
    :pswitch_3e
    const v0, 0x205004d

    goto :goto_5

    .line 1018
    :pswitch_42
    const v0, 0x205004f

    goto :goto_5

    .line 1020
    :pswitch_46
    const v0, 0x2050051

    goto :goto_5

    .line 1022
    :pswitch_4a
    const v0, 0x2050053

    goto :goto_5

    .line 1024
    :pswitch_4e
    const v0, 0x2050055

    goto :goto_5

    .line 1026
    :pswitch_52
    const v0, 0x2050057

    goto :goto_5

    .line 1028
    :pswitch_56
    const v0, 0x2050059

    goto :goto_5

    .line 1030
    :pswitch_5a
    const v0, 0x205005b

    goto :goto_5

    .line 1032
    :pswitch_5e
    const v0, 0x205005d

    goto :goto_5

    .line 1034
    :pswitch_62
    const v0, 0x205005f

    goto :goto_5

    .line 1036
    :pswitch_66
    const v0, 0x2050061

    goto :goto_5

    .line 1038
    :pswitch_6a
    const v0, 0x2050063

    goto :goto_5

    .line 1040
    :pswitch_6e
    const v0, 0x2050065

    goto :goto_5

    .line 1042
    :pswitch_72
    const v0, 0x2050067

    goto :goto_5

    .line 1044
    :pswitch_76
    const v0, 0x2050069

    goto :goto_5

    .line 1046
    :pswitch_7a
    const v0, 0x205006b

    goto :goto_5

    .line 1048
    :pswitch_7e
    const v0, 0x205006d

    goto :goto_5

    .line 1050
    :pswitch_82
    const v0, 0x205006f

    goto :goto_5

    .line 1052
    :pswitch_86
    const v0, 0x2050071

    goto/16 :goto_5

    .line 1054
    :pswitch_8b
    const v0, 0x2050073

    goto/16 :goto_5

    .line 1056
    :pswitch_90
    const v0, 0x2050075

    goto/16 :goto_5

    .line 1058
    :pswitch_95
    const v0, 0x2050077

    goto/16 :goto_5

    .line 1060
    :pswitch_9a
    const v0, 0x2050079

    goto/16 :goto_5

    .line 1062
    :pswitch_9f
    const v0, 0x205007b

    goto/16 :goto_5

    .line 1064
    :pswitch_a4
    const v0, 0x205007d

    goto/16 :goto_5

    .line 1066
    :pswitch_a9
    const v0, 0x205007f

    goto/16 :goto_5

    .line 1068
    :pswitch_ae
    const v0, 0x2050081

    goto/16 :goto_5

    .line 1070
    :pswitch_b3
    const v0, 0x2050083

    goto/16 :goto_5

    .line 985
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_86
        :pswitch_8b
        :pswitch_90
        :pswitch_95
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_a9
        :pswitch_ae
        :pswitch_b3
    .end packed-switch
.end method

.method public getMonthlyWeekDayTextResource(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 868
    packed-switch p1, :pswitch_data_22

    .line 886
    const/high16 v0, -0x8000

    :goto_5
    return v0

    .line 871
    :pswitch_6
    const v0, 0x20500bb

    goto :goto_5

    .line 873
    :pswitch_a
    const v0, 0x20500bc

    goto :goto_5

    .line 875
    :pswitch_e
    const v0, 0x20500bd

    goto :goto_5

    .line 877
    :pswitch_12
    const v0, 0x20500be

    goto :goto_5

    .line 879
    :pswitch_16
    const v0, 0x20500bf

    goto :goto_5

    .line 881
    :pswitch_1a
    const v0, 0x20500c0

    goto :goto_5

    .line 883
    :pswitch_1e
    const v0, 0x20500c1

    goto :goto_5

    .line 868
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method public initCalendarMonthlyView()V
    .registers 10

    .prologue
    const v8, 0x2030006

    const/4 v7, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_b

    .line 149
    :goto_a
    return-void

    .line 122
    :cond_b
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 124
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x20500b4

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewSwitcher;

    iput-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 125
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 127
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v8, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 128
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6, v5}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 130
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v8, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 131
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6, v5}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 133
    const v6, 0x20500b1

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 134
    .local v3, moreButton:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v6, 0x20500b7

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 137
    .local v4, switchButton:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v6, 0x20500b3

    invoke-virtual {p0, v6}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;

    .line 140
    .local v1, flipView:Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;
    invoke-virtual {v1, p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView;->setOnFlipListener(Lcom/lge/appwidget/Andy_CalendarMonthlyFlipView$OnFlipListener;)V

    .line 142
    const v6, 0x2040002

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 143
    const v6, 0x2040003

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 144
    const/high16 v6, 0x204

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 145
    const v6, 0x2040001

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 147
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 148
    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_a
.end method

.method public initMonthlyWeekDayViews()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyWeekDayViews()V

    .line 195
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyDayViews(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9
    .parameter "animation"

    .prologue
    const-string v6, "/"

    .line 1079
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mIsSetFlipListener:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6a

    .line 1081
    iget-object v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    if-nez v3, :cond_1a

    .line 1083
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 1085
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 1086
    iget v3, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 1089
    :cond_1a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1090
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.calendar.monthly.action.FLIP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v3, "calendar_monthly://calendar_monthly_flip/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mAppWidgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1098
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1102
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_6b

    .line 1109
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #dataUri:Landroid/net/Uri;,
    .end local v2       #intent:Landroid/content/Intent;,
    :cond_6a
    :goto_6a
    return-void

    .line 1107
    .restart local v0       #context:Landroid/content/Context;,
    .restart local v1       #dataUri:Landroid/net/Uri;,
    .restart local v2       #intent:Landroid/content/Intent;,
    :cond_6b
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1114
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "view"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 792
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    if-nez v5, :cond_15

    .line 794
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 796
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 797
    iget v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {p0, v5}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 801
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_a6

    .line 864
    :cond_1c
    :goto_1c
    return-void

    .line 806
    :sswitch_1d
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 808
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_98

    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    iget-object v6, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    if-ne v5, v6, :cond_98

    .line 811
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 813
    .local v4, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 814
    invoke-virtual {v4, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 816
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-wide v7, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 823
    .end local v4       #time:Landroid/text/format/Time;,
    .local v1, intentJulianDay:I
    :goto_4d
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 824
    .local v2, intentTime:Landroid/text/format/Time;
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 826
    iput v9, v2, Landroid/text/format/Time;->hour:I

    .line 827
    iput v9, v2, Landroid/text/format/Time;->minute:I

    .line 828
    iput v9, v2, Landroid/text/format/Time;->second:I

    .line 830
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 831
    .local v3, newIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.calendar"

    const-string v7, "com.android.calendar.LaunchActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 835
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 839
    const-string v5, "beginTime"

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 840
    const-string v5, "DETAIL_VIEW"

    invoke-virtual {v3, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    const-string v5, "DETAIL_VIEW_MODE"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 846
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1c

    .line 851
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 820
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #intentJulianDay:I,
    .end local v2       #intentTime:Landroid/text/format/Time;,
    .end local v3       #newIntent:Landroid/content/Intent;,
    :cond_98
    iget v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    .restart local v1       #intentJulianDay:I,
    goto :goto_4d

    .line 856
    .end local v1       #intentJulianDay:I,
    :sswitch_9b
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

    if-eqz v5, :cond_1c

    .line 861
    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_CalendarLargeView;->requestSwich()V

    goto/16 :goto_1c

    .line 801
    :sswitch_data_a6
    .sparse-switch
        0x20500b1 -> :sswitch_1d
        0x20500b7 -> :sswitch_9b
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->initCalendarMonthlyView()V

    .line 103
    return-void
.end method

.method public onFlip(I)V
    .registers 9
    .parameter "flipDirection"

    .prologue
    const/4 v6, 0x1

    .line 1126
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    if-nez v4, :cond_14

    .line 1128
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 1130
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->loadCurrentTime()V

    .line 1131
    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCurrentJulianDay:I

    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyJulianDay(I)V

    .line 1134
    :cond_14
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1135
    .local v3, time:Landroid/text/format/Time;
    iget v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1137
    if-nez p1, :cond_6e

    .line 1139
    iget v4, v3, Landroid/text/format/Time;->year:I

    const/16 v5, 0x7f5

    if-ne v4, v5, :cond_2d

    iget v4, v3, Landroid/text/format/Time;->month:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2d

    .line 1176
    :cond_2c
    :goto_2c
    return-void

    .line 1145
    :cond_2d
    iget v4, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/text/format/Time;->month:I

    .line 1147
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1165
    :cond_41
    :goto_41
    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 1166
    .local v1, millis:J
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1168
    .local v0, julianDay:I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 1169
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1170
    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    .line 1172
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyTitleView()V

    .line 1173
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyWeekDayViews()V

    .line 1174
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyDayViews(Landroid/view/View;)V

    .line 1175
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_2c

    .line 1151
    .end local v0       #julianDay:I,
    .end local v1       #millis:J,
    :cond_6e
    if-ne p1, v6, :cond_41

    .line 1153
    iget v4, v3, Landroid/text/format/Time;->year:I

    const/16 v5, 0x7b2

    if-ne v4, v5, :cond_7a

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-eqz v4, :cond_2c

    .line 1159
    :cond_7a
    iget v4, v3, Landroid/text/format/Time;->month:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/text/format/Time;->month:I

    .line 1161
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1162
    iget-object v4, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_41
.end method

.method public setCalendarLargeView(Lcom/lge/appwidget/Andy_CalendarLargeView;)V
    .registers 2
    .parameter "calendarLargeView"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mCalendarLargeView:Lcom/lge/appwidget/Andy_CalendarLargeView;

    .line 224
    return-void
.end method

.method public setMonthlyEvent(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, parcelables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_CalendarEventParcelable;>;"
    const/4 v2, 0x0

    .line 167
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 189
    :cond_9
    :goto_9
    return-void

    .line 173
    :cond_a
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;

    .line 174
    .local v0, headParcelable:Lcom/lge/appwidget/Andy_CalendarEventParcelable;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    iget v1, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_9

    .line 181
    iget v1, v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    iget v2, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    if-ne v1, v2, :cond_9

    .line 186
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyEvents:Ljava/util/ArrayList;

    .line 188
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyEventViews(Landroid/view/View;)V

    goto :goto_9
.end method

.method public setMonthlyJulianDay(I)V
    .registers 4
    .parameter "julianDay"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 154
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    .line 156
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    .line 157
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyTime:Landroid/text/format/Time;

    iget v1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mMonthlyJulianDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 159
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyTitleView()V

    .line 160
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyWeekDayViews()V

    .line 161
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->setMonthlyDayViews(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public setMonthlyStartDay(I)V
    .registers 2
    .parameter "startDay"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 201
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mStartDay:I

    .line 202
    return-void
.end method

.method public setOnMonthlyFlipListener(II)V
    .registers 4
    .parameter "appWidgetId"
    .parameter "viewId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 229
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mAppWidgetId:I

    .line 230
    iput p2, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mViewId:I

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_CalendarMonthlyView;->mIsSetFlipListener:Z

    .line 233
    return-void
.end method
