.class public Lcom/lge/sui/widget/control/SUITimePicker;
.super Landroid/widget/FrameLayout;
.source "SUITimePicker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;,
        Lcom/lge/sui/widget/control/SUITimePicker$SavedState;,
        Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field public static final TIME_AM:I = 0x0

.field public static final TIME_FORMAT_12:I = 0x0

.field public static final TIME_FORMAT_24:I = 0x1

.field public static final TIME_FORMAT_SECOND:I = 0x2

.field private static final TIME_HOUR_12:I = 0xc

.field private static final TIME_HOUR_24:I = 0x18

.field public static final TIME_PM:I = 0x1



# instance fields
.field private mAmPm:I

.field private mHour:I

.field private mHourMax:I

.field private mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

.field private mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

.field private mMinute:I

.field private mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

.field private mOnTimeChangedListener:Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;

.field private mSecond:I

.field private mTimeFormat:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
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

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput v2, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mAmPm:I

    .line 54
    iput v2, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinute:I

    .line 55
    iput v2, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHour:I

    .line 56
    iput v3, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    .line 57
    const/16 v0, 0x18

    iput v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourMax:I

    .line 59
    const/16 v0, -0x64

    iput v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mSecond:I

    .line 100
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_36

    move v0, v2

    :goto_1e
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setAmPm(I)V

    .line 102
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->init(IILcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;)V

    .line 104
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setTimeFormat(I)V

    .line 106
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->refresh()V

    .line 107
    return-void

    :cond_36
    move v0, v3

    .line 100
    goto :goto_1e
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/control/SUITimePicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    return v0
.end method

.method private buildAmPmArrayList(I)Ljava/util/ArrayList;
    .registers 5
    .parameter "maxLimit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    if-gez p1, :cond_4

    .line 342
    const/4 v1, 0x0

    .line 347
    :goto_3
    return-object v1

    .line 344
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x308000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x308000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 347
    goto :goto_3
.end method

.method private buildHoursArrayList(I)Ljava/util/ArrayList;
    .registers 6
    .parameter "maxLimit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x308000e

    .line 302
    if-gez p1, :cond_7

    .line 303
    const/4 v2, 0x0

    .line 317
    :goto_6
    return-object v2

    .line 305
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v2

    if-nez v2, :cond_27

    .line 308
    const/4 v1, 0x1

    .local v1, cnt:I
    :goto_13
    if-gt v1, p1, :cond_3c

    .line 309
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->toDFormat(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 313
    .end local v1       #cnt:I,
    :cond_27
    const/4 v1, 0x0

    .restart local v1       #cnt:I,
    :goto_28
    if-ge v1, p1, :cond_3c

    .line 314
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->toDFormat(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    move-object v2, v0

    .line 317
    goto :goto_6
.end method

.method private buildMinutesArrayList(I)Ljava/util/ArrayList;
    .registers 6
    .parameter "maxLimit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    if-gez p1, :cond_4

    .line 326
    const/4 v2, 0x0

    .line 333
    :goto_3
    return-object v2

    .line 328
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, cnt:I
    :goto_a
    if-ge v1, p1, :cond_21

    .line 330
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x308000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->toDFormat(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_21
    move-object v2, v0

    .line 333
    goto :goto_3
.end method

.method private notifyTimeChanged()V
    .registers 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mOnTimeChangedListener:Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_11

    .line 282
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mOnTimeChangedListener:Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/lge/sui/widget/control/SUITimePicker;II)V

    .line 285
    :cond_11
    return-void
.end method

.method private setPickerData(Ljava/util/ArrayList;Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 7
    .parameter
    .parameter "listener"
    .parameter "mPicker"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;",
            "Lcom/lge/sui/widget/control/SUIDigitPicker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, minuteArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3030008

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 568
    .local v0, minuteAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;
    invoke-virtual {p3, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 570
    invoke-virtual {p3, p2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 571
    return-void
.end method

.method private updateSpinners()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-nez v0, :cond_35

    .line 261
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    rem-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 262
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 263
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->isAm()Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    :goto_27
    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 265
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setLoop(Z)V

    .line 274
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->notifyTimeChanged()V

    .line 275
    return-void

    :cond_33
    move v1, v3

    .line 263
    goto :goto_27

    .line 266
    :cond_35
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-ne v0, v3, :cond_4e

    .line 267
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 268
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    goto :goto_2f

    .line 269
    :cond_4e
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 270
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 271
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 272
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    goto :goto_2f
.end method


# virtual methods
.method public getCurrentHour()I
    .registers 2

    .prologue
    .line 605
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHour:I

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getCurrentMinute()I
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinute:I

    return v0
.end method

.method public getCurrentSecond()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mSecond:I

    return v0
.end method

.method public getHourPicker()Lcom/lge/sui/widget/control/SUIDigitPicker;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    return-object v0
.end method

.method public getMinutePicker()Lcom/lge/sui/widget/control/SUIDigitPicker;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    return-object v0
.end method

.method public getSecondPicker()Lcom/lge/sui/widget/control/SUIDigitPicker;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .registers 3

    .prologue
    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 114
    .local v0, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 116
    return-object v0
.end method

.method public getTimeFormat()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    return v0
.end method

.method public init(IILcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;)V
    .registers 6
    .parameter "hour"
    .parameter "minute"
    .parameter "onTimeChangedListener"

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 230
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-nez v0, :cond_16

    .line 232
    const/16 v0, 0xc

    sub-int v0, p1, v0

    if-gez v0, :cond_27

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setAmPm(I)V

    .line 235
    :cond_16
    iput-object p3, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mOnTimeChangedListener:Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;

    .line 237
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->updateTime(II)V

    .line 238
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->notifyTimeChanged()V

    .line 239
    return-void

    .line 232
    :cond_27
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public is24HourView()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 624
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 627
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAm()Z
    .registers 2

    .prologue
    .line 613
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mAmPm:I

    if-nez v0, :cond_6

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 204
    instance-of v2, p1, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;

    if-eqz v2, :cond_25

    .line 205
    move-object v0, p1

    check-cast v0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;

    move-object v1, v0

    .line 206
    .local v1, ss:Lcom/lge/sui/widget/control/SUITimePicker$SavedState;
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->getHour()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 208
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 209
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->getAmPm()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->setAmPm(I)V

    .line 215
    .end local v1       #ss:Lcom/lge/sui/widget/control/SUITimePicker$SavedState;,
    .end local p1       
    :goto_24
    return-void

    .line 210
    .restart local p1       
    :cond_25
    instance-of v2, p1, Landroid/view/View$BaseSavedState;

    if-eqz v2, :cond_33

    .line 211
    check-cast p1, Landroid/view/View$BaseSavedState;

    .end local p1       
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_24

    .line 213
    .restart local p1       
    :cond_33
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_24
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 198
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->isAm()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    :goto_15
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/lge/sui/widget/control/SUITimePicker$1;)V

    return-object v0

    :cond_1a
    const/4 v4, 0x1

    goto :goto_15
.end method

.method public refresh()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const v11, 0x3030008

    const/4 v10, 0x1

    const-string v12, "layout_inflater"

    .line 392
    const/4 v4, 0x0

    .line 394
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->removeAllViews()V

    .line 396
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v8

    if-nez v8, :cond_ba

    .line 398
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4       #inflater:Landroid/view/LayoutInflater;,
    check-cast v4, Landroid/view/LayoutInflater;

    .line 400
    .restart local v4       #inflater:Landroid/view/LayoutInflater;,
    const v8, 0x303001a

    invoke-virtual {v4, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 402
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 403
    invoke-virtual {p0, v13}, Lcom/lge/sui/widget/control/SUITimePicker;->setEnabled(Z)V

    .line 406
    :cond_2d
    const/16 v8, 0xc

    iput v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourMax:I

    .line 409
    const v8, 0x30a0051

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 411
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_5c

    .line 412
    invoke-direct {p0, v14}, Lcom/lge/sui/widget/control/SUITimePicker;->buildAmPmArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    .local v1, ampmArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, p0, v8, v11, v1}, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 418
    .local v0, ampmAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v0}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 420
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUITimePicker$1;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUITimePicker$1;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 492
    .end local v0       #ampmAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;,
    .end local v1       #ampmArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5c
    :goto_5c
    const v8, 0x30a004d

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 494
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_89

    .line 495
    iget v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourMax:I

    invoke-direct {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->buildHoursArrayList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 497
    .local v3, hourArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, p0, v8, v11, v3}, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 501
    .local v2, hourAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v2}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 503
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUITimePicker$3;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUITimePicker$3;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 530
    .end local v2       #hourAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;,
    .end local v3       #hourArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_89
    const v8, 0x30a004f

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 532
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_b6

    .line 533
    const/16 v8, 0x3c

    invoke-direct {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->buildMinutesArrayList(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 535
    .local v7, minuteArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, p0, v8, v11, v7}, Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 539
    .local v6, minuteAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 541
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUITimePicker$4;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUITimePicker$4;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 559
    .end local v6       #minuteAdapter:Lcom/lge/sui/widget/control/SUITimePicker$DigitPickerAdapter;,
    .end local v7       #minuteArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b6
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->updateSpinners()V

    .line 560
    return-void

    .line 449
    :cond_ba
    iget v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    if-ne v8, v10, :cond_df

    .line 451
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4       #inflater:Landroid/view/LayoutInflater;,
    check-cast v4, Landroid/view/LayoutInflater;

    .line 453
    .restart local v4       #inflater:Landroid/view/LayoutInflater;,
    const v8, 0x303001b

    invoke-virtual {v4, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 455
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_d9

    .line 456
    invoke-virtual {p0, v13}, Lcom/lge/sui/widget/control/SUITimePicker;->setEnabled(Z)V

    .line 459
    :cond_d9
    const/16 v8, 0x18

    iput v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourMax:I

    goto/16 :goto_5c

    .line 461
    :cond_df
    iget v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    if-ne v8, v14, :cond_5c

    .line 462
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4       #inflater:Landroid/view/LayoutInflater;,
    check-cast v4, Landroid/view/LayoutInflater;

    .line 464
    .restart local v4       #inflater:Landroid/view/LayoutInflater;,
    const v8, 0x303001a

    invoke-virtual {v4, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 466
    const v8, 0x30a0051

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 468
    const/16 v8, 0x3c

    invoke-direct {p0, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->buildMinutesArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 470
    .restart local v1       #ampmArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mSecond:I

    iput v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mAmPm:I

    .line 472
    new-instance v5, Lcom/lge/sui/widget/control/SUITimePicker$2;

    invoke-direct {v5, p0}, Lcom/lge/sui/widget/control/SUITimePicker$2;-><init>(Lcom/lge/sui/widget/control/SUITimePicker;)V

    .line 488
    .local v5, listener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-direct {p0, v1, v5, v8}, Lcom/lge/sui/widget/control/SUITimePicker;->setPickerData(Ljava/util/ArrayList;Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;Lcom/lge/sui/widget/control/SUIDigitPicker;)V

    goto/16 :goto_5c
.end method

.method public setAmPm(I)V
    .registers 2
    .parameter "ampm"

    .prologue
    .line 620
    iput p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mAmPm:I

    .line 621
    return-void
.end method

.method public setCurrentHour(I)V
    .registers 4
    .parameter "mInitialHourOfDay"

    .prologue
    .line 580
    iput p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHour:I

    .line 582
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setAmPm(I)V

    .line 584
    return-void

    .line 582
    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public setCurrentMinute(I)V
    .registers 2
    .parameter "minute"

    .prologue
    .line 587
    iput p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinute:I

    .line 588
    return-void
.end method

.method public setCurrentSecond(I)V
    .registers 4
    .parameter "second"

    .prologue
    const/4 v1, 0x2

    .line 647
    if-ltz p1, :cond_17

    .line 648
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-eq v0, v1, :cond_f

    .line 649
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->setTimeFormat(I)V

    .line 650
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->refresh()V

    .line 653
    :cond_f
    iput p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mSecond:I

    .line 654
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->updateSpinners()V

    .line 655
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->notifyTimeChanged()V

    .line 657
    :cond_17
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setEnabled(Z)V

    .line 125
    return-void
.end method

.method public setHourPicker(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter "mHourPicker"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mHourPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 681
    return-void
.end method

.method public setIs24HourView(Z)V
    .registers 3
    .parameter "is24HourView"

    .prologue
    const/4 v0, 0x1

    .line 591
    if-ne p1, v0, :cond_12

    .line 592
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setTimeFormat(I)V

    .line 596
    :goto_6
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mSecond:I

    if-ltz v0, :cond_e

    .line 597
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setTimeFormat(I)V

    .line 601
    :cond_e
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->refresh()V

    .line 602
    return-void

    .line 594
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setTimeFormat(I)V

    goto :goto_6
.end method

.method public setLastPicker(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter "mLastPicker"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mLastPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 665
    return-void
.end method

.method public setMinutePicker(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter "mMinutePicker"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mMinutePicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 673
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 291
    if-eqz p1, :cond_7

    .line 292
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mOnTimeChangedListener:Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;

    .line 293
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->notifyTimeChanged()V

    .line 295
    :cond_7
    return-void
.end method

.method public setTimeFormat(I)V
    .registers 2
    .parameter "timeFormat"

    .prologue
    .line 384
    iput p1, p0, Lcom/lge/sui/widget/control/SUITimePicker;->mTimeFormat:I

    .line 385
    return-void
.end method

.method public updateTime(II)V
    .registers 4
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v0

    if-ne v0, p1, :cond_c

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v0

    if-eq v0, p2, :cond_18

    .line 248
    :cond_c
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 249
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 250
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->updateSpinners()V

    .line 251
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUITimePicker;->notifyTimeChanged()V

    .line 253
    :cond_18
    return-void
.end method

.method public updateTime(III)V
    .registers 4
    .parameter "currentHour"
    .parameter "currentMinute"
    .parameter "position"

    .prologue
    .line 575
    invoke-virtual {p0, p3}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentSecond(I)V

    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/control/SUITimePicker;->updateTime(II)V

    .line 577
    return-void
.end method
